#loader crafttweaker
#priority -2147483648

LOG.shoutout("[💾 BOOT 💾]", [
    "The scripts has been loaded successfully! :)",
    `The whole loading process took ${TIMER.timeTotal()} minutes.`,
    "If you have any issues please report them on GitHub:",
    "-> *https://github.com/xkforce/The-Road-Not-Taken/issues*",
    " ",
    "Here are some stats of the custom content in this pack:",
    `-> ${BLOCK_COUNTER.getCount()} custom blocks`,
    `-> ${ITEM_COUNTER.getCount()} custom items (not including block items)`,
    `-> ${FLUID_COUNTER.getCount()} custom fluids`,
], false);
