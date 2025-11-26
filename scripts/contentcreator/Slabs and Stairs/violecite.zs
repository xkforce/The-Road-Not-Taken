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
    GenericBlock.createStairs(color ~ "violecitestairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "violecitebrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "violecitechiseledbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "violecitecrackedbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "violecitecrackedshortbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "violecitepolishedstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "violeciteshortbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createSlab(rock, color ~ "violeciteslab").register();
    GenericBlock.createSlab(rock, color ~ "violecitebrickslab").register();
    GenericBlock.createSlab(rock, color ~ "violecitechiseledbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "violecitecrackedbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "violecitecrackedshortbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "violecitepolishedslab").register();
    GenericBlock.createSlab(rock, color ~ "violeciteshortbrickslab").register();
}































 
