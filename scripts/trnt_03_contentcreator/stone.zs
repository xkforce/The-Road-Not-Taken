#loader contentcreator

import contentcreator.block.GenericBlock;

import scripts.trnt_02_setup.classes.zen_blocks.ZenBlock;

LOG.info("🧊 Creating block variants...");

// Walls are currently commented out as there isn't a way to create them yet.
// Instead of walls, ContentCreator creates Fences instead, which is stupid.

for stonetype in BLOCKS {
    val stone as ZenBlock = getBlock(stonetype);
    if (isNull(stone)) {
        LOG.error(`Block *${stonetype}* is not a valid stonetype!`);
        continue;
    }
    if (stone.hasFlag("--onlyBlocks")) {
        for addi in stone.specialAdditions["stairs"] {
            GenericBlock.createStairs(`${addi}stairs`, <blockstate:minecraft:stone_stairs>).setStrength(stone.hardness, stone.resistance).register();
            BLOCK_COUNTER.increment();
        }

        for addi in stone.specialAdditions["slab"] {
            GenericBlock.createSlab(<blockmaterial:${stone.material}>, `${addi}slab`).setStrength(stone.hardness, stone.resistance).register();
            BLOCK_COUNTER.increment();
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
    val vars as string[] = StringArray.filter(stone.textureVariants, [ZenBlock.NO_SUB_BLOCKS]);
    for texturevariant in vars {
        for color in stone.colors {
            val base as string = stone.registryKey(color, texturevariant);
            GenericBlock.createStairs(`${base}stairs`, <blockstate:minecraft:stone_stairs>).setStrength(stone.hardness, stone.resistance).register();
            GenericBlock.createSlab(<blockmaterial:${stone.material}>, `${base}slab`).setStrength(stone.hardness, stone.resistance).register();
        /*
            GenericBlock.createFence(rock, `${base}wall`).setStrength(stone.hardness, stone.resistance).register();
        */
            BLOCK_COUNTER.add(2);
        }
    }
}
