#loader contenttweaker
#priority 1

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val colors as string[] = StringArray.merge([["camouflage"], MC_COLOR.colors]);

for dye in colors {
    var block as Block = VanillaFactory.createBlock(`${dye}dyeblock`, <blockmaterial:clay>);
    block.setBlockHardness(3.0);
    block.setBlockResistance(15.0);
    block.setToolClass("pickaxe");
    block.setToolLevel(0);
    block.creativeTab = <creativetab:${MODPACK.id}.colored>;
    block.register();
    BLOCK_COUNTER.increment();
}
COT_UTILS.resetCreativeTab();
