import mods.zenutils.StaticString;

val extraterrestrialstone as string[] = [
"augite",
"diopside",
"enstatite",
"fayalite",
"forsterite",
"lunastone",
"marstone",
"mercurystone",
"oldhamite",
"orthoclase",
"orthopyroxene",
"pigeonite",
"plagioclase",
"tephroite",
"troilite",
"aegirine"
];
val texturevariants as string[] = [" ", "brick", "chiseledbrick", "cobblestone", "crackedbrick", "crackedshortbrick", "polished", "shortbrick"];
val slabs as string[] = ["brickslab"];

for c in extraterrestrialstone {
    for t in texturevariants {
      stairs(c, t);
      slab(c, t);
    }
    chiseledbrick(c);
    brick(c);
    polished(c);
    smelt(c);
}

function registryKey(extraterrestrialstone as string, texturevariants as string) as string {
  return StaticString.trim(extraterrestrialstone + texturevariants);
}

function stairs(extraterrestrialstone as string, texturevariants as string) {
  val name as string = registryKey(extraterrestrialstone, texturevariants);
  val recipeName as string = name + "stairs";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 4, [[input, null, null], [input, input, null], [input, input, input]]);
}

function slab(extraterrestrialstone as string, texturevariants as string) {
  val name as string = registryKey(extraterrestrialstone, texturevariants);
  val recipeName as string = name + "slab";
  val output = itemUtils.getItem("contentcreator:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + name);
  recipes.addShaped(recipeName, output * 6, [[input, input, input]]);
}

function chiseledbrick(extraterrestrialstone as string) {
  val name as string = registryKey(extraterrestrialstone, "chiseledbrick");
  val recipeName as string = name;
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contentcreator:" + registryKey(extraterrestrialstone, "brickslab"));
  recipes.addShaped(recipeName, output, [[input], [input]]);
}

function brick(extraterrestrialstone as string) {
  val recipeName as string = registryKey(extraterrestrialstone, "brick");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(extraterrestrialstone, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function polished(extraterrestrialstone as string) {
  val recipeName as string = registryKey(extraterrestrialstone, "polished");
  val output = itemUtils.getItem("contenttweaker:" + recipeName);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(extraterrestrialstone, " "));
  recipes.addShaped(recipeName, output * 4, [[input, input], [input, input]]);
}

function smelt(extraterrestrialstone as string) {
  val name as string = registryKey(extraterrestrialstone, " ");
  val output = itemUtils.getItem("contenttweaker:" + name);
  val input = itemUtils.getItem("contenttweaker:" + registryKey(extraterrestrialstone, "cobblestone"));
  furnace.addRecipe(output, input, 0.1);
}
