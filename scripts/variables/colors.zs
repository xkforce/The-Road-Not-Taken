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

// mixed colors
static c100 as string[] = [
    "black", "blackblue", "blackbrown", "blackcyan", "blackgray", "blackgreen", "blacklightblue", "blackmagenta", "blackpink", "blackpurple", "blackred", "blackyellow", "blue", "bluebrown", "bluecyan", "bluegray", "bluelightblue", "bluelightgray", "bluelime", "bluemagenta", "blueorange", "bluepink", "bluepurple", "brown", "browncyan", "browngray", "browngreen", "brownlightblue", "brownlightgray", "brownlime", "brownmagenta", "brownorange", "brownpink", "brownpurple", "brownred", "brownwhite", "brownyellow", "cyan", "cyangray", "cyangreen", "cyanlightblue", "cyanlightgray", "cyanlime", "cyanmagenta", "cyanorange", "cyanpink", "cyanpurple", "cyanwhite", "cyanyellow", "gray", "graygreen", "graylightblue", "graylightgray", "graylime", "graymagenta", "grayorange", "graypink", "graypurple", "grayred", "grayyellow", "green", "greenlightblue", "greenlightgray", "greenlime", "greenmagenta", "greenorange", "greenpink", "greenpurple", "greenred", "greenyellow", "lightblue", "lightbluelightgray", "lightbluelime", "lightbluemagenta", "lightblueorange", "lightbluepink", "lightbluepurple", "lightbluered", "lightbluewhite", "lightblueyellow", "lightgray", "lightgraylime", "lightgraymagenta", "lightgrayorange", "lightgraypink", "lightgraypurple", lightgraywhite", "lightgrayred", "lightgrayyellow", "lime", "limemagenta", "limeorange", "limepink", "limepurple", "limered", "limewhite", "limeyellow", "magenta", "magentaorange", "magentapink", "magentapurple", "magentared", "magentawhite", "magentayellow", "orange", "orangepink", "orangepurple", "orangered", "orangewhite", "orangeyellow", "pink", "pinkred", "pinkwhite", "pinkyellow", "purple", "purplered", "purplewhite", "purpleyellow", "red", "white", "whiteyellow", "yellow"
];

// two colors
static c101 as string[] = [
    "black", "blackblue", "blackbrown", "blackcyan", "blackgray", "blackgreen", "blacklightblue", "blacklightgray", "blacklime", "blackmagenta", "blackorange", "blackpink", "blackpurple", "blackred", "blackwhite", "blackyellow", "blueblack", "blue", "bluebrown", "bluecyan", "bluegray", "bluegreen", "bluelightblue", "bluelightgray", "bluelime", "bluemagenta", "blueorange", "bluepink", "bluepurple", "bluered", "bluewhite", "blueyellow", "brownblack", "brownblue", "brown", "browncyan", "browngray", "browngreen", "brownlightblue", "brownlightgray", "brownlime", "brownmagenta", "brownorange", "brownpink", "brownpurple", "brownred", "brownwhite", "brownyellow", "cyanblack", "cyanblue", "cyanbrown", "cyan", "cyangray", "cyangreen", "cyanlightblue", "cyanlightgray", "cyanlime", "cyanmagenta", "cyanorange", "cyanpink", "cyanpurple", "cyanred", "cyanwhite", "cyanyellow", "grayblack", "grayblue", "graybrown", "graycyan", "gray", "graygreen", "graylightblue", "graylightgray", "graylime", "graymagenta", "grayorange", "graypink", "graypurple", "grayred", "graywhite", "grayyellow", "greenblack", "greenblue", "greenbrown", "greencyan", "greengray", "green", "greenlightblue", "greenlightgray", "greenlime", "greenmagenta", "greenorange", "greenpink", "greenpurple", "greenred", "greenwhite", "greenyellow", "lightblueblack", "lightblueblue", "lightbluebrown", "lightbluecyan", "lightbluegray", "lightbluegreen", "lightblue", "lightbluelightgray", "lightbluelime", "lightbluemagenta", "lightblueorange", "lightbluepink", "lightbluepurple", "lightbluered", "lightbluewhite", "lightblueyellow", "lightgraygreenblack", "lightgraygreenblue", "lightgraygreenbrown", "lightgraygreencyan", "lightgraygreengray", "lightgraygreen", "lightgraylightblue", "lightgray", "lightgraylime", "lightgraymagenta", "lightgrayorange", "lightgraypink", "lightgraypurple", "lightgrayred", "lightgraywhite", "lightgrayyellow", "limeblack", "limeblue", "limebrown", "limecyan", "limegray", "limegreen", "limelightblue", "limelightgray", "lime", "limemagenta", "limeorange", "limepink", "limepurple", "limered", "limewhite", "limeyellow", "magentablack", "magentablue", "magentabrown", "magentacyan", "magentagray", "magentagreen", "magentalightblue", "magentalightgray", "magentalime", "magenta", "magentaorange", "magentapink", "magentapurple", "magentared", "magentawhite", "magentayellow", "orangeblack", "orangeblue", "orangebrown", "orangecyan", "orangegray", "orangegreen", "orangelightblue", "orangelightgray", "orangelime", "orangemagenta", "orange", "orangepink", "orangepurple", "orangered", "orangewhite", "orangeyellow", "pinkblack", "pinkblue", "pinkbrown", "pinkcyan", "pinkgray", "pinkgreen", "pinklightblue", "pinklightgray", "pinklime", "pinkmagenta", "pinkorange", "pink", "pinkpurple", "pinkred", "pinkwhite", "pinkyellow", "purpleblack", "purpleblue", "purplebrown", "purplecyan", "purplegray", "purplegreen", "purplelightblue", "purplelightgray", "purplelime", "purplemagenta", "purpleorange", "purplepink", "purple", "purplered", "purplewhite", "purpleyellow", "redblack", "redblue", "redbrown", "redcyan", "redgray", "redgreen", "redlightblue", "redlightgray", "redlime", "redmagenta", "redorange", "redpink", "redpurple", "red", "redwhite", "redyellow", "whiteblack", "whiteblue", "whitebrown", "whitecyan", "whitegray", "whitegreen", "whitelightblue", "whitelightgray", "whitelime", "whitemagenta", "whiteorange", "whitepink", "whitepurple", "whitered", "white", "whiteyellow", "yellowblack", "yellowblue", "yellowbrown", "yellowcyan", "yellowgray", "yellowgreen", "yellowlightblue", "yellowlightgray", "yellowlime", "yellowmagenta", "yelloworange", "yellowpink", "yellowpurple", "yellowred", "yellowwhite", "yellow"
];

// Nether Quartz
static c18 as string[] = [
    "black", "blue", "brown", "cyan", "gray", "green", "lightblue", "lightgray", "lime", "magenta", "orange", "pink", "purple", "red", "yellow"
];











