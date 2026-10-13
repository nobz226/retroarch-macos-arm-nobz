# RetroArch – MacOS-ARM-Nobz Edition

A ready-to-play RetroArch setup for Apple Silicon Macs (M1/M2/M3/M4): 101 games across 9 systems, with every core, setting, shader, overlay, controller layout, box art and playlist already in place. You bring your own games and BIOS files.

> **BIOS files and saves are not included.** Some systems need BIOS files from your own consoles; [section 5](#5-bios-files) lists each one and exactly where it goes.

---

## Contents

1. [What's included](#1-whats-included)
2. [Games](#2-games)
3. [Getting started](#3-getting-started)
4. [Your game files (ROMs)](#4-your-game-files-roms)
5. [BIOS files](#5-bios-files)
6. [Controllers](#6-controllers)
7. [Keyboard shortcuts](#7-keyboard-shortcuts)
8. [Multi-disc games](#8-multi-disc-games)
9. [Per-game settings](#9-per-game-settings)
10. [Users and profiles](#10-users-and-profiles)
11. [Screen translation](#11-screen-translation)
12. [Building the DMG](#12-building-the-dmg)
13. [Troubleshooting](#13-troubleshooting)

---

## 1. What's included

| Part | Where it goes on your Mac |
|---|---|
| Cores (emulators), settings, per-game settings, controller layouts, shaders, overlays, box art, game database, cheats | `~/Library/Application Support/RetroArch` |
| Playlists, PS2 settings and patches, user profiles, and your BIOS files (see section 5) | `~/Documents/RetroArch` |

`~` means your home folder. To open one of these folders, press **Cmd + Shift + G** in Finder and paste the path.

**Not included:**
- **Games (ROMs).** You supply your own; see [section 4](#4-your-game-files-roms).
- **BIOS files.** You need your own; [section 5](#5-bios-files) lists them.
- **Saves.** No game saves, memory cards or savestates: every player starts fresh.
- **The Wii system menu.** Dolphin plays Wii games without it.
- **Account logins and keys** (`retroarch-keychain.cfg` / `.key`, each user's `keychain.cfg`): RetroAchievements logins and the ZTranslate key. The first-launch window asks for them.
- **Profile pictures.** Each user picks one when they are added.
- **The Wii virtual SD card.** It's over GitHub's 100 MB file limit, and Dolphin makes a new one automatically.

| System | Emulator (core) |
|---|---|
| PlayStation 2 | PCEE2 (custom build, from `nobz226/pcee2-libretro`) |
| GameCube and Wii | Dolphin (custom build, from `nobz226/dolphin`) |
| PlayStation | SwanStation |
| Nintendo 64 | ParaLLEl N64 |
| Super Nintendo | bsnes |
| Dreamcast | Flycast |
| Capcom arcade and Neo Geo | FinalBurn Neo |

The RetroArch app itself is a custom build from `nobz226/RetroArch`. On top of standard RetroArch it adds:
- the first-launch setup that installs everything above, with a permissions page;
- user profiles: each user has their own saves, settings and RetroAchievements account ([section 10](#10-users-and-profiles));
- screen translation from the Quick Menu ([section 11](#11-screen-translation));
- its own icon theme, **Nobz**;
- finding your games on any drive name;
- refreshing playlists automatically at launch;
- crash and freeze fixes for Vulkan.

---

## 2. Games

### PlayStation 2 — 40 games

Core: **Sony - PlayStation 2 (PCEE2)** · Folder: `roms/PS2/`

| Game | File |
|---|---|
| Ace Combat 04 - Shattered Skies | `Ace Combat 04 - Shattered Skies.iso` |
| Ace Combat 5 - The Unsung War | `Ace Combat 5 - The Unsung War.iso` |
| Black | `Black.iso` |
| Burnout - Revenge | `Burnout - Revenge.iso` |
| Burnout 3 - Takedown | `Burnout 3 - Takedown.iso` |
| Devil May Cry 3 - Dante's Awakening - Special Edition | `Devil May Cry 3 - Dante's Awakening - Special Edition.iso` |
| Final Fantasy X - International | `Final Fantasy X - International.iso` |
| God of War | `God of War.iso` |
| God of War II | `God of War II.iso` |
| Gran Turismo 3 - A-Spec | `Gran Turismo 3 - A-Spec.iso` |
| Gran Turismo 4 | `Gran Turismo 4.iso` |
| Grand Theft Auto - San Andreas | `Grand Theft Auto - San Andreas.iso` |
| Grand Theft Auto - Vice City | `Grand Theft Auto - Vice City.iso` |
| Grand Theft Auto III | `Grand Theft Auto III.iso` |
| Guilty Gear XX #Reload | `Guilty Gear XX #Reload.iso` |
| Jak 3 | `Jak 3.iso` |
| Jak and Daxter - The Precursor Legacy | `Jak and Daxter - The Precursor Legacy.iso` |
| Jak II | `Jak II.iso` |
| Kingdom Hearts - Final Mix | `Kingdom Hearts - Final Mix.iso` |
| Kingdom Hearts II - Final Mix+ | `Kingdom Hearts II - Final Mix+.chd` |
| Medal of Honor - Frontline | `Medal of Honor - Frontline.iso` |
| Metal Gear Solid 2 - Substance | `Metal Gear Solid 2 - Substance.iso` |
| Metal Gear Solid 3 - Subsistence | `Metal Gear Solid 3 - Subsistence.m3u` |
| Midnight Club 3 - DUB Edition Remix | `Midnight Club 3 - DUB Edition Remix.iso` |
| Need for Speed - Most Wanted - Black Edition | `Need for Speed - Most Wanted - Black Edition.iso` |
| Onimusha - Dawn of Dreams | `Onimusha - Dawn of Dreams.m3u` |
| Ookami | `Ookami.iso` |
| Ratchet and Clank | `Ratchet and Clank.iso` |
| Ratchet and Clank - Going Commando | `Ratchet and Clank - Going Commando.iso` |
| Ratchet and Clank - Up Your Arsenal | `Ratchet and Clank - Up Your Arsenal.iso` |
| Shadow of the Colossus | `Shadow of the Colossus.iso` |
| Silent Hill 2 - Director's Cut | `Silent Hill 2 - Director's Cut.iso` |
| Silent Hill 3 | `Silent Hill 3.iso` |
| Sly 2 - Band of Thieves | `Sly 2 - Band of Thieves.iso` |
| Sly 3 - Honor Among Thieves | `Sly 3 - Honor Among Thieves.iso` |
| Sly Cooper and The Thievius Racoonus | `Sly Cooper and The Thievius Racoonus.iso` |
| SSX 3 | `SSX 3.iso` |
| Tekken 5 | `Tekken 5.iso` |
| Tenchu 3 | `Tenchu 3.iso` |
| Tony Hawk's Underground | `Tony Hawk's Underground.iso` |

### PlayStation — 10 games

Core: **Sony - PlayStation (SwanStation)** · Folder: `roms/PSX/`

| Game | File |
|---|---|
| Ace Combat 3 - Electrosphere | `Ace Combat 3 - Electrosphere/Ace Combat 3 - Electrosphere.m3u` |
| Ape Escape | `Ape Escape.chd` |
| Biohazard 2 | `Biohazard 2/Biohazard 2.m3u` |
| Biohazard 3 - Last Escape | `Biohazard 3 - Last Escape.chd` |
| Crash Bandicoot | `Crash Bandicoot.chd` |
| Metal Gear Solid - Integral | `Metal Gear Solid - Integral/Metal Gear Solid - Integral.m3u` |
| R4 - Ridge Racer Type 4 | `R4 - Ridge Racer Type 4.chd` |
| Spyro The Dragon | `Spyro The Dragon.chd` |
| Tekken 3 | `Tekken 3.chd` |
| WipEout 3 - Special Edition | `WipEout 3 - Special Edition.chd` |

### GameCube — 16 games

Core: **Nintendo - GameCube / Wii (Dolphin)** · Folder: `roms/GAMECUBE/`

| Game | File |
|---|---|
| Biohazard | `Biohazard/Biohazard.m3u` |
| Biohazard 4 | `Biohazard 4/Biohazard 4.m3u` |
| Harvest Moon - Another Wonderful Life | `Harvest Moon - Another Wonderful Life.rvz` |
| Luigi's Mansion | `Luigi's Mansion.rvz` |
| Mario Kart - Double Dash!! | `Mario Kart - Double Dash!!.rvz` |
| Mario Tennis GC | `Mario Tennis GC.rvz` |
| Metroid Prime | `Metroid Prime.rvz` |
| Metroid Prime 2 - Echoes | `Metroid Prime 2 - Echoes.rvz` |
| Paper Mario - The Thousand-Year Door | `Paper Mario - The Thousand-Year Door.rvz` |
| Smash Brothers DX | `Smash Brothers DX.rvz` |
| SoulCalibur II | `Soulcalibur II.rvz` |
| Star Wars - Rogue Squadron II - Rogue Leader | `Star Wars - Rogue Squadron II - Rogue Leader.rvz` |
| Super Mario Strikers | `Super Mario Strikers.rvz` |
| Super Mario Sunshine | `Super Mario Sunshine.rvz` |
| The Legend of Zelda - The Wind Waker | `The Legend of Zelda - The Wind Waker.rvz` |
| The Legend of Zelda - Twilight Princess | `The Legend of Zelda - Twilight Princess.rvz` |

### Wii — 9 games

Core: **Nintendo - GameCube / Wii (Dolphin)** · Folder: `roms/Wii/`

| Game | File |
|---|---|
| Biohazard - The Darkside Chronicles | `Biohazard - The Darkside Chronicles.rvz` |
| Biohazard - The Umbrella Chronicles | `Biohazard - The Umbrella Chronicles.rvz` |
| Donkey Kong Country Returns | `Donkey Kong Country Returns.rvz` |
| Mario Kart Wii | `Mario Kart Wii.rvz` |
| New Super Mario Bros. Wii | `New Super Mario Bros. Wii.rvz` |
| Super Mario Galaxy | `Super Mario Galaxy.rvz` |
| Super Mario Galaxy 2 | `Super Mario Galaxy 2.rvz` |
| Super Smash Bros. Brawl | `Super Smash Bros. Brawl.rvz` |
| Xenoblade Chronicles | `Xenoblade Chronicles.rvz` |

### Nintendo 64 — 4 games

Core: **Nintendo - Nintendo 64 (ParaLLEl N64)** · Folder: `roms/N64/`

| Game | File |
|---|---|
| Conker's Bad Fur Day | `Conker's Bad Fur Day.z64` |
| Super Mario 64 | `Super Mario 64.z64` |
| The Legend of Zelda - Majora's Mask | `The Legend of Zelda - Majora's Mask.z64` |
| The Legend of Zelda - Ocarina of Time | `The Legend of Zelda - Ocarina of Time.z64` |

### Super Nintendo — 4 games

Core: **Nintendo - SNES / SFC (bsnes)** · Folder: `roms/SNES/`

| Game | File |
|---|---|
| Super Mario All-Stars | `Super Mario All-Stars.sfc` |
| Super Mario World | `Super Mario World.sfc` |
| Super Mario World 2 - Yoshi's Island | `Super Mario World 2 - Yoshi's Island.sfc` |
| Super Metroid | `Super Metroid.sfc` |

### Dreamcast — 4 games

Core: **Sega - Dreamcast/Naomi (Flycast)** · Folder: `roms/DREAMCAST/`

| Game | File |
|---|---|
| Capcom vs. SNK - Millennium Fight 2000 Pro | `Capcom vs. SNK - Millennium Fight 2000 Pro.chd` |
| Capcom vs. SNK 2 - Millionaire Fighting 2001 | `Capcom vs. SNK 2 - Millionaire Fighting 2001.chd` |
| Marvel vs. Capcom 2 - New Age of Heroes | `Marvel vs. Capcom 2 - New Age of Heroes.chd` |
| SoulCalibur | `SoulCalibur.chd` |

### Capcom arcade (CPS) — 6 games

Core: **Arcade (FinalBurn Neo)** · Folder: `roms/CPS/`

| Game | File |
|---|---|
| Alien vs. Predator | `avspj.7z` |
| Marvel vs. Capcom - Clash of Super Heroes | `mvscj.7z` |
| Street Fighter III 3rd Strike - Fight for the Future | `sfiii3n.zip` |
| Street Fighter Zero 2 - Alpha | `sfz2alj.7z` |
| The Punisher | `punisherj.7z` |
| Vampire Savior - The Lord of Vampire | `vsavj.7z` |

### Neo Geo — 8 games

Core: **Arcade (FinalBurn Neo)** · Folder: `roms/NEOGEO/`

| Game | File |
|---|---|
| Garou - Mark of the Wolves | `garou.7z` |
| Metal Slug | `mslug.7z` |
| Metal Slug 3 | `mslug3.7z` |
| Metal Slug 4 | `mslug4.7z` |
| Metal Slug 5 | `mslug5.7z` |
| Metal Slug X | `mslugx.7z` |
| Samurai Shodown V - Special | `samsh5sph.7z` |
| Sengoku 3 | `sengoku3.7z` |

---

## 3. Getting started

There are two ways to set up a Mac. **Option A is the easy one.**

### Option A: the DMG (recommended)

1. Open **RetroArch.dmg** and drag **RetroArch** onto **Applications**. (To make a DMG from this repository, see [section 10](#12-building-the-dmg).)
2. Plug in the drive with your games (see [section 4](#4-your-game-files-roms)).
3. Open RetroArch from Applications.
   - If macOS says it can't be opened: open **System Settings → Privacy & Security**, scroll down and click **Open Anyway**.
4. **Permissions.** A window lists what RetroArch uses: microphone, external drives, the Documents folder, the local network and Bluetooth. Click **Allow All** and answer each macOS question, then **Continue**. macOS remembers the answers, also for later versions of this build.
5. **The setup window.** While the setup (about 1.6 GB) copies, it asks for your name and picture, your RetroAchievements account, a kiosk mode password, a ZTranslate key for screen translation, and which kind of controller you have (Nintendo or Xbox layout). Every page can be skipped.
6. **Who's playing?** Pick your picture and press Return (or A on a controller). This window opens at every launch.
7. The menu appears with all your playlists. Pick a game and play.

The first-launch setup runs only on a Mac that has never had RetroArch set up (no `~/Library/Application Support/RetroArch/config/retroarch.cfg`), and it never replaces files that are already there.

### Option B: from this repository

1. Install RetroArch:
   - **Best:** the custom RetroArch app (the one inside the DMG). It has every fix and finds your games on any drive.
   - **Also works:** the official RetroArch for macOS from [retroarch.com](https://www.retroarch.com/?page=platforms). The PS2 and GameCube/Wii cores here are custom builds, so keep the ones this setup installs; don't update them with the Online Updater.
2. Download this repository: **Code → Download ZIP** on GitHub, then double-click the ZIP. Or run `git clone` if you use Git.
3. Quit RetroArch. Then open **Terminal**, type `cd ` (with a space), drag the downloaded folder into the Terminal window, press Return, and run:
   ```
   ./install.sh
   ```
   It copies everything into place and fills in your home folder where settings need it. It never overwrites files you already have; for a completely clean install, delete the two folders listed in [section 1](#1-whats-included) first.
4. Start RetroArch.

With the official RetroArch app, your games drive must be named exactly **extSSD**. The custom app finds the games on any drive name.

---

## 4. Your game files (ROMs)

The playlists expect your games on an external drive in this layout:

```
<your drive>/Games/RetroArch/roms/
    CPS/  DREAMCAST/  GAMECUBE/  N64/  NEOGEO/  PS2/  PSX/  SNES/  Wii/
```

- The **custom RetroArch app** finds `Games/RetroArch/roms` on any connected drive, whatever the drive is called. The **official app** needs the drive to be named **extSSD**.
- **File names** should match the ones in [section 2](#2-games). That's how each game gets its box art and its own settings (controls, shaders, patches).
- **Multi-disc games:** put the discs in their own folder, and an `.m3u` file **directly in the system folder, next to that folder**. The `.m3u` is a plain text file listing the discs, one per line, disc 1 first, each with the folder name in front. RetroArch then shows the game once, with all its discs. Example:
  ```
  PS2/
    Some Game.m3u            contains:  Some Game/Some Game Disc 1.iso
    Some Game/                          Some Game/Some Game Disc 2.iso
      Some Game Disc 1.iso
      Some Game Disc 2.iso
  ```
  Make the `.m3u` in TextEdit (**Format → Make Plain Text**), and save it with the game's name and the `.m3u` ending. See [section 8](#8-multi-disc-games) for changing discs.

### Adding new games

1. Put the game in the right system folder, named the way you want it to show in the menu.
2. (Optional) Add box art: PNG or JPG files with the **same name as the game file** (without its extension) in
   `~/Library/Application Support/RetroArch/thumbnails/<SYSTEM>/Named_Boxarts/` (also `Named_Snaps/`, `Named_Titles/` and `Named_Logos/`).
3. Start RetroArch. **Playlists refresh themselves at launch**, so the new game appears automatically.
   - To turn that off: **Settings → Playlists → Refresh Playlists on Launch**.
   - To refresh by hand: open the playlist, then **Manage Playlist → Refresh Playlist**.

### Game icons: title screens or logos

The small image next to each game in a playlist can be the game's **title screen** or its **logo** (a wide banner image):

- **Settings → User Interface → Appearance → Icon Thumbnail**: choose **Title Screen** (images in `Named_Titles/`) or **Logo** (images in `Named_Logos/`).
- Dreamcast, PlayStation, PS2, GameCube and Wii have their own logos. The other systems use their title screens in both modes, so they look the same either way.
- When you add a game, put its logo in `thumbnails/<SYSTEM>/Named_Logos/`, named like the game file.

Arcade games (CPS, Neo Geo) show up under their ROM-set name (for example `garou`). To give one a proper title, select it in the playlist and choose **Rename**. Its box art still goes by the file name (for example `garou.png`). Use **FinalBurn Neo** ROM sets.

---

## 5. BIOS files

A BIOS is a console's built-in startup software. Some emulators need it to run games. This repository doesn't include BIOS files: you need dumps from your own consoles. Place them **exactly** like this, with the same file names (capital letters included):

All paths are inside `~/Documents/RetroArch/system/`.

| System | File | Folder | Needed? | MD5 checksum |
|---|---|---|---|---|
| PlayStation | `SCPH5500.BIN` (Japan) | `system/` | **Yes**, one per region you play | `8dd7d5296a650fac7319bce665a6a53c` |
| PlayStation | `SCPH1001.BIN` (USA) | `system/` | **Yes** | `924e392ed05558ffdb115408c263dccf` |
| PlayStation | `SCPH-7502.BIN` (Europe) | `system/` | **Yes** | `b9d9a0286c33dc6b7237bb13cd46fdee` |
| PlayStation 2 | `ps2-0200a-20040614-100909.bin` (USA v2.00) | `system/pcsx2/bios/` | **Yes**, at least one | `d333558cc14561c1fdc334c75d5f37b7` |
| PlayStation 2 | `ps2-0200e-20040614-100914.bin` (Europe v2.00) | `system/pcsx2/bios/` | optional | `dc752f160044f2ed5fc1f4964db2a095` |
| PlayStation 2 | `ps2-0200j-20040614-100905.bin` (Japan v2.00) | `system/pcsx2/bios/` | optional | `0eee5d1c779aa50e94edd168b4ebf42e` |
| Dreamcast | `dc_boot.bin` | `system/dc/` | **Yes** | `e10c53c2f8b90bab96ead2d368858623` |
| Dreamcast | `dc_flash.bin` | `system/dc/` | **Yes** | `9338b10ee6f13fbc8bfcd6276e156fad` |
| Neo Geo | `neogeo.zip` (FinalBurn Neo set) | `system/fbneo/` | **Yes** | `5ee2936ced81137388abd2d4f3e92ba7` |
| GameCube | `IPL.bin` (USA) | `system/dolphin-emu/Sys/GC/USA/` | optional (boot animation) | `fae2b558ffc344467170520d62177e5c` |
| GameCube | `IPL.bin` (Europe) | `system/dolphin-emu/Sys/GC/EUR/` | optional | `85e7f7fdeff9fa6ecb52aa0a38cd2eb4` |
| GameCube | `IPL.bin` (Japan) | `system/dolphin-emu/Sys/GC/JAP/` | optional | `00cff6ae2938bb37ef355385add3dc16` |

- **No BIOS needed** for Nintendo 64, Super Nintendo, Wii and the Capcom arcade games.
- **Check a file** by opening Terminal and running `md5 ` (with a space), then dragging the file into the window. The result should match the table.
- **PS2:** the `.nvm` and `.mec` files next to each PS2 BIOS hold its system settings (language, time zone). They aren't included: the PS2 makes new ones and asks you to set the language once.
- **PS2 clock:** the PS2's internal clock is set to one year ahead of when this setup was made, in `system/pcsx2/inis/PCSX2.ini`. Delete that file to go back to your Mac's own clock.

---

## 6. Controllers

Any Bluetooth or USB controller that macOS supports works: Xbox (One / Series), PlayStation (DualShock 4, DualSense), Nintendo Switch Pro Controller and more. Layouts for Xbox and Switch Pro controllers are already saved.

### Connecting a controller (Bluetooth)

1. Open **System Settings → Bluetooth**.
2. Put the controller in pairing mode:
   - **Xbox:** hold the small **pair** button on top until the Xbox logo flashes fast.
   - **PlayStation:** hold **PS + Share** (DualShock 4) or **PS + Create** (DualSense) until the light bar flashes.
   - **Switch Pro:** hold the small **sync** button on top until the lights run back and forth.
3. Click **Connect** next to the controller.
4. Start RetroArch. It recognises the controller automatically.

### Button names: one layout, three names

RetroArch uses a standard pad, the **RetroPad**, laid out like a Super Nintendo controller. It cares about **where a button is**, not what's printed on it. So the button at the bottom of the diamond is always the same button to RetroArch, whatever your controller calls it:

| Position | RetroArch calls it | Xbox | PlayStation | Nintendo |
|---|---|---|---|---|
| Bottom face button | **B** | A | ✕ Cross | B |
| Right face button | **A** | B | ○ Circle | A |
| Left face button | **Y** | X | □ Square | Y |
| Top face button | **X** | Y | △ Triangle | X |
| Front shoulder buttons | **L / R** | LB / RB | L1 / R1 | L / R |
| Triggers | **L2 / R2** | LT / RT | L2 / R2 | ZL / ZR |
| Pressing a stick in | **L3 / R3** | LS / RS click | L3 / R3 | stick click |
| Start | **Start** | ☰ Menu | Options | + |
| Select | **Select** | ⧉ View | Share / Create | − |

**Tip:** Nintendo controllers use the same letters as RetroArch. On Xbox, the letters are in different places (Xbox **A** is RetroArch **B**). When a menu says "press A", look at the *position* in this table.

### Moving around the menus

- **Open the menu during a game:** press the **Xbox / PS / Home** button in the middle of the controller, or the **\\** key (backslash) on the keyboard.
  - If the middle button does nothing, set a button combo: **Settings → Input → Hotkeys → Menu Toggle (Controller Combo)**, then pick one, for example **L3 + R3** (press both sticks in).
- **Confirm / OK:** the **bottom** button (Xbox **A**, PlayStation **✕**, Nintendo **B**).
- **Back:** the **right** button (Xbox **B**, PlayStation **○**, Nintendo **A**).
- On a Nintendo controller you might prefer **A** to confirm: **Settings → Input → Menu Controls → Swap OK & Cancel Buttons**, then turn it **off**.
- **Back to the game:** open the menu, choose **Quick Menu → Resume**. Or press the menu button again.

### Nintendo or Xbox button layout

The button setups for each game (remaps) come in two sets, because controllers put A, B, X and Y in different places:

| Face Button Layout | Controllers | Where A is |
|---|---|---|
| **Nintendo** | Switch Pro Controller, Joy-Con, 8BitDo in Switch mode | on the right (B at the bottom) |
| **Xbox** | Xbox and PlayStation controllers, most other controllers | at the bottom (B on the right) |

Both sets do the same thing: the button with the same letter does the same action in every game. The first-launch window asks which kind you have. To change it: **Quick Menu → Controls → Face Button Layout** (or **Settings → Input → Face Button Layout**). It switches at once, even during a game, and each user keeps their own choice.

The sets are in `~/Library/Application Support/RetroArch/config/remaps/Nintendo` and `.../remaps/Xbox`.

Changed a game's buttons with the Nintendo layout and want the Xbox set to match? Quit RetroArch and run `tools/make-xbox-remaps.py` from a copy of this repository: it rebuilds the Xbox set from the Nintendo one.

### Changing buttons for one game, step by step

Example: you want **Jump** on a different button in one game.

1. Start the game.
2. Open the menu (middle button, or the **\\** key).
3. Go to **Quick Menu → Controls → Port 1 Controls**.
4. You'll see a list like `B Button (Down)  →  Cross`. The left side is the button on **your controller** (RetroPad name and position); the right side is what it does **in the game**.
5. Select the button you want to change, and pick the action it should do.
6. Save it: go back to **Quick Menu → Controls → Manage Remap Files** and choose:
   - **Save Game Remap File**: only this game uses it. *Use this most of the time.*
   - **Save Core Remap File**: every game on this emulator uses it (for example, every PS2 game).
   - **Save Content Directory Remap File**: every game in the same folder uses it.
7. Done. It loads automatically next time.

**Your change is saved in the button layout you're using** (Nintendo or Xbox, see below). The other layout keeps its own version.

**To undo:** **Quick Menu → Controls → Manage Remap Files → Remove Game Remap File** (or Core / Content Directory).

### Changing buttons everywhere (rarely needed)

To change what RetroArch thinks your controller's buttons are (for example, an unusual controller isn't recognised properly):

1. **Settings → Input → RetroPad Binds → Port 1 Controls**.
2. Choose **Set All Controls**. RetroArch asks you to press each button in turn; press the button in that **position** on your controller (use the table above).
3. Choose **Save Controller Profile** so it's remembered.

### Layouts already set up

| For | Controllers | What it covers |
|---|---|---|
| For | Layouts saved for |
|---|---|
| PS2 (all games) | Xbox, Switch Pro, any controller |
| PlayStation (all games) | Switch Pro, any controller |
| Super Nintendo (all games) | Switch Pro, any controller |
| Nintendo 64 (all games) | any controller |
| GameCube (all games) | Switch Pro, any controller |
| Wii (all games) | any controller |
| Super Mario Sunshine, Twilight Princess, Donkey Kong Country Returns, Smash Bros. Brawl | Switch Pro, any controller (per game) |
| Super Mario Galaxy | Switch Pro, Xbox, any controller (per game) |
| Super Mario Galaxy 2, New Super Mario Bros. Wii, Xenoblade Chronicles | any controller (per game) |

### Wii games

Wii games expect a Wii Remote, so these settings matter:
- **Super Mario Galaxy / Galaxy 2** need the Wii Remote pointer, which is moved with a stick. Its settings are under **Quick Menu → Core Options**, in the Wii Remote IR (pointer) options.
- The other Wii games have their layouts saved already (see the table above).

---

## 7. Keyboard shortcuts

| Key | Does |
|---|---|
| **\\** (backslash) | Open or close the menu |
| **F** | Fullscreen on/off |
| **P** | Pause |
| **Numpad 5** / **Numpad 9** | Savestate: save / load |
| **Numpad 7** / **Numpad 8** | Savestate slot down / up |
| **[** | Reset the game |
| **]** | Close the game |
| **N** | Next disc (multi-disc games) |
| **Esc** | Quit RetroArch |

---

## 8. Multi-disc games

Every multi-disc game is **one entry** in its playlist and **starts on disc 1**. Its `.m3u` file lists the discs, disc 1 first:

| System | Games | Where the `.m3u` is |
|---|---|---|
| PlayStation 2 | Metal Gear Solid 3, Onimusha – Dawn of Dreams | directly in `roms/PS2/`, next to the game's folder |
| PlayStation | Biohazard 2 (Leon first), Metal Gear Solid Integral, Ace Combat 3 | inside the game's folder |
| GameCube | Biohazard, Biohazard 4 | inside the game's folder |

**When the game asks for the next disc:**
1. Open the menu → **Quick Menu → Disc Control**.
2. **Eject Disc**.
3. **Current Disc Index**: pick the next disc number.
4. **Insert Disc**, then go back to the game.

*Save in the game before swapping discs, just in case.*

After a swap, RetroArch starts the game on the disc you were last on, so you continue where you left off. To go back to disc 1, change it the same way.

**Adding a multi-disc game:**
- **PlayStation and GameCube:** put the discs and the `.m3u` together in a folder named after the game. The `.m3u` lists just the disc file names.
- **PlayStation 2:** put the discs in a folder named after the game, and the `.m3u` **directly in `roms/PS2/`**, with the folder name in front of each disc (see [section 4](#4-your-game-files-roms)). The PS2 playlist only looks at files directly in `roms/PS2/`.

Both ways, the game appears once, starts on disc 1, and all its discs are in Disc Control.

---

## 9. Per-game settings

PS2 per-game files are in `~/Documents/RetroArch/system/pcsx2/gamesettings/<SERIAL>_<CRC>.ini`. Each one explains its own settings. Custom patches are in `system/pcsx2/patches/`.

| Game | Frame rate / patches on | Other settings |
|---|---|---|
| Jak II | 45 FPS cap (custom) | AutoFlush 0, Metal hazard-blit fix |
| Jak 3 | 45 FPS cap (custom) | |
| Black | stock 30 (45 and 60 available) | Metal hazard-blit fix |
| Metal Gear Solid 3 | 30 FPS (60 available) | |
| Kingdom Hearts FM | 60 FPS + HP/MP fix | |
| Kingdom Hearts II FM+ | 60 FPS | |
| GTA III / Vice City / San Andreas | 60 FPS | San Andreas: swimming, aiming and trains act oddly above 30 FPS |
| Gran Turismo 3 / 4 | lighting performance patches | |
| Burnout 3 / Revenge | progressive scan, MPH to KPH | |
| SSX 3 | Metro slowdown fix, skip intros | |
| God of War II | emulator-friendly waits | |
| Need for Speed Most Wanted | | Vulkan renderer |
| Shadow of the Colossus (JP) | 30 FPS cap (custom; 45 FPS cap available) | TimeStretch; see its settings file for the heat tests |

- **All other PS2 games:** Metal renderer, native resolution, the automatic per-game fixes from PCSX2's game database.
- **GameCube and Wii:** Dolphin with the Vulkan renderer.
- **Shaders:** every system uses a koko-aio CRT-style shader with a bezel (each system's default, plus some per-game ones). To change or turn one off: **Quick Menu → Shaders**.

To change a game's options: start it, then **Quick Menu → Core Options**, and save with **Manage Core Options → Save Game Options**.

---

## 10. Users and profiles

Every person who plays gets their own profile. A profile keeps:
- **saves** for every system, PS2 memory cards and GameCube/Wii saves;
- **savestates**;
- **their RetroAchievements account**;
- a few settings: notifications, hardcore mode, volume.

Games, playlists, box art, shaders and controller layouts are shared, so a new game shows up for everyone.

- **Choosing who plays.** The **Who's playing?** window opens before RetroArch. Use the arrow keys or the D-pad to pick a picture, then Return or A.
- **Switching.** Main Menu → **Switch User** restarts RetroArch into the same window.
- **Adding someone.** Click **Add User...** in that window: a name, a picture and, if they have one, their RetroAchievements account (checked with RetroAchievements before it is saved).
- **Default** is the profile without an owner. It starts with no saves.
- **Where profiles live.** `~/Documents/RetroArch/users/<name>/`. Dolphin's settings and the GameCube/Wii game patches are shared in `~/Documents/RetroArch/shared/`.

On a Mac that already had this setup, the first launch of the profile version moves the existing saves, savestates, PS2 memory cards and RetroAchievements login into the owner's profile. The PS2 memory cards are copied, and the originals stay in `system/pcsx2/memcards`.

## 11. Screen translation

The Quick Menu has **Translate Screen**: it goes back to the game, sends a picture of the screen to a translation service, and shows the English text over the game. Pick it again, or press the AI Service hotkey, to hide it. The game is paused while the translation is on screen. Nothing runs until you use it.

| Service | What you need | Switch |
|---|---|---|
| **ZTranslate** (default) | A free account at [ztranslate.net](https://ztranslate.net/signup) and its API key, entered in the first-launch window | **Use VGTranslate** off |
| **VGTranslate** | A VGTranslate server running on this Mac at `localhost:4404` | Quick Menu → **Use VGTranslate** on |

The ZTranslate key is kept with the logins in the keychain file, so it is never part of this repository.

## 12. Building the DMG

The DMG is built from the maintainer's own copy of this setup. Download it from this repository's **Releases** page when one is published, or install from this repository with Option B in [section 3](#3-getting-started).

---

## 13. Troubleshooting

| Problem | Fix |
|---|---|
| Games show in the list but won't start ("file not found") | The games drive isn't connected, or the folders don't match [section 4](#4-your-game-files-roms). With the official RetroArch, the drive must be named **extSSD**. |
| A new game doesn't show up | Restart RetroArch, or **Manage Playlist → Refresh Playlist**. Check it's in the right system folder. |
| No box art | The image must have the same name as the game file, in `thumbnails/<SYSTEM>/Named_Boxarts/`. |
| "BIOS not found" or a black screen on PS1, PS2 or Dreamcast | Check [section 5](#5-bios-files): exact folder, exact file name, matching MD5. |
| Buttons are wrong | See [section 6](#6-controllers). Remove the game's remap file if you changed something by mistake. |
| The first launch shows an empty window | Wait about a minute; it's copying the setup. Only happens once. |
| macOS won't open the app | **System Settings → Privacy & Security → Open Anyway**. |
| A permission was refused by mistake | **System Settings → Privacy & Security**, open the matching item (Microphone, Bluetooth, Files and Folders, Local Network) and turn RetroArch on. |
| Saves are missing after switching users | Each user has their own saves. Check you picked the right picture in **Who's playing?** |
| Translate Screen shows an error | ZTranslate: check the key and the internet connection. VGTranslate: its server must be running. |
| A game runs slowly | Check that no other heavy app is running. Per-game settings are in [section 9](#9-per-game-settings). |
| Stutter after alt-tabbing or a crash on closing a game | Make sure **async submits** stays **off** in Core Options (it's marked Experimental). |
