import mods.zenutils.StaticString;

val rutilecolor as string[] = [
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
val stonetype as string[] = ["rutile"];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "crackedbrick", "crackedshortbrick", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in rutilecolor {
  for s in stonetype {
    for t in texturevariants {
      stairs(c, s, t);
      slab(c, s, t);
    }
    chiseledbrick(c, s);
    brick(c, s);
    polished(c, s);
  }
}

function registryKey(rutilecolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(rutilecolor + stonetype + texturevariants);
}

function stairs(rutilecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(rutilecolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(rutilecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(rutilecolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(rutilecolor as string, stonetype as string) {
  val name as string = registryKey(rutilecolor, stonetype, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(rutilecolor, stonetype, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(rutilecolor as string, stonetype as string) {
  val recipeName as string = registryKey(rutilecolor, stonetype, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(rutilecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(rutilecolor as string, stonetype as string) {
  val recipeName as string = registryKey(rutilecolor, stonetype, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(rutilecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}
