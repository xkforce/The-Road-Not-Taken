#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val color as string[] = [
"black",
"blue",
"brown",
"cyan",
"gray",
"green",
"lightblue",
"lightgray",
"lime",
"magenta",
"orange",
"pink",
"red",
"yellow"
];
val stonetype as string[] = [
"netherquartz"
];
val texturevariant as string[] = [
"block",
"chiseled",
"pillar"
];

for c in color {
  for s in stonetype {
    for t in texturevariant {
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







