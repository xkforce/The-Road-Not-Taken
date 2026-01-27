#loader crafttweaker
#modloaded rockhounding_rocks

import mods.jei.JEI;

import scripts.trnt_02_setup.resources.blocks.USED_ROCKHOUNDING_ROCKS;

static variants as string[] = ["blocks", "walls", "polished", "bricks", "shorts", "deboss", "carved"];

for letter, ids in USED_ROCKHOUNDING_ROCKS {
    for i in 0 .. 16 {
        if (ids.contains(i)) continue;
        for variant in variants {
            JEI.removeAndHide(item(`rockhounding_rocks:${variant}_${letter}:${i}`));
        }
    }
}
