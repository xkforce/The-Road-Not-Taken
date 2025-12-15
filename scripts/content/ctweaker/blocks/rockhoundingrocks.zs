#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val color as string[] = [
"basanite",
"bluejasper",
"chrysocolla",
"gabbro",
"jet",
"labradorite",
"luxulyanite",
"portoro",
"slate",
"arkose",
"bronzite",
"browncarnelian",
"brownporphyry",
"ignimbrite",
"larimar",
"laterite",
"pietersite",
"scoria",
"amazonite",
"dacite",
"grayporphyry",
"graytrachyte",
"graytravertine",
"migmatite",
"pumice",
"spiderwebjasper",
"zebrajasper",
"chrysoprase",
"dunite",
"glauconite",
"greenjasper",
"greenporphyry",
"jadeite",
"kakortokite",
"rainforestjasper",
"rhodochrosite",
"serpentinite",
"zoisite",
"aplite",
"charoite",
"dumortierite",
"jasperoid",
"pinkporphyry",
"pinktrachyte",
"pinktravertine",
"purpleporphyry",
"redcarnelian",
"rhodonite",
"stichtite",
"sugilite",
"alabaster",
"jaspilite",
"mookaitejasper",
"noreenajasper",
"porcelainjasper",
"redjasper",
"redporphyry",
"redtrachyte",
"rosered",
"sunstone",
"dalmatianjasper",
"diatomite",
"felsite",
"howlite",
"mudstone",
"oceanjasper",
"yellowjasper",
"yellowporphyry",
"yellowtrachyte",
"actinolite",
"ammolite",
"apatite",
"blueschist",
"breccia",
"eclogite",
"grayschist",
"guadalupejasper",
"oolite",
"treeagate",
"umber",
"wonderstone"
];
val stonetype as string[] = [
""
];
val texturevariant as string[] = [
"cobblestone",
"crackedbrick",
"crackedshortbrick",
"lichenbrown",
"lichenorange",
"lichenred",
"lichenyellow",
"mossybrick",
"mossychiseledbrick",
"mossydebossed",
"mossycobblestone",
"mossypolished",
"mossyshortbrick"
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







