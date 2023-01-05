# CRUELTY SQUAD VR MOD LOADER

**To load custom maps install the [CruS Mod Base](https://github.com/crustyrashky/crus-modbase) mod**

**This is a fork of the excellent modloader developed by crustyrashky and disco0, which installs both disco's 0.2.2b version of the crus modloader as well as files required for a VR mod using the Godot OpenXR Asset and XR Tools asset.**

**YOU SHOULD NOT USE THIS INSTALLER UNLESS YOU PLAN TO ALSO INSTALL A VR MOD FILE THAT HAS THE GODOT XR TOOLS ASSET BEFORE RUNNING THE GAME_DIR **

**YOU SHOULD NOT USE THIS INSTALLER IF YOU DON'T HAVE A VR HEADSET**

**This is also in an ALPHA (TESTING) STATE!!! Back up EVERYTHING Cruelty Squad associated before trying this version of the modloader.  Right now it is intended ONLY for VR modders not end-users.**

## Install the loader

1. ~~Download the release in this fork. This early build currently uses a modification of crustyrashky and disco0's newer install script method. Unzip the release and copy the folder this README is in to your game folder, it should look something like this:
```
=> <GAME_DIR>
  => <THIS FOLDER> (Unzipped)
    - Install-Modloader.ps1
    - install_modloader.bat
    - godotpcktool.exe
    - modloader.gdc
    - addons
    - libgodot_openxr.dll
    - openxr_loader.dll
    - override.cfg
    -vr-mod-test-4
    - README.md
  - crueltysquad.pck
  - crueltysquad.exe
  - [...]
```
2. Run `install_modloader.bat`
3. Check to see if your game directory now has an override.cfg, libgodot_openxr.dll and openxr_loader.dll next to the crueltysquad.exe and crueltysquad.pck (If so, that is a good sign, as this installer copies those files there).
4. Start the game (it may crash the first time due to lack of the godot-xr-tools asset); if you now have a `mods` folder under `%appdata%\Godot\app_userdata\Cruelty Squad\` it worked  (as an example, I find this folder in my personal install by navigating to Windows(C:)\Users\[my windows user profile name]\AppData\Roaming\Godot\app_userdata\Cruelty Squad\mods).

5. Now go to that `mods` folder and copy the "vr-mod-test-4" folder from this folder to the 'mods' folder.
6. Run the crueltysquad.exe again with your VR headset on and active / running and the main scene should populate into your VR headset if all has gone well.

## Return to flat screen mode (in testing, not sure if it will work)
1. Go to the vr-mod-test-4 folder in your `mods` folder, extract the contents of mod.zip, delete the "Cutscenes" folder, and rezip the remaining contents back into "mod.zip"

## Uninstall the loader

1. Right-click game in steam
2. Go to Properties > Local Files
3. Verify integrity of game files

## Install other mods

1. Drag/extract mod folder into `%appdata%\Godot\app_userdata\Cruelty Squad\mods`
2. Launch the game
3. If it didn't work post to #modifications in the discord with the contents of `%appdata%\Godot\app_userdata\Cruelty Squad\logs\mods.log`

## Uninstall mods

1. Remove mod folder from `%appdata%\Godot\app_userdata\Cruelty Squad\mods`

## Credits

Made for https://store.steampowered.com/app/1388770/Cruelty_Squad/

Uses https://github.com/hhyyrylainen/GodotPckTool to install

Builds off of https://github.com/disco0/crus-modloader and https://github.com/crustyrashky/crus-modloader

Uses Godot OpenXR Asset and Godot XR Tools assets, found here:

https://github.com/GodotVR/godot_openxr

https://github.com/GodotVR/godot-xr-tools


