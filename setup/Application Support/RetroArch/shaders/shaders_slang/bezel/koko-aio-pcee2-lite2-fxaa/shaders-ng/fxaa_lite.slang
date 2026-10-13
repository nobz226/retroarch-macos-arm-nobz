#version 450
#include "config.inc"

// PCEE2 Lite V3: a cheap FXAA pass, in place of koko-aio's fxaa.slang.
// It is the FXAA 3.11 "console" variant (Nvidia, Timothy Lottes):
// - runs at 1x (PS2 frames are already hi-res; koko-aio's pass ran at 2x = 4x the pixels),
// - no edge search loop (koko-aio's preset 2 walks up to 4 steps each way),
// - 5 texture reads on flat areas (early exit), 9 on edges.
// Reads are bilinear at half-texel offsets, so 4 reads cover the whole 3x3 neighbourhood.

// Tuning (higher threshold = fewer pixels touched = faster, but more jaggies left):
#define FXAA_LITE_EDGE_THRESHOLD     0.166  // local contrast needed, relative to the brightest neighbour
#define FXAA_LITE_EDGE_THRESHOLD_MIN 0.0625 // ignore edges darker than this (saves work on dark scenes)
#define FXAA_LITE_EDGE_SHARPNESS     4.0    // 8.0 = sharper, 2.0 = softer

#pragma stage vertex
layout(location = 0) in vec4 Position;
layout(location = 1) in vec2 TexCoord;
layout(location = 0) noperspective out vec2 vTexCoord;
layout(location = 1) noperspective out vec4 vNW_NE;
layout(location = 2) noperspective out vec4 vSW_SE;

void main() {
   gl_Position = global.MVP * Position;
   vTexCoord = TexCoord;
   vec2 h = params.SourceSize.zw * 0.5;
   vNW_NE = vec4(TexCoord - h, TexCoord + vec2(h.x, -h.y));
   vSW_SE = vec4(TexCoord + vec2(-h.x, h.y), TexCoord + h);
}

#pragma stage fragment
layout(location = 0) noperspective in vec2 vTexCoord;
layout(location = 1) noperspective in vec4 vNW_NE;
layout(location = 2) noperspective in vec4 vSW_SE;

layout(location = 0) out vec4 FragColor;

layout(set = 0, binding = 1) uniform sampler2D Source;

#include "includes/functions.include.slang"

float fxaa_lite_luma(vec3 rgb) {
   return dot(rgb, vec3(0.299, 0.587, 0.114));
}

void main() {
   #ifndef D3D_WORKAROUND
      if (fps_halver_is_skipped_frame())
         return;
   #endif

   vec4 pixel_out = textureLod(Source, vTexCoord, 0.0);

   // DO_FXAA is a compile-time constant here (config-user-optional.txt), so this
   // whole block is dropped by the compiler when it is 0.0.
   if (DO_FXAA > 0.0) {
      vec3 rgbNW = textureLod(Source, vNW_NE.xy, 0.0).rgb;
      vec3 rgbNE = textureLod(Source, vNW_NE.zw, 0.0).rgb;
      vec3 rgbSW = textureLod(Source, vSW_SE.xy, 0.0).rgb;
      vec3 rgbSE = textureLod(Source, vSW_SE.zw, 0.0).rgb;

      float lumaM  = fxaa_lite_luma(pixel_out.rgb);
      float lumaNW = fxaa_lite_luma(rgbNW);
      float lumaNE = fxaa_lite_luma(rgbNE) + 1.0/384.0; // breaks ties, as in FXAA 3.11
      float lumaSW = fxaa_lite_luma(rgbSW);
      float lumaSE = fxaa_lite_luma(rgbSE);

      float lumaMaxNWSW = max(lumaNW, lumaSW);
      float lumaMinNWSW = min(lumaNW, lumaSW);
      float lumaMaxNESE = max(lumaNE, lumaSE);
      float lumaMinNESE = min(lumaNE, lumaSE);
      float lumaMax = max(lumaM, max(lumaMaxNESE, lumaMaxNWSW));
      float lumaMin = min(lumaM, min(lumaMinNESE, lumaMinNWSW));

      // Flat area: keep the pixel. This is where most pixels exit.
      if (lumaMax - lumaMin >= max(FXAA_LITE_EDGE_THRESHOLD_MIN, lumaMax * FXAA_LITE_EDGE_THRESHOLD)) {
         vec2 dir = vec2( (lumaSW + lumaSE) - (lumaNW + lumaNE),
                          (lumaNW + lumaSW) - (lumaNE + lumaSE) );

         vec2 dir1 = dir * inversesqrt(max(dot(dir, dir), 1e-8));
         vec2 h1 = dir1 * params.SourceSize.zw * 0.5;
         vec3 rgbN1 = textureLod(Source, vTexCoord - h1, 0.0).rgb;
         vec3 rgbP1 = textureLod(Source, vTexCoord + h1, 0.0).rgb;

         float dirAbsMinTimesC = max(min(abs(dir1.x), abs(dir1.y)) * FXAA_LITE_EDGE_SHARPNESS, 1e-4);
         vec2 dir2 = clamp(dir1 / dirAbsMinTimesC, -2.0, 2.0);
         vec2 h2 = dir2 * params.SourceSize.zw * 2.0;
         vec3 rgbN2 = textureLod(Source, vTexCoord - h2, 0.0).rgb;
         vec3 rgbP2 = textureLod(Source, vTexCoord + h2, 0.0).rgb;

         vec3 rgbA = (rgbN1 + rgbP1) * 0.5;
         vec3 rgbB = (rgbN2 + rgbP2) * 0.25 + rgbA * 0.5;

         // The wide blend crossed another edge: fall back to the narrow one.
         float lumaB = fxaa_lite_luma(rgbB);
         pixel_out.rgb = (lumaB < lumaMin || lumaB > lumaMax) ? rgbA : rgbB;
      }
   }

   FragColor = pixel_out;
}
