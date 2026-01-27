#loader crafttweaker

import scripts.trnt_02_setup.classes.zen_blocks.ZenBlock;

LOG.info("🪨 Polishing blocks...");

// TODO add walls back once implemented
for stonetype in BLOCKS {
    val stone as ZenBlock = getBlock(stonetype);
    if (isNull(stone)) {
        LOG.error(`Blocktype *${stonetype}* is not a valid type!`);
        continue;
    }
    for color in stone.colors {
        for texturevariant in stone.textureVariants {
            // handle block names for easier translation
            stone.changeName(color, texturevariant);
            // setup oredicts for all rock types
            stone.oreItem(color, texturevariant);
            if (stone.hasFlag("--onlyBlocks") == false && ZenBlock.NO_SUB_BLOCKS.indexOf(texturevariant) == -1) {
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
        for mossyvariant in VARIANTS.mossy {
            stone.craftCovered(color, mossyvariant, mossyvariant.substring(5), "contenttweaker:moss");
        }

        changeDrop(stone, color);
    }
}

// This can't be moved into the stone class because the Dropt API is not available before the "crafttweaker" loader
function changeDrop(stone as ZenBlock, color as string) as void {
    // early return if the stone doesn't have a cobblestone variant
    if (stone.textureVariants.indexOf("cobblestone") == -1) {
        LOG.debug(`*${stone.id}* does not have required texturevariants for drop change!`);
        return;
    }
    val cobblestone as string = `contenttweaker:${stone.registryKey(color, "cobblestone")}`;
    // handle default variants
    for variant in StringArray.intersect(stone.textureVariants, VARIANTS.default) {
        replaceToolDrops(stone.itemKey(color, variant), TOOL_HAMMERS, [cobblestone]);
    }
    // handle mossy variants
    for variant in StringArray.intersect(stone.textureVariants, VARIANTS.mossy) {
        replaceToolDrops(stone.itemKey(color, variant), TOOL_HAMMERS, [cobblestone, "contenttweaker:moss"]);
    }
    // TODO reimplement lichen variants
    /* handle lichen variants
    for variant in StringArray.intersect(stone.textureVariants, lichenVariants) {
        replaceToolDrops(stone.itemKey(color, variant), TOOL_HAMMERS, [cobblestone, `contenttweaker:${variant.substring(6)}lichen`]);
    }
    */
}
