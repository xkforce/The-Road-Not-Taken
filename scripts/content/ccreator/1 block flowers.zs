#loader preinit

import contentcreator.block.Block;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;
import native.net.minecraft.init.Blocks;
import native.bblsom.blocks.ICustomBlockFertile;
import native.bblsom.blocks.CustomBlockFarmland;
import crafttweaker.block.IMaterial;
import crafttweaker.world.IFacing;

val flowers = [
"blackcopperleaf", 
"blackpurplecopperleaf", 
"blackredcopperleaf", 
"bluecopperleaf", 
"bluepurplecopperleaf", 
"brownwhitecopperleaf", 
"lightbluecopperleaf", 
"limewhitecopperleaf", 
"magentacopperleaf", 
"orangecopperleaf", 
"orangeredcopperleaf", 
"orangewhitecopperleaf", 
"orangeyellowcopperleaf", 
"pinkcopperleaf", 
"purplecopperleaf", 
"purpleredcopperleaf", 
"purplewhitecopperleaf", 
"redcopperleaf", 
"whitecopperleaf", 
"yellowcopperleaf",
] as string[];

for flower in flowers {
Block.create(IMaterial.plants(), flower)
.setSubItem() # make the new block have an item
.canPlace(function(worldIn as IWorld, pos as IBlockPos) as bool {
    if(!worldIn.getBlockState(pos).isReplaceable(worldIn,pos)) return false; # = super.canPlaceBlockAt

    val soil = worldIn.getBlockState(pos.getOffset(IFacing.down(), 1)).block as native.net.minecraft.block.Block;

    if(soil instanceof ICustomBlockFertile){
        val soilC = soil as ICustomBlockFertile;
        if(soilC.getSupportsGeneralPlants())
            return true;
    }
    return soil == Blocks.GRASS || soil == Blocks.DIRT || soil == Blocks.FARMLAND || soil instanceof CustomBlockFarmland;
});
}























