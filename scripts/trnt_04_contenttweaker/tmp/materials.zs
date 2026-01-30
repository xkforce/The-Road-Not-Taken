#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

LOG.info("💎 Creating materials...");

static baseMaterials as string[] = [
    "amethyst", "aquamarine", "bismuth", "blackdiamond", "chocolatediamond", "citrine", "hepatizon",
    "moonstone", "morganite", "opal", "peridot", "ruby", "sapphire", "topaz", "zircon",
];

for material in baseMaterials {
    var base as Item = VanillaFactory.createItem(material);
    if (baseMaterials.indexOf(material) == 0) {
        COT_UTILS.createCreativeTabWithItem(`${MODPACK.id}.materials`, base);
    }
    base.creativeTab = COT_UTILS.creativeTab;
    base.beaconPayment = true;
    base.register();

    COT_UTILS.createItem(`${material}nugget`);
    COT_UTILS.createItem(`${material}plate`);
    ITEM_COUNTER.add(3);
}

// TODO relocate to separate file
for id, mat in MATERIAL_REGISTRY {
    mat.registerCot();
}
