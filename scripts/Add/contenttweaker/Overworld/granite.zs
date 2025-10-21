import mods.zenutils.StaticString;
//rewritten with significant assistance by enderman

val stonetype as string[] = ["granite"];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "cobblestone", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in granitecolor {
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

function registryKey(granitecolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(granitecolor + stonetype + texturevariants);
}

function stairs(granitecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(granitecolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(granitecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(granitecolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(granitecolor as string, stonetype as string) {
  val name as string = registryKey(granitecolor, stonetype, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(granitecolor, stonetype, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(granitecolor as string, stonetype as string) {
  val recipeName as string = registryKey(granitecolor, stonetype, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(granitecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(granitecolor as string, stonetype as string) {
  val recipeName as string = registryKey(granitecolor, stonetype, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(granitecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function smelt(granitecolor as string, stonetype as string) {
  val name as string = registryKey(granitecolor, stonetype, " ");
  val output = itemUtils.getItem("contenttweaker:" + name);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(granitecolor, stonetype, "cobblestone"));
  furnace.addRecipe(output, input, 0.1);
}
