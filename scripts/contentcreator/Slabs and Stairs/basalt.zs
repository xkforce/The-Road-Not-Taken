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
    GenericBlock.createStairs(color ~ "basaltstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "basaltbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "basaltchiseledbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "basaltcrackedbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "basaltcrackedshortbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "basaltpolishedstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "basaltshortbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createSlab(rock, color ~ "basaltslab").register();
    GenericBlock.createSlab(rock, color ~ "basaltbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "basaltchiseledbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "basaltcrackedbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "basaltcrackedshortbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "basaltpolishedslab").register();
    GenericBlock.createSlab(rock, color ~ "basaltshortbrickslab").register();
}































 
