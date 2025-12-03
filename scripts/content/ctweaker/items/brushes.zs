#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

import scripts.functions.contenttweaker.createCreativeTabWithItem;
import scripts.functions.contenttweaker.creativeTab;

val brushes as string[] = [
    "empty",
    "red",
    "orange",
    "yellow",
    "green",
    "blue",
    "purple",
    "pink",
    "magenta",
    "brown",
    "lightblue",
    "lightgray",
    "lime",
    "gray",
    "black",
    "white",
    "cyan",
];

for brush in brushes {
    val itemName as string = brush + "paintbrush";
    var item = VanillaFactory.createItem(itemName);
    if (brushes.indexOf(brush) == 0) {
        createCreativeTabWithItem(modpackID + ".paintbrushes", item);
    }
    item.creativeTab = creativeTab;
    item.maxStackSize = 1;
    item.maxDamage = 648;
    item.register();
}