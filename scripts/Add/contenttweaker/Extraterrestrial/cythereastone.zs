import mods.zenutils.StaticString;
//rewritten with significant assistance by enderman

val stonetype as string[] = ["cythereastone"];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "cobblestone", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in cythereastonecolor {
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

function registryKey(cythereastonecolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(cythereastonecolor + stonetype + texturevariants);
}

function stairs(cythereastonecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(cythereastonecolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(cythereastonecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(cythereastonecolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(cythereastonecolor as string, stonetype as string) {
  val name as string = registryKey(cythereastonecolor, stonetype, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(cythereastonecolor, stonetype, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(cythereastonecolor as string, stonetype as string) {
  val recipeName as string = registryKey(cythereastonecolor, stonetype, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(cythereastonecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(cythereastonecolor as string, stonetype as string) {
  val recipeName as string = registryKey(cythereastonecolor, stonetype, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(cythereastonecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function smelt(cythereastonecolor as string, stonetype as string) {
  val name as string = registryKey(cythereastonecolor, stonetype, " ");
  val output = itemUtils.getItem("contenttweaker:" + name);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(cythereastonecolor, stonetype, "cobblestone"));
  furnace.addRecipe(output, input, 0.1);
}
