import mods.zenutils.StaticString;

val apacherhyolitecolor as string[] = [
"black",
"blackblue",
"blackbrown",
"blackcyan",
"blackgray",
"blackgreen",
"blacklightblue",
"blacklightgray",
"blacklime",
"blackmagenta",
"blackorange",
"blackpink",
"blackpurple",
"blackred",
"blackwhite",
"blackyellow",
"blueblack",
"blue",
"bluebrown",
"bluecyan",
"bluegray",
"bluegreen",
"bluelightblue",
"bluelightgray",
"bluelime",
"bluemagenta",
"blueorange",
"bluepink",
"bluepurple",
"bluered",
"bluewhite",
"blueyellow",
"brownblack",
"brownblue",
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
"cyanblack",
"cyanblue",
"cyanbrown",
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
"cyanred",
"cyanwhite",
"cyanyellow",
"grayblack",
"grayblue",
"graybrown",
"graycyan",
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
"graywhite",
"grayyellow",
"greenblack",
"greenblue",
"greenbrown",
"greencyan",
"greengray",
"green",
"greenlightblue",
"greenlightgray",
"greenlime",
"greenmagenta",
"greenorange",
"greenpink",
"greenpurple",
"greenred",
"greenwhite",
"greenyellow",
"lightblueblack",
"lightblueblue",
"lightbluebrown",
"lightbluecyan",
"lightbluegray",
"lightbluegreen",
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
"lightgraygreenblack",
"lightgraygreenblue",
"lightgraygreenbrown",
"lightgraygreencyan",
"lightgraygreengray",
"lightgraygreen",
"lightgraylightblue",
"lightgray",
"lightgraylime",
"lightgraymagenta",
"lightgrayorange",
"lightgraypink",
"lightgraypurple",
"lightgrayred",
"lightgraywhite",
"lightgrayyellow",
"limeblack",
"limeblue",
"limebrown",
"limecyan",
"limegray",
"limegreen",
"limelightblue",
"limelightgray",
"lime",
"limemagenta",
"limeorange",
"limepink",
"limepurple",
"limered",
"limewhite",
"limeyellow",
"magentablack",
"magentablue",
"magentabrown",
"magentacyan",
"magentagray",
"magentagreen",
"magentalightblue",
"magentalightgray",
"magentalime",
"magenta",
"magentaorange",
"magentapink",
"magentapurple",
"magentared",
"magentawhite",
"magentayellow",
"orangeblack",
"orangeblue",
"orangebrown",
"orangecyan",
"orangegray",
"orangegreen",
"orangelightblue",
"orangelightgray",
"orangelime",
"orangemagenta",
"orange",
"orangepink",
"orangepurple",
"orangered",
"orangewhite",
"orangeyellow",
"pinkblack",
"pinkblue",
"pinkbrown",
"pinkcyan",
"pinkgray",
"pinkgreen",
"pinklightblue",
"pinklightgray",
"pinklime",
"pinkmagenta",
"pinkorange",
"pink",
"pinkpurple",
"pinkred",
"pinkwhite",
"pinkyellow",
"purpleblack",
"purpleblue",
"purplebrown",
"purplecyan",
"purplegray",
"purplegreen",
"purplelightblue",
"purplelightgray",
"purplelime",
"purplemagenta",
"purpleorange",
"purplepink",
"purple",
"purplered",
"purplewhite",
"purpleyellow",
"redblack",
"redblue",
"redbrown",
"redcyan",
"redgray",
"redgreen",
"redlightblue",
"redlightgray",
"redlime",
"redmagenta",
"redorange",
"redpink",
"redpurple",
"red",
"redwhite",
"redyellow",
"whiteblack",
"whiteblue",
"whitebrown",
"whitecyan",
"whitegray",
"whitegreen",
"whitelightblue",
"whitelightgray",
"whitelime",
"whitemagenta",
"whiteorange",
"whitepink",
"whitepurple",
"whitered",
"white",
"whiteyellow",
"yellowblack",
"yellowblue",
"yellowbrown",
"yellowcyan",
"yellowgray",
"yellowgreen",
"yellowlightblue",
"yellowlightgray",
"yellowlime",
"yellowmagenta",
"yelloworange",
"yellowpink",
"yellowpurple",
"yellowred",
"yellowwhite",
"yellow"
];
val stonetype as string[] = ["apacherhyolite"];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "cobblestone", "crackedbrick", "crackedshortbrick", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in apacherhyolitecolor {
  for s in stonetype {
    for t in texturevariants {
      stairs(c, s, t);
      slab(c, s, t);
    }
    chiseledbrick(c, s);
    brick(c, s);
    polished(c, s);
    smelt(c, s);
  }
}

function registryKey(apacherhyolitecolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(apacherhyolitecolor + stonetype + texturevariants);
}

function stairs(apacherhyolitecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(apacherhyolitecolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(apacherhyolitecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(apacherhyolitecolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(apacherhyolitecolor as string, stonetype as string) {
  val name as string = registryKey(apacherhyolitecolor, stonetype, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(apacherhyolitecolor, stonetype, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(apacherhyolitecolor as string, stonetype as string) {
  val recipeName as string = registryKey(apacherhyolitecolor, stonetype, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(apacherhyolitecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(apacherhyolitecolor as string, stonetype as string) {
  val recipeName as string = registryKey(apacherhyolitecolor, stonetype, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(apacherhyolitecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function smelt(apacherhyolitecolor as string, stonetype as string) {
  val name as string = registryKey(apacherhyolitecolor, stonetype, " ");
  val output = itemUtils.getItem("contenttweaker:" + name);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(apacherhyolitecolor, stonetype, "cobblestone"));
  furnace.addRecipe(output, input, 0.1);
}
