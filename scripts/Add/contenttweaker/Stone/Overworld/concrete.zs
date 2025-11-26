import mods.zenutils.StaticString;

val concretecolor as string[] = [
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
"whiteyellow"
];
val stonetype as string[] = ["concrete"];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "crackedbrick", "crackedshortbrick", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in concretecolor {
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

function registryKey(concretecolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(concretecolor + stonetype + texturevariants);
}

function stairs(concretecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(concretecolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(concretecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(concretecolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(concretecolor as string, stonetype as string) {
  val name as string = registryKey(concretecolor, stonetype, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(concretecolor, stonetype, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(concretecolor as string, stonetype as string) {
  val recipeName as string = registryKey(concretecolor, stonetype, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(concretecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(concretecolor as string, stonetype as string) {
  val recipeName as string = registryKey(concretecolor, stonetype, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(concretecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}
