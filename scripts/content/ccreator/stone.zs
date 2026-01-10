#loader preinit
#modloaded contentcreator
#priority 110

import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;

import scripts.classes.stone.Stone;

log.info("[🚧 MODPACK_SETUP 🚧] 🪨 Creating stones via ContentCreator...");

// Walls are currently commented out as there isn't a way to create them yet.
// Instead of walls, ContentCreator creates Fences instead, which is stupid.

val rock = Mat.rock();

for stonetype in STONES {
    val stone as Stone = getStone(stonetype);
    if (isNull(stone)) {
        log.error(`Stonetype *${stonetype}* is not a valid stonetype!`);
        continue;
    }
    if (stone.hasFlag("--onlyBlocks")) {
        log.trace(`Found *--onlyBlocks* flag for ${stonetype}! No additional blocks will be added.`);
        continue;
    }
    val vars as string[] = filterStringArray(stone.textureVariants, [["chiseledbrick", "mossychiseledbrick", "debossed", "mossydebossed"]]);
    for texturevariant in vars {
        for color in stone.colors {
            val base as string = stone.registryKey(color, texturevariant);
            val hardness as float = stone.hardness;
            val resistance as float = stone.resistance;

            val stair as string = base + "stairs";
            GenericBlock.createStairs(stair, <blockstate:minecraft:stone_stairs>).setStrength(hardness, resistance).register();

            val slab as string = base + "slab";
            GenericBlock.createSlab(rock, slab).setStrength(hardness, resistance).register();

            // val wall as string = base + "wall";
            // GenericBlock.createFence(rock, wall).setStrength(hardness, resistance).register();
        }
    }
}
