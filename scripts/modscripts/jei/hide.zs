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
    "slop",
    "sand",
    "honey",
    "poison",
    "hot_spring_water",
    "anti_venom",
    "beetle_juice",
    "formic_acid",
    "deadblood",
];

for fluidName in bucketFluids {
    if (!isNull(fluid(fluidName))) {
        JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: fluidName, Amount: 1000}), true);
    }
}