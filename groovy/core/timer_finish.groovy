import core.Modpack

Modpack.LOGGER.advanceStage()
Modpack.LOGGER.shoutout("[💾 BOOT 💾]", [
    "The scripts has been loaded successfully! :)",
    "The whole loading process took ${Modpack.TIMER.timeTotal()} minutes.",
    "If you have any issues please report them on GitHub:",
    "-> 'https://github.com/xkforce/The-Road-Not-Taken/issues'", "",
    "Here are some stats of the custom content in this pack:",
    "-> ${Modpack.BLOCK_COUNTER.getCount()} custom blocks",
    "-> ${Modpack.ITEM_COUNTER.getCount()} custom items (not including block items)",
    "-> ${Modpack.FLUID_COUNTER.getCount()} custom fluids"
])
