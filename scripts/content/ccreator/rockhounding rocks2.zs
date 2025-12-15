#loader preinit
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;
import mods.zenutils.StaticString;

val rock = Mat.rock();
val color as string[] = [
"blackhardenedclay",
"bluehardenedclay",
"brownhardenedclay",
"cyanhardenedclay",
"grayhardenedclay",
"greenhardenedclay",
"lightbluehardenedclay",
"lightgrayhardenedclay",
"limehardenedclay",
"magentahardenedclay",
"orangehardenedclay",
"pinkhardenedclay",
"purplehardenedclay",
"redhardenedclay",
"whitehardenedclay",
"yellowhardenedclay",
"hardenedclay"
];
val stonetype as string[] = [""];
val texturevariants as string[] = ["", "brick", "crackedbrick", "crackedshortbrick", "polished", "shortbrick"];

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

