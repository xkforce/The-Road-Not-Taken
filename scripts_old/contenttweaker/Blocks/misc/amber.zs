#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val bug as string[] = [
"ant",
"bee",
"wasp",
"beetle",
"grasshopper",
"dragonfly",
"damselfly",
"flea",
"fly",
"aphid",
"termite",
"mosquito",
"spider",
"moth",
"butterfly",
"gnat",
"silverfish",
"cockroach",
"cricket",
"prayingmantis",
"firefly",
"antlion",
"stickinsect",
"weevil",
"assassinbug",
"bedbug",
"earwig",
"mayfly",
"stinkbug",
"millipede",
"centipede",
"catapillar",
"mite",
"tick",
"waterstrider",
"maggot",
"ladybug",
"rolypoly",
"mealworm"
];
val linkingword as string[] = [
"in"
];
val amber as string[] = [
"amber"
];

for c in bug {
  for s in linkingword {
    for t in amber {
      val name as string = c + s + t;
      var newBlock as Block = VanillaFactory.createBlock(name, <blockmaterial:rock>);
      newBlock.setBlockHardness(1.5);
      newBlock.setBlockResistance(6.0);
      newBlock.setToolClass("pickaxe");
      newBlock.setToolLevel(0);
      newBlock.register();
    }
  }
}







