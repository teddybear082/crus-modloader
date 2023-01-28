# CRUELTY SQUAD VR MOD LOADER

**To load custom maps install the [CruS Mod Base](https://github.com/crustyrashky/crus-modbase) mod, NOT THIS ONE**

**This is a fork of the excellent modloader developed by crustyrashky and disco0, which installs both disco's 0.2.2b version of the crus modloader as well as files required for a VR mod using the Godot OpenXR Asset and XR Tools asset.**

**YOU SHOULD NOT USE THIS INSTALLER UNLESS YOU PLAN TO ALSO INSTALL A VR MOD FILE THAT HAS THE GODOT XR TOOLS ASSET BEFORE RUNNING THE GAME EXE **

**YOU SHOULD NOT USE THIS INSTALLER IF YOU DON'T HAVE A VR HEADSET**

Only use this game on an official purchased version of the game.

**This is also in an ALPHA (TESTING) STATE!!! Back up EVERYTHING Cruelty Squad associated before trying this version of the modloader.  Right now it is intended ONLY for VR modders not end-users.**


## PRELIMINARY STEPS:

If you are running Cruelty Squad for the first time, run the game once first just to make sure all directories are created and then exit out.

If you have installed Cruelty Squad before and you have used any mods / modloaders before, you must return to a "clean" state of the game, otherwise this is very likely not to work.

Make sure the game is installed in the same directory as your Windows Powershell. For me, installing in my normal default Steam directory in Program Files worked fine.


## Install the loader

1. ~~Download the v0.11-VR-alpha release in THIS fork (teddybear082/new-install-script). Link here: https://github.com/teddybear082/crus-modloader/releases/download/v0.11-VR-alpha/crus-vr-modloader.zip. 

This early build currently uses a modification of crustyrashky and disco0's newer install script method. Unzip the release and copy the folder this README is in to your game folder, it should look something like this:
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
	- cs-scripts-vr-mod
    - cs-vr-mod-vr-files
	- cs-vr-mod-xr-tools
    - README.md
  - crueltysquad.pck
  - crueltysquad.exe
  - [...]
```


![cs-vr-mod-install-directory1](https://user-images.githubusercontent.com/87204721/215295165-ea75968d-4ed2-42f7-be58-ad4119a17db9.png)




2. Run `install_modloader.bat`
3. Check to see if your game directory now has an override.cfg, libgodot_openxr.dll and openxr_loader.dll next to the crueltysquad.exe and crueltysquad.pck (If so, that is a good sign, as this installer copies those files there).
4. Start the game (it may crash the first time due to lack of the godot-xr-tools asset); if you now have a `mods` folder under `%appdata%\Godot\app_userdata\Cruelty Squad\` it worked  (as an example, I find this folder in my personal install by navigating to Windows(C:)\Users\[my windows user profile name]\AppData\Roaming\Godot\app_userdata\Cruelty Squad\mods).

5. Now go to that `mods` folder and copy the "cs-vr-mod-vr-files" folder, "cs-vr-mod-xr-tools" folder, and "cs-scripts-vr-mod" folder from this folder to the 'mods' folder.
6. Run the crueltysquad.exe again with your VR headset on and active / running and the main scene should populate into your VR headset if all has gone well.
	If it crashes the first time to desktop, run it again, sometimes it takes THREE times running the .exe for everything to take effect.  More than that, and there's a problem.

## Return to flat screen mode
1. Remove the vr-related mod folds from your mod directory

## Uninstall the loader

1. Right-click game in steam
2. Go to Properties > Local Files
3. Verify integrity of game files

## Install other mods (probably this will not work right now, as the Crus mod base touches the same files as I do. Someday I am hoping to integrate it.

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

https://github.com/GodotVR/godot_openxr (uses Godot OpenXR 1.3.0 release, July 15, 2022)

https://github.com/GodotVR/godot-xr-tools (uses December 29, 2022 build)


