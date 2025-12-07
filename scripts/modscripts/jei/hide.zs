#loader crafttweaker
#modloaded jei
#priority 1

import crafttweaker.item.IIngredient;

import mods.jei.JEI;

val fluidsToHide as IIngredient[] = [
    <liquid:sand>,
    <liquid:honey>,
    <liquid:poison>,
    <liquid:hot_spring_water>,
    <liquid:blood>,
    <liquid:nitrogen>,
    <liquid:rocketfuel>,
    <liquid:enrichedlava>,
    <liquid:oxygen>,
    <liquid:hydrogen>,
    <liquid:milk>,
];

for fluid in fluidsToHide {
    JEI.hide(fluid);
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
    JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: fluidName, Amount: 1000}), true);
}