#loader preinit
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;
val rock = Mat.rock();

    GenericBlock.createStairs("stonestairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs("smoothstonestairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs("smoothstonebrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs("smoothstoneshortbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs("smoothstonecrackedbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs("smoothstonecrackedshortbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createSlab(rock, "stoneslab").register();
    GenericBlock.createSlab(rock, "smoothstonebrickslab").register();
    GenericBlock.createSlab(rock, "smoothstoneshortbrickslab").register();
    GenericBlock.createSlab(rock, "smoothstonecrackedbrickslab").register();
    GenericBlock.createSlab(rock, "smoothstonecrackedshortbrickslab").register();






























 
