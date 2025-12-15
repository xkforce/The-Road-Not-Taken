#loader preinit
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;
import mods.zenutils.StaticString;

val rock = Mat.rock();
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
val stonetype as string[] = [""];
val texturevariants as string[] = ["", "brick", "cobblestone", "crackedbrick", "crackedshortbrick", "lichenbrown", "lichenorange", "lichenred", "lichenyellow", "mossybrick", "mossychiseledbrick", "mossycobblestone", "mossypolished", "mossyshortbrick", "polished", "shortbrick"];

for c in color {
  for s in stonetype {
    for t in texturevariants {
      val base as string = registryKey(c, s, t);
      val stair as string = base + "stairs";
      val slab as string = base + "slab";
      GenericBlock.createStairs(stair, <blockstate:minecraft:stone_stairs>).register();
      GenericBlock.createSlab(rock, slab).register();
    }
  }
}

function registryKey(color as string, stonetype as string, texturevariant as string) as string {
  return StaticString.trim(color + stonetype + texturevariant);
}

