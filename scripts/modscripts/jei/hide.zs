#loader crafttweaker
#modloaded jei
#priority 1

import mods.jei.JEI;

val fluidsToHide as string[] = [
    "sand",
    "honey",
    "poison",
    "hot_spring_water",
    "blood",
    "nitrogen",
    "rocketfuel",
    "enrichedlava",
    "oxygen",
    "hydrogen",
    "milk",
    "liquidsulfur"
];

for f in fluidsToHide {
    val fl = fluid(f);
    if (!isNull(fl)) {
        JEI.hide(fl);
    }
}

val bucketFluids as string[] = [
    "oxygen",
    "hydrogen",
    "nitrogen",
    "hydrogen",
    "oxygen",
    "rocketfuel",
    "enrichedlava",
    "sand",
    "honey",
    "poison",
    "hot_spring_water",
    "anti_venom",
    "beetle_juice",
    "formic_acid"
];

for fluidName in bucketFluids {
    if (!isNull(fluid(fluidName))) {
        JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: fluidName, Amount: 1000}), true);
    }
}

JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 11}]}), true);
JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 157}]}));
JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 157}]}));
JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 157}]}));
