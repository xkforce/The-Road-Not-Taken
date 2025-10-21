import mods.zenutils.StaticString;
//rewritten with significant assistance by enderman

val stonetype as string[] = ["netherstone"];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "cobblestone", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in netherstonecolor {
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

function registryKey(netherstonecolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(netherstonecolor + stonetype + texturevariants);
}

function stairs(netherstonecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(netherstonecolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(netherstonecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(netherstonecolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(netherstonecolor as string, stonetype as string) {
  val name as string = registryKey(netherstonecolor, stonetype, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(netherstonecolor, stonetype, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(netherstonecolor as string, stonetype as string) {
  val recipeName as string = registryKey(netherstonecolor, stonetype, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(netherstonecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(netherstonecolor as string, stonetype as string) {
  val recipeName as string = registryKey(netherstonecolor, stonetype, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(netherstonecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function smelt(netherstonecolor as string, stonetype as string) {
  val name as string = registryKey(netherstonecolor, stonetype, " ");
  val output = itemUtils.getItem("contenttweaker:" + name);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(netherstonecolor, stonetype, "cobblestone"));
  furnace.addRecipe(output, input, 0.1);
}
