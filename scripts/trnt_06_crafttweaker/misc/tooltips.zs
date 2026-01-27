#loader crafttweaker

import crafttweaker.item.IItemStack;

LOG.info("🫆 Adding tooltips to items...");

static tooltips as string[][string][string]$orderly = {
    "charm" : {
        "totem_of_shielding" : ["This totem absorbs damage taken by the player"]
    },
    "chesttransporter" : {
        "chesttransporter_diamond" : ["Creative Only"]
    },
    "rockhounding_rocks" : {
        "rocks_b:12" : ["Form of Enstatite", "Found in asteroids"]
    }
};

for mod in tooltips.keys {
    for input in tooltips[mod].keys {
        if (!itemLoaded(`${mod}:${input}`)) return;
        val it as IItemStack = item(`${mod}:${input}`);
        for tip in tooltips[mod][input] {
            it.addTooltip(tip);
        }
    }
}
