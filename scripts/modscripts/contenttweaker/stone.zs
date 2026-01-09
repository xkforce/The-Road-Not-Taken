#loader crafttweaker
#modloaded contenttweaker contentcreator dropt
#priority 1

import scripts.variables.misc.hammers;
import scripts.variables.variants.defaultVariants;
import scripts.variables.variants.mossyVariants;
import scripts.variables.variants.lichenVariants;

import scripts.classes.stone.Stone;

log.info("[🚧 MODPACK_SETUP 🚧] 🪨 Polishing stones...");

// TODO add walls back once implemented
for stonetype in STONES {
    val stone as Stone = getStone(stonetype);
    if (isNull(stone)) {
        log.error(`Stonetype *${stonetype}* is not a valid stonetype!`);
        continue;
    }
    for color in stone.colors {
        for texturevariant in stone.textureVariants {
            // handle block names for easier translation
            stone.changeName(color, texturevariant);
            // setup oredicts for all rock types
            stone.oreItem(color, texturevariant);
            if (stone.hasFlag("--onlyBlocks") == false && Stone.NO_SUB_BLOCKS.indexOf(texturevariant) == -1) {
                stone.craftStairs(color, texturevariant);
                stone.craftSlab(color, texturevariant);
                //stone.craftWall(color, texturevariant);
            }
        }
        stone.craftChiseledBrick(color);
        stone.craftBrick(color);
        stone.craftPolished(color);
        stone.smeltItem(color);

        // handle mossy variants
        for mossyvariant in mossyVariants {
            stone.craftCovered(color, mossyvariant, mossyvariant.substring(5), "contenttweaker:moss");
        }

        // handle lichen variants
        for lichenvariant in lichenVariants {
            stone.craftCovered(color, lichenvariant, " ", `contenttweaker:${lichenvariant.substring(6)}lichen`);
        }

        changeDrop(stone, color);
    }
}

// This can't be moved into the stone class because the Dropt API is not available before the "crafttweaker" loader
function changeDrop(stone as Stone, color as string) as void {
    // early return if the stone doesn't have a cobblestone variant
    if (stone.textureVariants.indexOf("cobblestone") == -1) {
        log.trace(`*${stone.id}* does not have required texturevariants for drop change!`);
        return;
    }
    val cobblestone as string = `contenttweaker:${stone.registryKey(color, "cobblestone")}`;
    // handle default variants
    for variant in intersectStringArray(stone.textureVariants, defaultVariants) {
        replaceToolDrops(stone.itemKey(color, variant), hammers, [cobblestone]);
    }
    // handle mossy variants
    for variant in intersectStringArray(stone.textureVariants, mossyVariants) {
        replaceToolDrops(stone.itemKey(color, variant), hammers, [cobblestone, "contenttweaker:moss"]);
    }
    // handle lichen variants
    for variant in intersectStringArray(stone.textureVariants, lichenVariants) {
        replaceToolDrops(stone.itemKey(color, variant), hammers, [cobblestone, `contenttweaker:${variant.substring(6)}lichen`]);
    }
}
