import mods.zenutils.StaticString;
//rewritten with significant assistance by enderman

val stonetype as string[] = ["basalt"];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "cobblestone", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in basaltcolor {
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

function registryKey(basaltcolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(basaltcolor + stonetype + texturevariants);
}

function stairs(basaltcolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(basaltcolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(basaltcolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(basaltcolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(basaltcolor as string, stonetype as string) {
  val name as string = registryKey(basaltcolor, stonetype, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(basaltcolor, stonetype, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(basaltcolor as string, stonetype as string) {
  val recipeName as string = registryKey(basaltcolor, stonetype, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(basaltcolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(basaltcolor as string, stonetype as string) {
  val recipeName as string = registryKey(basaltcolor, stonetype, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(basaltcolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function smelt(basaltcolor as string, stonetype as string) {
  val name as string = registryKey(basaltcolor, stonetype, " ");
  val output = itemUtils.getItem("contenttweaker:" + name);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(basaltcolor, stonetype, "cobblestone"));
  furnace.addRecipe(output, input, 0.1);
}
