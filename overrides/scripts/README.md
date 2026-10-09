# The Road not taken - CraftTweaker Scripts

This folder contains the CraftTweaker scripts for The Road not taken Modpack.

## Disclaimer

⚠ The init script makes sure that all needed CraftTweaker addons are loaded. If any of them are missing, the pack will crash. ⚠

This usually means that something went wrong during the installation of the pack. If this is the case, please report the issue to the modpack author. Thank you!

📝 Note: We still try to figure out how to make this clear to the player, without having them check the `crafttweaker.log` file.

## Logging

The modpack currently uses two ways to log informations. The reason we impletemented it this way is that the `crafttweaker.log` get's filled with a lot of informations that are not needed. That is why we set the `#nowarn` annotation in the `init.zs` script. This will remove most debug meesages from the log and only log warnings and errors.

Now we have a clean `crafttweaker.log` file, but we still want to log some informations. For this we use the `RawLogger` feature of `Roid's Tweaker`. With this we can log messages to the `crafttweaker_raw.log` file. This file is not cleaned by the `#nowarn` annotation, so we can still see the messages. To utilize this feature, we wrote our own logger implementation. Furhtermore we implemented a `debug` mode, which will log even more information when loading the modpack, while it is enabled.

## Loaders

The scripts are loaded depending on their loader. Scripts can contain multiple loaders, which allows these scripts to be loaded per loader.

### preinit

These scripts are loaded before the game finalized its registries. Mainly used by `ContentCreator` to register items and blocks.

### contenttweaker

These scripts are loaded before the game finalized its registries. Only used by `ContentTweaker` to register items and blocks.

### crafttweaker

These scripts are loaded after the game initialized all block and item registries. Most scripts run here.

## Priorities

The scripts are loaded depending on their priority.

### 1XXX - Setup Phase

All of these are used in multiple stages of the loading process, so they will be tagged with all loaders.
- 1111 (15) - `init.zs` - load modpack config, setup logger, check for required mods
- 1110 (14) - `functions/arrays.zs` - functions for working with arrays
- 1101 (13) - `functions/getter.zs` - functions for getting items and oredict entries
- 1100 (12) - `functions/*`- functions, they depend on the other functions
- 1011 (11) - `variables/variants.zs` - other variables depend on the variants
- 1010 (10) - `variables/misc.zs` - other classes depend on the misc variables
- 1001 (09) - `classes/*`- classes, they depend on some functions and variables
- 1000 (08) - `variables/*`- variables, they could depend on some classes

### 1XX - Additional Content Creation Phase

- 111 (07) - `content/ctweaker/*` - regsiters all contenttweaker items and blocks
- 110 (06) - `content/ccreator/*` - regsiters all contentcreator items and blocks
- 101 (05) - `content/treetweaker/*` - regsiters all treetweaker tree variants
- 100 (04) - `content/ctweaker/blocks/dyes.zs` - needs to run after some other contenttweaker scripts

### 1X - Recipe Preparation Phase

- 11 (03) - `misc/*` - miscellaneous scripts, that should run before any mod related scripts
- 10 (02) - `modscripts/removal/*` - we need to remove stuff first, before we add stuff

### 1 - Gameplay Phase

- 1 (01) - `modscripts/*` - add everything recipe related
- 0 (00) - `events/*` - events run during the gameplay, so they should be loaded last

### -1111 - Final Phase

- -1111 - `final.zs` - this script is loaded last, it will print a message to the log the script load time.
