#loader crafttweaker
#priority 11

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.zenutils.StaticString;

val tooltips as string[][string][string] = {
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
    if loadedMods has mod {
        for input in tooltips[mod].keys {
            val fullName as IItemStack = item(`${mod}:${input}`);
            val tooltipList as string[] = tooltips[mod][input];
            if (!isNull(fullName)) {
                for tip in tooltipList {
                    fullName.addTooltip(tip);
                }
            }
        }
    } else {
        log.warn(`Mod *${mod}* not loaded, skipping tooltips for it.`);
    }
}
