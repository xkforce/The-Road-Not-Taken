import mods.zenutils.StaticString;
//rewritten with significant assistance by enderman

val stonetype as string[] = ["sandstone"];
val texturevariants as string[] = [" ", "cut", "chiseled"];
val slabs as string[] = ["brickslab"];

for c in sandstonecolor {
  for s in stonetype {
    for t in texturevariants {
      stairs(c, s, t);
      slab(c, s, t);
    }
    chiseled(c, s);
    cut(c, s);
  }
}

function registryKey(sandstonecolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(sandstonecolor + stonetype + texturevariants);
}

function stairs(sandstonecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(sandstonecolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(sandstonecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(sandstonecolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function cut(sandstonecolor as string, stonetype as string) {
  val name as string = registryKey(sandstonecolor, "cut");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(sandstonecolor, "sandstoneslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function chiseled(sandstonecolor as string, stonetype as string) {
  val recipeName as string = registryKey(sandstonecolor, stonetype, "chiseled");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(sandstonecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}
