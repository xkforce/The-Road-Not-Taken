#loader preinit
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;
val rock = Mat.rock();


val colors as string[] = [
"blackblue",
"blackbrown",
"blackcyan",
"blackgray",
"blackgreen",
"blacklightblue",
"blackmagenta",
"blackpink",
"blackpurple",
"blackred",
"blackyellow",
"bluebrown",
"bluecyan",
"bluegray",
"bluelightblue",
"bluelightgray",
"bluelime",
"bluemagenta",
"blueorange",
"bluepink",
"bluepurple",
"browncyan",
"browngray",
"browngreen",
"brownlightblue",
"brownlightgray",
"brownlime",
"brownmagenta",
"brownorange",
"brownpink",
"brownpurple",
"brownred",
"brownwhite",
"brownyellow",
"cyangray",
"cyangreen",
"cyanlightblue",
"cyanlightgray",
"cyanlime",
"cyanmagenta",
"cyanorange",
"cyanpink",
"cyanpurple",
"cyanwhite",
"cyanyellow",
"graygreen",
"graylightblue",
"graylightgray",
"graylime",
"graymagenta",
"grayorange",
"graypink",
"graypurple",
"grayred",
"grayyellow",
"greenlightblue",
"greenlightgray",
"greenlime",
"greenmagenta",
"greenorange",
"greenpink",
"greenpurple",
"greenred",
"greenyellow",
"lightbluelightgray",
"lightbluelime",
"lightbluemagenta",
"lightblueorange",
"lightbluepink",
"lightbluepurple",
"lightbluered",
"lightbluewhite",
"lightblueyellow",
"lightgraylime",
"lightgraymagenta",
"lightgrayorange",
"lightgraypink",
"lightgraypurple",
"lightgrayred",
"lightgraywhite",
"lightgrayyellow",
"limemagenta",
"limeorange",
"limepink",
"limepurple",
"limered",
"limewhite",
"limeyellow",
"magentaorange",
"magentapink",
"magentapurple",
"magentared",
"magentawhite",
"magentayellow",
"orangepink",
"orangepurple",
"orangered",
"orangewhite",
"orangeyellow",
"pinkred",
"pinkwhite",
"pinkyellow",
"purplered",
"purplewhite",
"purpleyellow",
"whiteyellow",
];

for color in colors {
    GenericBlock.createStairs(color ~ "hardenedclaystairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "hardenedclaybrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "hardenedclaychiseledbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "hardenedclaycobblestonestairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "hardenedclaypolishedstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "hardenedclayshortbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createSlab(rock, color ~ "hardenedclayslab").register();
    GenericBlock.createSlab(rock, color ~ "hardenedclaybrickslab").register();
    GenericBlock.createSlab(rock, color ~ "hardenedclaychiseledbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "hardenedclaycobblestoneslab").register();
    GenericBlock.createSlab(rock, color ~ "hardenedclaypolishedslab").register();
    GenericBlock.createSlab(rock, color ~ "hardenedclayshortbrickslab").register();
}
































 
