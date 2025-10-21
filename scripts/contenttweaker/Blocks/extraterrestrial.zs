#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val color as string[] = [
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
val stonetype as string[] = [
""
];
val texturevariant as string[] = [
"",
"bricks",
"chiseledbricks",
"cobblestone",
"debossed",
"polished",
"shortbricks"
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







