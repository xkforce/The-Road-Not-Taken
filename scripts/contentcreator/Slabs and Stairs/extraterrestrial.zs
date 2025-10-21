#loader preinit
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;
val rock = Mat.rock();


val stonetypes as string[] = [
"augite",
"diopside",
"enstatite",
"fayalite",
"forsterite",
"lunastone",
"marstone",
"mercurystone",
"oldhamite",
"orthoclase",
"orthopyroxene",
"pigeonite",
"plagioclase",
"tephroite",
"troilite",
"aegirine"
];

for stones in stonetypes {
    GenericBlock.createStairs(stones ~ "stairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(stones ~ "brickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(stones ~ "chiseledbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(stones ~ "cobblestonestairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(stones ~ "polishedstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(stones ~ "shortbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createSlab(rock, stones ~ "slab").register();
    GenericBlock.createSlab(rock, stones ~ "brickslab").register();
    GenericBlock.createSlab(rock, stones ~ "chiseledbrickslab").register();
    GenericBlock.createSlab(rock, stones ~ "cobblestoneslab").register();
    GenericBlock.createSlab(rock, stones ~ "polishedslab").register();
    GenericBlock.createSlab(rock, stones ~ "shortbrickslab").register();
}































 
