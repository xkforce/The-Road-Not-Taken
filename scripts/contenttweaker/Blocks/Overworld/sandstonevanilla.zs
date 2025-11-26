#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val color as string[] = [
""
];
val stonetype as string[] = [
"sandstone"
];
val texturevariant as string[] = [
"archerleft",
"archerright",
"armsdown",
"armsup",
"axeleft",
"axeright",
"bladeleft",
"bladeright",
"brokenheart",
"carvedskeleton",
"carvedzombie",
"chestleft",
"chestright",
"chibicreeperleft",
"chibicreeperright",
"chiseled",
"cut",
"dogleft",
"dogright",
"explorerleft",
"explorerright",
"fire",
"fishingrodleft",
"fishingrodright",
"friend",
"ghast",
"guster",
"heart",
"miner",
"mourner",
"potion",
"polished",
"prize",
"sheaf",
"shelter",
"slimeleft",
"slimeright",
"swirlcb",
"swirlccb",
"swirlcct",
"swirlct",
"turtleleft",
"turtleright",
"waveleft",
"waveright"
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







