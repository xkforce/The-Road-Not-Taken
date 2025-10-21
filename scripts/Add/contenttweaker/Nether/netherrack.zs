import mods.zenutils.StaticString;
//rewritten with significant assistance by enderman

val stonetype as string[] = ["netherrack"];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "cobblestone", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in netherrackcolor {
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

function registryKey(netherrackcolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(netherrackcolor + stonetype + texturevariants);
}

function stairs(netherrackcolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(netherrackcolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(netherrackcolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(netherrackcolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(netherrackcolor as string, stonetype as string) {
  val name as string = registryKey(netherrackcolor, stonetype, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(netherrackcolor, stonetype, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(netherrackcolor as string, stonetype as string) {
  val recipeName as string = registryKey(netherrackcolor, stonetype, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(netherrackcolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(netherrackcolor as string, stonetype as string) {
  val recipeName as string = registryKey(netherrackcolor, stonetype, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(netherrackcolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function smelt(netherrackcolor as string, stonetype as string) {
  val name as string = registryKey(netherrackcolor, stonetype, " ");
  val output = itemUtils.getItem("contenttweaker:" + name);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(netherrackcolor, stonetype, "cobblestone"));
  furnace.addRecipe(output, input, 0.1);
}
