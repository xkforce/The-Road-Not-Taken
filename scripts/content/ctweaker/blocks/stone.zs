#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

import scripts.classes.stone.Stone;

log.info("[🚧 MODPACK_SETUP 🚧] 🪨 Creating stones via ContentTweaker...");

// @enderman can we implement creative tabs for these?

static COT_REGISTRY as string[] = [];

for stonetype in STONES {
    val stone as Stone = getStone(stonetype);
    if (isNull(stone)) {
        log.error(`Stonetype *${stonetype}* is not a valid stonetype!`);
        continue;
    }
    for color in stone.colors {
        for texturevariant in stone.textureVariants {
            if (stone.hasReplacement(color, texturevariant)) {
                log.trace(`🪨 Skipping stone *${stone.getName()}* with color *${color}* and texturevariant *${texturevariant}* because it has a replacement.`);
                continue;
            }
            val base as string = stone.registryKey(color, texturevariant);
            if (COT_REGISTRY.contains(base)) {
                log.error(`Stone *${stonetype}* with color *${color}* and texturevariant *${texturevariant}* already exists in ContentTweaker!`);
                continue;
            }
            var newBlock as Block = VanillaFactory.createBlock(base, <blockmaterial:rock>);
            newBlock.setBlockHardness(stone.hardness);
            newBlock.setBlockResistance(stone.resistance);
            if (stone.hasFlag("--transparent")) {
                newBlock.blockLayer = "TRANSLUCENT";
                newBlock.lightOpacity = 0;
                newBlock.translucent = true;
            }
            newBlock.setToolClass("pickaxe");
            newBlock.setToolLevel(stone.toolLevel);
            newBlock.register();

            COT_REGISTRY.add(base);
        }
    }
}
