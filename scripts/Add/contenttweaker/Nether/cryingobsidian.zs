import mods.zenutils.StaticString;
//rewritten with significant assistance by enderman

val stonetype as string[] = ["cryingobsidian"];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "cobblestone", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in cryingobsidiancolor {
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

function registryKey(cryingobsidiancolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(cryingobsidiancolor + stonetype + texturevariants);
}

function stairs(cryingobsidiancolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(cryingobsidiancolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(cryingobsidiancolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(cryingobsidiancolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(cryingobsidiancolor as string, stonetype as string) {
  val name as string = registryKey(cryingobsidiancolor, stonetype, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(cryingobsidiancolor, stonetype, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(cryingobsidiancolor as string, stonetype as string) {
  val recipeName as string = registryKey(cryingobsidiancolor, stonetype, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(cryingobsidiancolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(cryingobsidiancolor as string, stonetype as string) {
  val recipeName as string = registryKey(cryingobsidiancolor, stonetype, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(cryingobsidiancolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function smelt(cryingobsidiancolor as string, stonetype as string) {
  val name as string = registryKey(cryingobsidiancolor, stonetype, " ");
  val output = itemUtils.getItem("contenttweaker:" + name);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(cryingobsidiancolor, stonetype, "cobblestone"));
  furnace.addRecipe(output, input, 0.1);
}
