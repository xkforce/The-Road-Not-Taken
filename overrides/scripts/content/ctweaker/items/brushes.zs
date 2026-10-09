#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

import scripts.functions.contenttweaker.createCreativeTabWithItem;
import scripts.functions.contenttweaker.creativeTab;

import scripts.variables.misc.oreColors;

val brushes as string[] = mergeStringArray([["empty"], oreColors]);

for brush in brushes {
    var itemName as string = brush + "paintbrush";
    var item = VanillaFactory.createItem(itemName.toLowerCase());
    if (brushes.indexOf(brush) == 0) {
        createCreativeTabWithItem(modpackID + ".paintbrushes", item);
    }
    item.creativeTab = creativeTab;
    item.maxStackSize = 1;
    item.maxDamage = 648;
    item.register();
}
