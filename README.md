# CRUELTY SQUAD MOD LOADER

**To load custom maps install the [CruS Mod Base](https://github.com/crustyrashky/crus-modbase) mod**

## Install the loader

1. ~~Download the [latest release](https://github.com/crustyrashky/crus-modloader/releases/download/0.2.1/crus-modloader-0.2.1.zip)~~ This early build currently uses a new install method. Copy the folder this README is in to your game folder, it should look something like this:
```
=> <GAME_DIR>
  => <THIS FOLDER>
    - Install-Modloader.ps1
    - install_modloader.bat
    - godotpcktool.exe
    - modloader.gdc
    - README.md
  - crueltysquad.pck
  - crueltysquad.exe
  - [...]
```
2. Run `install_modloader.bat`
3. Start the game, if you now have a `mods` folder under `%appdata%\Godot\app_userdata\Cruelty Squad\` it worked

## Uninstall the loader

1. Right-click game in steam
2. Go to Properties > Local Files
3. Verify integrity of game files

## Install mods

1. Drag/extract mod folder into `%appdata%\Godot\app_userdata\Cruelty Squad\mods`
2. Launch the game
3. If it didn't work post to #modifications in the discord with the contents of `%appdata%\Godot\app_userdata\Cruelty Squad\logs\mods.log`

## Uninstall mods

1. Remove mod folder from `%appdata%\Godot\app_userdata\Cruelty Squad\mods`

## Credits

Made for https://store.steampowered.com/app/1388770/Cruelty_Squad/

Uses https://github.com/hhyyrylainen/GodotPckTool to install
