import mods.zenutils.StaticString;
//rewritten with significant assistance by enderman

val stonetype as string[] = ["prismarine"];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in prismarinecolor {
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

function registryKey(prismarinecolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(prismarinecolor + stonetype + texturevariants);
}

function stairs(prismarinecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(prismarinecolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(prismarinecolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(prismarinecolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(prismarinecolor as string, stonetype as string) {
  val name as string = registryKey(prismarinecolor, stonetype, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(prismarinecolor, stonetype, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(prismarinecolor as string, stonetype as string) {
  val recipeName as string = registryKey(prismarinecolor, stonetype, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(prismarinecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(prismarinecolor as string, stonetype as string) {
  val recipeName as string = registryKey(prismarinecolor, stonetype, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(prismarinecolor, stonetype, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}


