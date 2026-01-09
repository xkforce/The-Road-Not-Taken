#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

import scripts.functions.contenttweaker.createCreativeTabWithItem;
import scripts.functions.contenttweaker.createItem;
import scripts.functions.contenttweaker.creativeTab;

import scripts.variables.materials.baseMaterials;
import scripts.variables.materials.additionalMaterials;

log.info("[🚧 MODPACK_SETUP 🚧] 🪨 Creating materials via ContentTweaker...");

for material in baseMaterials {
    var base = VanillaFactory.createItem(material);
    if (baseMaterials.indexOf(material) == 0) {
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

for mat in additionalMaterials {
    createItem(mat);
}
