import mods.zenutils.StaticString;
//rewritten with significant assistance by enderman

val stonetype as string[] = ["purpur"];
val texturevariants as string[] = [" ", "pillar"];
val slabs as string[] = ["brickslab"];

for c in purpurcolor {
  for s in stonetype {
    for t in texturevariants {
      stairs(c, s, t);
      slab(c, s, t);
    }
    pillar(c, s);
  }
}

function registryKey(purpurcolor as string, stonetype as string, texturevariants as string) as string {
  return StaticString.trim(purpurcolor + stonetype + texturevariants);
}

function stairs(purpurcolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(purpurcolor, stonetype, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(purpurcolor as string, stonetype as string, texturevariants as string) {
  val name as string = registryKey(purpurcolor, stonetype, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}
