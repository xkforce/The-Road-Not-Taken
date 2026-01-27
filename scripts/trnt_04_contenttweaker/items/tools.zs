#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

static tools as int[string] = {
    "steelchisel": 250,
};

for toolName, durability in tools {
    var item as Item = VanillaFactory.createItem(toolName);
    if (tools.keys.indexOf(toolName) == 0) {
        COT_UTILS.createCreativeTabWithItem(`${MODPACK.id}.tools`, item);
    }
    item.creativeTab = COT_UTILS.creativeTab;
    item.maxStackSize = 1;
    item.maxDamage = durability;
    item.register();
    ITEM_COUNTER.increment();
}
COT_UTILS.resetCreativeTab();
