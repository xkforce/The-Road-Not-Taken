#loader crafttweaker
#modloaded rockhounding_rocks
#priority 1

import crafttweaker.item.IItemStack;

import mods.jei.JEI;

import scripts.variables.stone.USED_ROCKHOUNDING_ROCKS;

val variants as string[] = ["blocks", "walls", "polished", "bricks", "shorts", "deboss", "carved"];

for letter, ids in USED_ROCKHOUNDING_ROCKS {
    for i in 0 .. 16 {
        if (ids.contains(i)) {
            continue;
        }
        for variant in variants {
            val block as IItemStack = item(`rockhounding_rocks:${variant}_${letter}:${i}`);
            JEI.removeAndHide(block);
        }
    }
}
