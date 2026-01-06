#loader contenttweaker
#modloaded contenttweaker
#priority 100

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

import scripts.variables.misc.oreColors;

val colors as string[] = mergeStringArray([["camouflage"], oreColors]);

for dye in colors {
    var block as Block = VanillaFactory.createBlock(`${dye}dyeblock`.toLowerCase(), <blockmaterial:rock>);
    block.setBlockHardness(3.0);
    block.setBlockResistance(15.0);
    block.setToolClass("pickaxe");
    block.setToolLevel(0);
    block.creativeTab = <creativetab:${modpackID}.colored>;
    block.register();
}
