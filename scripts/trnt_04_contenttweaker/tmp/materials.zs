#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

LOG.info("💎 Creating materials...");

static baseMaterials as string[] = [
    "amethyst", "aquamarine", "bismuth", "blackdiamond", "bronze", "chocolatediamond", "citrine", "electrum", "hepatizon", "iridium",
    "meteoriron", "moonstone", "morganite", "opal", "peridot", "rosegold", "ruby", "sapphire", "silver", "steel", "topaz", "tin",
    "zircon",
];

static additionalMaterials as string[] = [
    "copperplate", "diamondnugget", "diamondplate", "emeraldnugget", "emeraldplate",
    "netheritenugget", "netheriteplate",
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

for mat in additionalMaterials {
    COT_UTILS.createItem(mat);
}

for id, mat in MATERIAL_REGISTRY {
    LOG.info(`💎 Registering material *${id}*!`);
    mat.register();
}
