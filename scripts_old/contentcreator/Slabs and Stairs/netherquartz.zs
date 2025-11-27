#loader preinit
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;
import mods.zenutils.StaticString;

val rock = Mat.rock();
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
"purple",
"red",
"yellow"
];
val stonetype as string[] = ["netherquartz"];
val texturevariants as string[] = [" ", "chiseled", "pillar", "smooth"];

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





