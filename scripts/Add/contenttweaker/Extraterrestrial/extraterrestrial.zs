import mods.zenutils.StaticString;
//rewritten with significant assistance by enderman

val stonetype as string[] = ["extraterrestrial"];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "cobblestone", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in extraterrestrialstones {
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

function registryKey(extraterrestrialstones as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(extraterrestrialstones + stonetype + texturevariants);
}

function stairs(extraterrestrialstones as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(extraterrestrialstones, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(extraterrestrialstones as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(extraterrestrialstones, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(extraterrestrialstones as string, stonetype as string) {
  val name as string = registryKey(extraterrestrialstones, stonetype, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(extraterrestrialstones, stonetype, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(extraterrestrialstones as string, stonetype as string) {
  val recipeName as string = registryKey(extraterrestrialstones, stonetype, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(extraterrestrialstones, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(extraterrestrialstones as string, stonetype as string) {
  val recipeName as string = registryKey(extraterrestrialstones, stonetype, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(extraterrestrialstones, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function smelt(extraterrestrialstones as string, stonetype as string) {
  val name as string = registryKey(extraterrestrialstones, stonetype, " ");
  val output = itemUtils.getItem("contenttweaker:" + name);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(extraterrestrialstones, stonetype, "cobblestone"));
  furnace.addRecipe(output, input, 0.1);
}
