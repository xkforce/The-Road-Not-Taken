#loader preinit
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;
val rock = Mat.rock();


val colors as string[] = [
"black",
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
"blue",
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
"brown",
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
"cyan",
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
"gray",
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
"green",
"greenlightblue",
"greenlightgray",
"greenlime",
"greenmagenta",
"greenorange",
"greenpink",
"greenpurple",
"greenred",
"greenyellow",
"lightblue",
"lightbluelightgray",
"lightbluelime",
"lightbluemagenta",
"lightblueorange",
"lightbluepink",
"lightbluepurple",
"lightbluered",
"lightbluewhite",
"lightblueyellow",
"lightgray",
"lightgraylime",
"lightgraymagenta",
"lightgrayorange",
"lightgraypink",
"lightgraypurple",
"lightgrayred",
"lightgraywhite",
"lightgrayyellow",
"lime",
"limemagenta",
"limeorange",
"limepink",
"limepurple",
"limered",
"limewhite",
"limeyellow",
"magenta",
"magentaorange",
"magentapink",
"magentapurple",
"magentared",
"magentawhite",
"magentayellow",
"orange",
"orangepink",
"orangepurple",
"orangered",
"orangewhite",
"orangeyellow",
"pink",
"pinkred",
"pinkwhite",
"pinkyellow",
"purple",
"purplered",
"purplewhite",
"purpleyellow",
"red",
"white",
"whiteyellow",
"yellow"
];

for color in colors {
    GenericBlock.createStairs(color ~ "venustonestairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "venustonebrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "venustonechiseledbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "venustonecrackedbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "venustonecrackedshortbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "venustonepolishedstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "venustoneshortbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createSlab(rock, color ~ "venustoneslab").register();
    GenericBlock.createSlab(rock, color ~ "venustonebrickslab").register();
    GenericBlock.createSlab(rock, color ~ "venustonechiseledbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "venustonecrackedbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "venustonecrackedshortbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "venustonepolishedslab").register();
    GenericBlock.createSlab(rock, color ~ "venustoneshortbrickslab").register();
}
































 
