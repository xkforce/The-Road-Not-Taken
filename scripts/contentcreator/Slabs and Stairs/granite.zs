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
    GenericBlock.createStairs(color ~ "granitestairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "granitebrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "granitechiseledbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "granitecobblestonestairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "granitecrackedbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "granitecrackedshortbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "granitepolishedstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createStairs(color ~ "graniteshortbrickstairs", <blockstate:minecraft:stone_stairs>).register();
    GenericBlock.createSlab(rock, color ~ "graniteslab").register();
    GenericBlock.createSlab(rock, color ~ "granitebrickslab").register();
    GenericBlock.createSlab(rock, color ~ "granitechiseledbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "granitecobblestoneslab").register();
    GenericBlock.createSlab(rock, color ~ "granitecrackedbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "granitecrackedshortbrickslab").register();
    GenericBlock.createSlab(rock, color ~ "granitepolishedslab").register();
    GenericBlock.createSlab(rock, color ~ "graniteshortbrickslab").register();
}
































 
