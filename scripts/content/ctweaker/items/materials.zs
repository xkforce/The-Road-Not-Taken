#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

import scripts.functions.contenttweaker.createCreativeTabWithItem;
import scripts.functions.contenttweaker.createItem;
import scripts.functions.contenttweaker.creativeTab;

val materials as string[] = [
    "amethyst", "aquamarine", "blackdiamond", "bronze", "chocolatediamond", "citrine", "hepatizon",
    "electrum", "iridium", "meteoriron", "rosegold", "ruby", "sapphire", "silver", "morganite", "steel", "topaz", "tin", "zircon",
    "moonstone", "opal", "peridot", 
];

for material in materials {
    var base = VanillaFactory.createItem(material);
    if (materials.indexOf(material) == 0) {
        createCreativeTabWithItem(modpackID + ".materials", base);
    }
    base.creativeTab = creativeTab;
    base.beaconPayment = true;
    base.register();

    var nugget = VanillaFactory.createItem(material + "nugget");
    nugget.creativeTab = creativeTab;
    nugget.register();

    var plate = VanillaFactory.createItem(material + "plate");
    plate.creativeTab = creativeTab;
    plate.register();
}

val additionalMats as string[] = [
    "copperplate", "diamondnugget", "diamondplate", "emeraldnugget", "emeraldplate", "goldplate", "ironplate",
    "netheritenugget", "netheriteplate",
];

for mat in additionalMats {
    createItem(mat);
}
