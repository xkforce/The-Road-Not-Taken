#loader contenttweaker
#modloaded contenttweaker
#priority 999

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

import scripts.variables.misc.oreColors;

val colors as string[] = mergeStringArray([["camouflage"], oreColors]);

for dye in colors {
    var c as string = dye + "dyeblock";
    var block = VanillaFactory.createBlock(c.toLowerCase(), <blockmaterial:rock>);
    block.setBlockHardness(3.0);
    block.setBlockResistance(15.0);
    block.setToolClass("pickaxe");
    block.setToolLevel(0);
    block.creativeTab = <creativetab:trnt.colored>;
    block.register();
}