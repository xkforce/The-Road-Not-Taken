#loader preinit contenttweaker crafttweaker
#priority 10000

// 12 black variants
static black as string[] = [
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
    "blackyellow"
];

// 11 blue variants
static blue as string[] = [
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
    "bluepurple"
];

// 14 brown variants
static brown as string[] = [
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
    "brownyellow"
];

// 12 cyan variants
static cyan as string[] = [
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
    "cyanyellow"
];

// 11 gray variants
static gray as string[] = [
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
    "grayyellow"
];

// 10 green variants
static green as string[] = [
    "green",
    "greenlightblue",
    "greenlightgray",
    "greenlime",
    "greenmagenta",
    "greenorange",
    "greenpink",
    "greenpurple",
    "greenred",
    "greenyellow"
];

// 10 lightblue variants
static lightblue as string[] = [
    "lightblue",
    "lightbluelightgray",
    "lightbluelime",
    "lightbluemagenta",
    "lightblueorange",
    "lightbluepink",
    "lightbluepurple",
    "lightbluered",
    "lightbluewhite",
    "lightblueyellow"
];

// 9 lightgray variants
static lightgray as string[] = [
    "lightgray",
    "lightgraylime",
    "lightgraymagenta",
    "lightgrayorange",
    "lightgraypink",
    "lightgraypurple",
    "lightgrayred",
    "lightgraywhite",
    "lightgrayyellow"
];

// 8 lime variants
static lime as string[] = [
    "lime",
    "limemagenta",
    "limeorange",
    "limepink",
    "limepurple",
    "limered",
    "limewhite",
    "limeyellow"
];

// 7 magenta variants
static magenta as string[] = [
    "magenta",
    "magentaorange",
    "magentapink",
    "magentapurple",
    "magentared",
    "magentawhite",
    "magentayellow"
];

// 6 orange variants
static orange as string[] = [
    "orange",
    "orangepink",
    "orangepurple",
    "orangered",
    "orangewhite",
    "orangeyellow"
];

// 4 pink variants
static pink as string[] = [
    "pink",
    "pinkred",
    "pinkwhite",
    "pinkyellow"
];

// 4 purple variants
static purple as string[] = [
    "purple",
    "purplered",
    "purplewhite",
    "purpleyellow"
];

// 1 red variant
static red as string[] = [
    "red"
];

// 2 white variants
static white as string[] = [
    "white",
    "whiteyellow"
];

// 1 yellow variant
static yellow as string[] = [
    "yellow"
];

static all as string[] = mergeStringArray([
    black, blue, brown, cyan,
    gray, green, lightblue, lightgray,
    lime, magenta, orange, pink,
    purple, red, white, yellow
]);

static none as string[] = [" "];

// these come directly from the old scripts and may be translated into the new format as needed

// Andesite
static c123 as string[] = [
    "black", "blackblue", "blackbrown", "blackcyan", "blackgray", "blackgreen", "blacklightblue", "blackmagenta", "blackpink", "blackpurple", "blackred", "blackyellow", "blue", "bluebrown", "bluecyan", "bluegray", "bluelightblue", "bluelightgray", "bluelime", "bluemagenta", "blueorange", "bluepink", "bluepurple", "brown", "browncyan", "browngray", "browngreen", "brownlightblue", "brownlightgray", "brownlime", "brownmagenta", "brownorange", "brownpink", "brownpurple", "brownred", "brownwhite", "brownyellow", "cyan", "cyangray", "cyangreen", "cyanlightblue", "cyanlightgray", "cyanlime", "cyanmagenta", "cyanorange", "cyanpink", "cyanpurple", "cyanwhite", "cyanyellow", "gray", "graygreen", "graylightblue", "graylightgray", "graylime", "graymagenta", "grayorange", "graypink", "graypurple", "grayred", "grayyellow", "green", "greenlightblue", "greenlightgray", "greenlime", "greenmagenta", "greenorange", "greenpink", "greenpurple", "greenred", "greenyellow", "lightblue", "lightbluelightgray", "lightbluelime", "lightbluemagenta", "lightblueorange", "lightbluepink", "lightbluepurple", "lightbluewhite", "lightblueyellow", "lightgray", "lightgraylime", "lightgraymagenta", "lightgrayorange", "lightgraypink", "lightgraypurple", "lightgrayred", "lightgrayyellow", "lime", "limemagenta", "limeorange", "limepink", "limepurple", "limered", "limewhite", "limeyellow", "magenta", "magentaorange", "magentapink", "magentapurple", "magentared", "magentawhite", "magentayellow", "orange", "orangepink", "orangepurple", "orangered", "orangewhite", "orangeyellow", "pink", "pinkred", "pinkwhite", "pinkyellow", "purple", "purplered", "purplewhite", "purpleyellow", "red", "white", "whiteyellow", "yellow"
];

// Aventurine
static c119 as string[] = [
    "blackblue", "blackbrown", "blackcyan", "blackgray", "blackgreen", "blacklightblue", "blackmagenta", "blackpink", "blackpurple", "blackred", "blackyellow", "bluebrown", "bluecyan", "bluegray", "bluelightblue", "bluelightgray", "bluelime", "bluemagenta", "blueorange", "bluepink", "bluepurple", "browncyan", "browngray", "browngreen", "brownlightblue", "brownlightgray", "brownlime", "brownmagenta", "brownorange", "brownpink", "brownpurple", "brownred", "brownwhite", "brownyellow", "cyan", "cyangray", "cyangreen", "cyanlightblue", "cyanlightgray", "cyanlime", "cyanmagenta", "cyanorange", "cyanpink", "cyanpurple", "cyanwhite", "cyanyellow", "gray", "graygreen", "graylightblue", "graylightgray", "graylime", "graymagenta", "grayorange", "graypink", "graypurple", "grayred", "grayyellow", "greenlightblue", "greenlightgray", "greenlime", "greenmagenta", "greenorange", "greenpink", "greenpurple", "greenred", "greenyellow", "lightblue", "lightbluelightgray", "lightbluelime", "lightbluemagenta", "lightblueorange", "lightbluepink", "lightbluepurple", "lightbluered", "lightbluewhite", "lightblueyellow", "lightgray", "lightgraylime", "lightgraymagenta", "lightgrayorange", "lightgraypink", "lightgraypurple", "lightgrayred", "lightgraywhite", "lightgrayyellow", "lime", "limemagenta", "limeorange", "limepink", "limepurple", "limered", "limewhite", "limeyellow", "magenta", "magentaorange", "magentapink", "magentapurple", "magentared", "magentawhite", "magentayellow", "orange", "orangepink", "orangepurple", "orangered", "orangewhite", "orangeyellow", "pink", "pinkred", "pinkwhite", "pinkyellow", "purple", "purplered", "purplewhite", "purpleyellow", "white", "whiteyellow"
];

// Concrete, Crying Obsidian
static c109 as string[] = [
    "blackblue", "blackbrown", "blackcyan", "blackgray", "blackgreen", "blacklightblue", "blackmagenta", "blackpink", "blackpurple", "blackred", "blackyellow", "bluebrown", "bluecyan", "bluegray", "bluelightblue", "bluelightgray", "bluelime", "bluemagenta", "blueorange", "bluepink", "bluepurple", "browncyan", "browngray", "browngreen", "brownlightblue", "brownlightgray", "brownlime", "brownmagenta", "brownorange", "brownpink", "brownpurple", "brownred", "brownwhite", "brownyellow", "cyangray", "cyangreen", "cyanlightblue", "cyanlightgray", "cyanlime", "cyanmagenta", "cyanorange", "cyanpink", "cyanpurple", "cyanwhite", "cyanyellow", "graygreen", "graylightblue", "graylightgray", "graylime", "graymagenta", "grayorange", "graypink", "graypurple", "grayred", "grayyellow", "greenlightblue", "greenlightgray", "greenlime", "greenmagenta", "greenorange", "greenpink", "greenpurple", "greenred", "greenyellow", "lightbluelightgray", "lightbluelime", "lightbluemagenta", "lightblueorange", "lightbluepink", "lightbluepurple", "lightbluered", "lightbluewhite", "lightblueyellow", "lightgraylime", "lightgraymagenta", "lightgrayorange", "lightgraypink", "lightgraypurple", "lightgrayred", "lightgraywhite", "lightgrayyellow", "limemagenta", "limeorange", "limepink", "limepurple", "limered", "limewhite", "limeyellow", "magentaorange", "magentapink", "magentapurple", "magentared", "magentawhite", "magentayellow", "orangepink", "orangepurple", "orangered", "orangewhite", "orangeyellow", "pinkred", "pinkwhite", "pinkyellow", "purplered", "purplewhite", "purpleyellow", "whiteyellow"
];

// Dacite, Diorite, Granite, Obsidian, Prismarine, Flavolite, Purpur
static c124 as string[] = [
    "black", "blackblue", "blackbrown", "blackcyan", "blackgray", "blackgreen", "blacklightblue", "blackmagenta", "blackpink", "blackpurple", "blackred", "blackyellow", "blue", "bluebrown", "bluecyan", "bluegray", "bluelightblue", "bluelightgray", "bluelime", "bluemagenta", "blueorange", "bluepink", "bluepurple", "brown", "browncyan", "browngray", "browngreen", "brownlightblue", "brownlightgray", "brownlime", "brownmagenta", "brownorange", "brownpink", "brownpurple", "brownred", "brownwhite", "brownyellow", "cyan", "cyangray", "cyangreen", "cyanlightblue", "cyanlightgray", "cyanlime", "cyanmagenta", "cyanorange", "cyanpink", "cyanpurple", "cyanwhite", "cyanyellow", "gray", "graygreen", "graylightblue", "graylightgray", "graylime", "graymagenta", "grayorange", "graypink", "graypurple", "grayred", "grayyellow", "green", "greenlightblue", "greenlightgray", "greenlime", "greenmagenta", "greenorange", "greenpink", "greenpurple", "greenred", "greenyellow", "lightblue", "lightbluelightgray", "lightbluelime", "lightbluemagenta", "lightblueorange", "lightbluepink", "lightbluepurple", "lightbluewhite", "lightblueyellow", "lightgray", "lightgraylime", "lightgraymagenta", "lightgrayorange", "lightgraypink", "lightgraypurple", "lightgrayred", "lightgraywhite", "lightgrayyellow", "lime", "limemagenta", "limeorange", "limepink", "limepurple", "limered", "limewhite", "limeyellow", "magenta", "magentaorange", "magentapink", "magentapurple", "magentared", "magentawhite", "magentayellow", "orange", "orangepink", "orangepurple", "orangered", "orangewhite", "orangeyellow", "pink", "pinkred", "pinkwhite", "pinkyellow", "purple", "purplered", "purplewhite", "purpleyellow", "red", "white", "whiteyellow", "yellow"
];

// Endstone
static c124end as string[] = [
    "black", "blackblue", "blackbrown", "blackcyan", "blackgray", "blackgreen", "blacklightblue", "blackmagenta", "blackpink", "blackpurple", "blackred", "blackyellow", "blue", "bluebrown", "bluecyan", "bluegray", "bluelightblue", "bluelightgray", "bluelime", "bluemagenta", "blueorange", "bluepink", "bluepurple", "brown", "browncyan", "browngray", "browngreen", "brownlightblue", "brownlightgray", "brownlime", "brownmagenta", "brownorange", "brownpink", "brownpurple", "brownred", "brownwhite", "brownyellow", "cyan", "cyangray", "cyangreen", "cyanlightblue", "cyanlightgray", "cyanlime", "cyanmagenta", "cyanorange", "cyanpink", "cyanpurple", "cyanwhite", "cyanyellow", "gray", "graygreen", "graylightblue", "graylightgray", "graylime", "graymagenta", "grayorange", "graypink", "graypurple", "grayred", "grayyellow", "green", "greenlightblue", "greenlightgray", "greenlime", "greenmagenta", "greenorange", "greenpink", "greenpurple", "greenred", "greenyellow", "lightblue", "lightbluelightgray", "lightbluelime", "lightbluemagenta", "lightblueorange", "lightbluepink", "lightbluepurple", "lightbluered", "lightbluewhite", "lightblueyellow", "lightgray", "lightgraylime", "lightgraymagenta", "lightgrayorange", "lightgraypink", "lightgraypurple", "lightgrayred", "lightgraywhite", "lightgrayyellow", "lime", "limemagenta", "limeorange", "limepink", "limepurple", "limered", "limewhite", "limeyellow", "magenta", "magentaorange", "magentapink", "magentapurple", "magentared", "magentawhite", "magentayellow", "orange", "orangepink", "orangepurple", "orangered", "orangewhite", "orangeyellow", "pink", "pinkred", "pinkwhite", "pinkyellow", "purple", "purplered", "purplewhite", "purpleyellow", "red", "white", "yellow"
];

// Umbralith, Violecite, Netherrack, Netherstone, Basalt, Cythereastone, Rutile, Venustone
static c125 as string[] = [
    "black", "blackblue", "blackbrown", "blackcyan", "blackgray", "blackgreen", "blacklightblue", "blackmagenta", "blackpink", "blackpurple", "blackred", "blackyellow", "blue", "bluebrown", "bluecyan", "bluegray", "bluelightblue", "bluelightgray", "bluelime", "bluemagenta", "blueorange", "bluepink", "bluepurple", "brown", "browncyan", "browngray", "browngreen", "brownlightblue", "brownlightgray", "brownlime", "brownmagenta", "brownorange", "brownpink", "brownpurple", "brownred", "brownwhite", "brownyellow", "cyan", "cyangray", "cyangreen", "cyanlightblue", "cyanlightgray", "cyanlime", "cyanmagenta", "cyanorange", "cyanpink", "cyanpurple", "cyanwhite", "cyanyellow", "gray", "graygreen", "graylightblue", "graylightgray", "graylime", "graymagenta", "grayorange", "graypink", "graypurple", "grayred", "grayyellow", "green", "greenlightblue", "greenlightgray", "greenlime", "greenmagenta", "greenorange", "greenpink", "greenpurple", "greenred", "greenyellow", "lightblue", "lightbluelightgray", "lightbluelime", "lightbluemagenta", "lightblueorange", "lightbluepink", "lightbluepurple", "lightbluered", "lightbluewhite", "lightblueyellow", "lightgray", "lightgraylime", "lightgraymagenta", "lightgrayorange", "lightgraypink", "lightgraypurple", "lightgrayred", "lightgraywhite", "lightgrayyellow", "lime", "limemagenta", "limeorange", "limepink", "limepurple", "limered", "limewhite", "limeyellow", "magenta", "magentaorange", "magentapink", "magentapurple", "magentared", "magentawhite", "magentayellow", "orange", "orangepink", "orangepurple", "orangered", "orangewhite", "orangeyellow", "pink", "pinkred", "pinkwhite", "pinkyellow", "purple", "purplered", "purplewhite", "purpleyellow", "red", "white", "whiteyellow", "yellow"
];

// Nether Quartz
static c18 as string[] = [
    "black", "blue", "brown", "cyan", "gray", "green", "lightblue", "lightgray", "lime", "magenta", "orange", "pink", "purple", "red", "yellow"
];

// Wool
static c112 as string[] = [
    "blackblue", "blackbrown", "blackcyan", "blackgray", "blackgreen", "blacklightblue", "blackmagenta", "blackpink", "blackpurple", "blackred", "blackyellow", "bluebrown", "bluecyan", "bluegray", "bluelightblue", "bluelightgray", "bluelime", "bluemagenta", "blueorange", "bluepink", "bluepurple", "browncyan", "browngray", "browngreen", "brownlightblue", "brownlightgray", "brownlime", "brownmagenta", "brownorange", "brownpink", "brownpurple", "brownred", "brownwhite", "brownyellow", "cyangray", "cyangreen", "cyanlightblue", "cyanlightgray", "cyanlime", "cyanmagenta", "cyanorange", "cyanpink", "cyanpurple", "cyanwhite", "cyanyellow", "graygreen", "graylightblue", "graylightgray", "graylime", "graymagenta", "grayorange", "graypink", "graypurple", "grayred", "grayyellow", "greenlightblue", "greenlightgray", "greenlime", "greenmagenta", "greenorange", "greenpink", "greenpurple", "greenred", "greenyellow", "lightbluelightgray", "lightbluelime", "lightbluemagenta", "lightblueorange", "lightbluepink", "lightbluepurple", "lightbluered", "lightbluewhite", "lightblueyellow", "lightgraylime", "lightgraymagenta", "lightgrayorange", "lightgraypink", "lightgraypurple", "lightgrayred", "lightgraywhite", "lightgrayyellow", "limemagenta", "limeorange", "limepink", "limepurple", "limered", "limewhite", "limeyellow", "magentaorange", "magentapink", "magentapurple", "magentared", "magentawhite", "magentayellow", "orangepink", "orangepurple", "orangered", "orangewhite", "orangeyellow", "pinkred", "pinkwhite", "pinkyellow", "purplered", "purplewhite", "purpleyellow", "whiteyellow"
];