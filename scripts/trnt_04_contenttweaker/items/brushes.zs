#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

LOG.info("🖌️ Creating paintbrushes...");

static brushes as string[] = StringArray.merge([["empty"], MC_COLOR.colors]);

for brush in brushes {
    val itemName as string = `${brush}paintbrush`;
    var item as Item = VanillaFactory.createItem(itemName);
    if (brushes.indexOf(brush) == 0) {
        COT_UTILS.createCreativeTabWithItem(`${MODPACK.id}.paintbrushes`, item);
    }
    item.creativeTab = COT_UTILS.creativeTab;
    item.maxStackSize = 1;
    item.maxDamage = 648;
    item.register();
    ITEM_COUNTER.increment();
}
COT_UTILS.resetCreativeTab();
