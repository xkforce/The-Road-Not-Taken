#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

import scripts.functions.contenttweaker.createCreativeTabWithItem;
import scripts.functions.contenttweaker.creativeTab;

import scripts.variables.misc.oreColors;

for brush in mergeStringArray([["empty"], oreColors]) {
    val itemName as string = brush.toLowerCase() + "paintbrush";
    var item = VanillaFactory.createItem(itemName);
    if (brushes.indexOf(brush) == 0) {
        createCreativeTabWithItem(modpackID + ".paintbrushes", item);
    }
    item.creativeTab = creativeTab;
    item.maxStackSize = 1;
    item.maxDamage = 648;
    item.register();
}