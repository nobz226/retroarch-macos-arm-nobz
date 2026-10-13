#version 450

// Flips the image vertically. Used first and last in koko-aio-ng-n64-upright.slangp:
// cores that render with a bottom-left origin (ParaLLEl N64 with GLideN64 on glcore)
// hand the shader chain an upside-down frame and RetroArch draws the last pass without
// flipping, so every effect drawn in screen space (bezel, spot, vignette, reflections)
// would come out upside down. Flipping on the way in and on the way out makes the
// chain work on an upright frame, exactly as for other cores.

layout(std140, set = 0, binding = 0) uniform UBO
{
   mat4 MVP;
} global;

#pragma stage vertex
layout(location = 0) in vec4 Position;
layout(location = 1) in vec2 TexCoord;
layout(location = 0) out vec2 vTexCoord;

void main()
{
   gl_Position = global.MVP * Position;
   vTexCoord   = vec2(TexCoord.x, 1.0 - TexCoord.y);
}

#pragma stage fragment
layout(location = 0) in vec2 vTexCoord;
layout(location = 0) out vec4 FragColor;
layout(set = 0, binding = 2) uniform sampler2D Source;

void main()
{
   FragColor = texture(Source, vTexCoord);
}
