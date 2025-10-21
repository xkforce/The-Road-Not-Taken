#loader preinit
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;
val rock = Mat.rock();


val stonetypes as string[] = [
"basanite",
"bluejasper",
"chrysocolla",
"gabbro",
"jet",
"labradorite",
"luxulyanite",
"portoro",
"slate",
"arkose",
"bronzite",
"browncarnelian",
"brownporphyry",
"ignimbrite",
"larimar",
"laterite",
"pietersite",
"scoria",
"amazonite",
"dacite",
"grayporphyry",
"graytrachyte",
"graytravertine",
"migmatite",
"pumice",
"spiderwebjasper",
"zebrajasper",
"chrysoprase",
"dunite",
"glauconite",
"greenjasper",
"greenporphyry",
"jadeite",
"kakortokite",
"rainforestjasper",
"rhodochrosite",
"serpentinite",
"zoisite",
"aplite",
"charoite",
"dumortierite",
"jasperoid",
"pinkporphyry",
"pinktrachyte",
"pinktravertine",
"purpleporphyry",
"redcarnelian",
"rhodonite",
"stichtite",
"sugilite",
"alabaster",
"jaspilite",
"mookaitejasper",
"noreenajasper",
"porcelainjasper",
"redjasper",
"redporphyry",
"redtrachyte",
"rosered",
"sunstone",
"dalmatianjasper",
"diatomite",
"felsite",
"howlite",
"mudstone",
"oceanjasper",
"yellowjasper",
"yellowporphyry",
"yellowtrachyte",
"actinolite",
"ammolite",
"apatite",
"blueschist",
"breccia",
"eclogite",
"grayschist",
"guadalupejasper",
"oolite",
"treeagate",
"umber",
"wonderstone",
"blackhardenedclay",
"bluehardenedclay",
"brownhardenedclay",
"cyanhardenedclay",
"grayhardenedclay",
"greenhardenedclay",
"lightbluehardenedclay",
"lightgrayhardenedclay",
"limehardenedclay",
"magentahardenedclay",
"orangehardenedclay",
"pinkhardenedclay",
"purplehardenedclay",
"redhardenedclay",
"whitehardenedclay",
"yellowhardenedclay",
"hardenedclay"
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
