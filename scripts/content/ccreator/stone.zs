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
        for addi in stone.specialAdditions["stairs"] {
            GenericBlock.createStairs(`${addi}stairs`, <blockstate:minecraft:stone_stairs>).setStrength(stone.hardness, stone.resistance).register();
        }

        for addi in stone.specialAdditions["slab"] {
            GenericBlock.createSlab(rock, `${addi}slab`).setStrength(stone.hardness, stone.resistance).register();
        }
        /*
        for add_wall in stone.specialAdditions["wall"] {
            val base as string = stone.registryKey(add_wall[0], add_wall[1]);
            val wall as string = base + "wall";
            GenericBlock.createFence(rock, wall).setStrength(stone.hardness, stone.resistance).register();
        }
        */
        continue;
    }
    val vars as string[] = filterStringArray(stone.textureVariants, [Stone.NO_SUB_BLOCKS]);
    for texturevariant in vars {
        for color in stone.colors {
            val base as string = stone.registryKey(color, texturevariant);
                GenericBlock.createStairs(`${base}stairs`, <blockstate:minecraft:stone_stairs>).setStrength(stone.hardness, stone.resistance).register();
                GenericBlock.createSlab(rock, `${base}slab`).setStrength(stone.hardness, stone.resistance).register();
        /*
                GenericBlock.createFence(rock, `${base}wall`).setStrength(stone.hardness, stone.resistance).register();
        */
        }
    }
}
