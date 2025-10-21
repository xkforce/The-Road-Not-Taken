import mods.zenutils.StaticString;
//rewritten with significant assistance by enderman

val stonetype as string[] = ["aventurine"];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "cobblestone", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in aventurinecolor {
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

function registryKey(aventurinecolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(aventurinecolor + stonetype + texturevariants);
}

function stairs(aventurinecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(aventurinecolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(aventurinecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(aventurinecolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(aventurinecolor as string, stonetype as string) {
  val name as string = registryKey(aventurinecolor, stonetype, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(aventurinecolor, stonetype, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(aventurinecolor as string, stonetype as string) {
  val recipeName as string = registryKey(aventurinecolor, stonetype, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(aventurinecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(aventurinecolor as string, stonetype as string) {
  val recipeName as string = registryKey(aventurinecolor, stonetype, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(aventurinecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function smelt(aventurinecolor as string, stonetype as string) {
  val name as string = registryKey(aventurinecolor, stonetype, " ");
  val output = itemUtils.getItem("contenttweaker:" + name);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(aventurinecolor, stonetype, "cobblestone"));
  furnace.addRecipe(output, input, 0.1);
}
