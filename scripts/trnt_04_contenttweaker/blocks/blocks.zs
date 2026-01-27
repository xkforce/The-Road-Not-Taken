#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

import scripts.trnt_02_setup.classes.zen_blocks.ZenBlock;

LOG.info("🥌 Creating colored blocks...");

static COT_REGISTRY as string[] = [];

for stonetype in BLOCKS {
    val stone as ZenBlock = getBlock(stonetype);
    if (isNull(stone)) {
        LOG.error(`Block *${stonetype}* is not a valid block type!`);
        continue;
    }
    var check as bool = true;
    for color in stone.colors {
        for texturevariant in stone.textureVariants {
            if (stone.hasReplacement(color, texturevariant)) {
                LOG.debug(`🪨 Skipping block *${stone.getName()}* with color *${color}* and texturevariant *${texturevariant}* because it has a replacement.`);
                continue;
            }
            val base as string = stone.registryKey(color, texturevariant);
            if (COT_REGISTRY.contains(base)) {
                LOG.error(`Block *${stonetype}* with color *${color}* and texturevariant *${texturevariant}* already exists in ContentTweaker!`);
                continue;
            }
            var newBlock as Block = VanillaFactory.createBlock(base, <blockmaterial:${stone.material}>);
            if (check) {
                // TODO: add creative tab logic
                check = false;
            }
            newBlock.setBlockHardness(stone.hardness);
            newBlock.setBlockResistance(stone.resistance);
            if (stone.hasFlag("--transparent")) {
                newBlock.blockLayer = "TRANSLUCENT";
                newBlock.lightOpacity = 0;
                newBlock.translucent = true;
            }
            if (stone.hasFlag("--gravity")) {
                newBlock.setGravity(true);
            }
            newBlock.setToolClass("pickaxe");
            newBlock.setToolLevel(stone.toolLevel);
            newBlock.register();

            COT_REGISTRY.add(base);
            BLOCK_COUNTER.increment();
        }
    }
}
