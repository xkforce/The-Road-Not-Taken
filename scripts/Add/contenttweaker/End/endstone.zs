import mods.zenutils.StaticString;
//rewritten with significant assistance by enderman

val stonetype as string[] = ["endstone"];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in endstonecolor {
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

function registryKey(endstonecolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(endstonecolor + stonetype + texturevariants);
}

function stairs(endstonecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(endstonecolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(endstonecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(endstonecolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(endstonecolor as string, stonetype as string) {
  val name as string = registryKey(endstonecolor, stonetype, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(endstonecolor, stonetype, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(endstonecolor as string, stonetype as string) {
  val recipeName as string = registryKey(endstonecolor, stonetype, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(endstonecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(endstonecolor as string, stonetype as string) {
  val recipeName as string = registryKey(endstonecolor, stonetype, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(endstonecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}
