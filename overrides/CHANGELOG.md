# Changelog

<!--
Writing a changelog is a good practice for maintaining a clear history of changes in your project.
Try to follow the [Common Changelog](https://common-changelog.org/) conventions.
-->

## [0.1.0] - 20XX-XX-XX

_Whenever we get there..._

## [0.0.2] - 202X-XX-XX

### Added

- a dedicated logger class for all scripts
- all custom functions and classes now have documentation
- a README.md file in the scripts folder, explaining how Enderman structured the scripts

### Changes

- instead of a long list of stone types, they now have a decicated class
- instead of a long list of colors, they now have a decicated class
- we switched the palette we're using again (hopefully this is the last time)
- every script now uses a dedicated priority
- updated and refactored the README.md file
- updated the EMT modpack.cfg to use the modpack data and enable some of it's main menu buttons

### Fixed

- a lot of edge cases that would throw random errors instead of properly handling them

## [0.0.1] - 2026-01-01

_We're still in development, but at least we have a changelog!_

### Added

- there is a changelog now
- the mossy and lichen variations now automatically generate a recipe
- hammers can now be used to recycle various stone blocks
- block templates now have textures and get translated (a few of them are a bit wonky / unfinished)

### Changes

- refactored Rockhounding Rocks to the new rock data map
- refactored Hardened Clay to the new rock data map
- contenttweaker blocks now properly use the hardness and resistance values from the rock data map
- improved template registration
- I'm still trying to figure out a good way to organize all the priorities for the scripts
- crops and fruit items can now have custom food and saturation values

### Fixed

- contenttweaker gem blocks having the wrong name
- furnace recycling recipes erroring on items with meta data
- drops will only be changed for blocks that actually have a cobblestone variant
- missing lang keys for some templat/stone variations
