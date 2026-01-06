#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

import scripts.classes.stone.Stone;

log.info("[🚧 MODPACK_SETUP 🚧] 🪨 Creating stones via ContentTweaker...");

// @enderman can we implement creative tabs for these?

for stonetype in STONES {
    val stone as Stone = getStone(stonetype);
    if (isNull(stone)) {
        log.error(`Stonetype *${stonetype}* is not a valid stonetype!`);
        continue;
    }
    for color in stone.colors {
        for texturevariant in stone.textureVariants {
            val base as string = stone.registryKey(color, texturevariant);
            var newBlock as Block = VanillaFactory.createBlock(base, <blockmaterial:rock>);
            newBlock.setBlockHardness(stone.hardness);
            newBlock.setBlockResistance(stone.resistance);
            newBlock.setToolClass("pickaxe");
            newBlock.setToolLevel(0);
            newBlock.register();
        }
    }
}
