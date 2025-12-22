# Changelog

<!--
Writing a changelog is a good practice for maintaining a clear history of changes in your project.
Try to follow the [Common Changelog](https://common-changelog.org/) conventions.
-->

## [0.0.1] - 20XX-XX-XX

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

### Fixed

- contenttweaker gem blocks having the wrong name
- furnace recycling recipes erroring on items with meta data
- drops will only be changed for blocks that actually have a cobblestone variant
