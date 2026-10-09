#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

import scripts.functions.contenttweaker.createCreativeTabWithItem;
import scripts.functions.contenttweaker.creativeTab;

val tools as int[string] = {
    "steelchisel": 250,
};

for toolName, durability in tools {
    var item = VanillaFactory.createItem(toolName);
    if (tools.keys.indexOf(toolName) == 0) {
        createCreativeTabWithItem(modpackID + ".tools", item);
    }
    item.creativeTab = creativeTab;
    item.maxStackSize = 1;
    item.maxDamage = durability;
    item.register();
}
