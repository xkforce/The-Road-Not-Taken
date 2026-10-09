#loader preinit
#modloaded contentcreator
#priority 110

import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;

import scripts.variables.crops.edible_crops;
import scripts.variables.crops.inedible_crops;
import scripts.variables.crops.block_crops;
import scripts.variables.crops.placeable_edible_crops;
import scripts.variables.crops.placeable_inedible_crops;

val allCrops as string[] = mergeStringArray([edible_crops, inedible_crops, block_crops, placeable_edible_crops, placeable_inedible_crops]);
var cacheCrops as string[] = [];

val crops as string[] = [
    "agave",
    "alfalfa", 
    "arugala", 
    "barley", 
    "blackbeet", 
    "bullsbloodbeet", 
    "candystripebeet", 
    "orangebeet", 
    "purplebeet", 
    "sugarbeet", 
    "whitebeet", 
    "yellowbeet", 
    "blackbokchoy", 
    "greenbokchoy", 
    "orangebokchoy", 
    "purplebokchoy", 
    "redbokchoy", 
    "yellowbokchoy", 
    "whitebokchoy", 
    "bluegreenbroccoli", 
    "greenbroccoli", 
    "lavenderbroccoli", 
    "orangebroccoli", 
    "purplebroccoli", 
    "redbroccoli", 
    "whitebroccoli", 
    "yellowbroccoli", 
    "blackbrusselssprouts", 
    "greenbrusselssprouts", 
    "orangebrusselssprouts", 
    "purplebrusselssprouts", 
    "redbrusselssprouts", 
    "yellowbrusselssprouts", 
    "whitebrusselssprouts", 
    "buckwheat", 
    "blackcabbage", 
    "bluegreencabbage", 
    "greencabbage", 
    "orangecabbage", 
    "pointedcabbage", 
    "purplecabbage", 
    "redcabbage", 
    "yellowcabbage", 
    "whitecabbage", 
    "caraway", 
    "greencardamom", 
    "redcardamom", 
    "blackcarrot", 
    "lavendercarrot", 
    "purplecarrot", 
    "redcarrot", 
    "whitecarrot", 
    "yellowcarrot", 
    "cassava", 
    "blackcauliflower", 
    "broccoflower", 
    "lavendercauliflower", 
    "orangecauliflower", 
    "purplecauliflower", 
    "redcauliflower", 
    "romanescocauliflower", 
    "whitecauliflower", 
    "yellowcauliflower", 
    "celeriac", 
    "greencelery", 
    "pinkcelery", 
    "purplecelery", 
    "redcelery",
    "whitecelery", 
    "yellowcelery", 
    "greenceltuce",
    "purpleceltuce",
    "redceltuce", 
    "greenchard", 
    "orangechard", 
    "redchard", 
    "yellowchard", 
    "blackcherrytomatoes", 
    "orangecherrytomatoes", 
    "pinkcherrytomatoes", 
    "purplecherrytomatoes", 
    "redcherrytomatoes", 
    "whitecherrytomatoes", 
    "yellowcherrytomatoes", 
    "chia", 
    "chickpea", 
    "chives", 
    "cilantro", 
    "bluecollards", 
    "greencollards", 
    "purplecollards", 
    "redcollards", 
    "yellowcollards", 
    "cotton", 
    "cumin", 
    "dill", 
    "greeneggplant", 
    "orangeeggplant", 
    "purpleeggplant", 
    "purplewhitestripedeggplant", 
    "redeggplant", 
    "whiteeggplant", 
    "yelloweggplant", 
    "blackendive", 
    "greenendive", 
    "orangeendive", 
    "pinkendive", 
    "purpleendive", 
    "redendive", 
    "whiteendive", 
    "yellowendive", 
    "fenugreek", 
    "flax", 
    "blackkale", 
    "greenkale", 
    "redkale", 
    "blacklentil", 
    "greenlentil", 
    "redlentil", 
    "yellowlentil", 
    "purplegarlic", 
    "whitegarlic", 
    "ginger", 
    "jicama", 
    "blackkholrabi", 
    "greenkholrabi", 
    "orangekholrabi", 
    "purplekholrabi", 
    "redkholrabi", 
    "whitekholrabi", 
    "yellowkholrabi", 
    "fennel", 
    "leek", 
    "greenlettuce",
    "purplelettuce",
    "redlettuce", 
    "barnyardmillet", 
    "fingermillet", 
    "foxtailmillet", 
    "japanesemillet", 
    "kodomillet", 
    "pearlmillet", 
    "prosomillet", 
    "blackmustard", 
    "brownmustard", 
    "yellowmustard", 
    "okra", 
    "redonion", 
    "whiteonion", 
    "yellowonion", 
    "oats", 
    "parsley", 
    "parsnip", 
    "peanut", 
    "orangepineapple", 
    "pinkpineapple", 
    "whitepineapple", 
    "yellowpineapple", 
    "poppy", 
    "blackpotato", 
    "bluepotato", 
    "brownpotato", 
    "orangepotato", 
    "purplepotato", 
    "redpotato", 
    "whitepotato", 
    "blackpurplequinoa", 
    "blackredquinoa", 
    "bluequinoa", 
    "bluepurplequinoa", 
    "brownquinoa", 
    "greenquinoa", 
    "lightbluequinoa", 
    "limewhitequinoa", 
    "orangequinoa", 
    "orangewhitequinoa", 
    "pinkredquinoa", 
    "purplequinoa", 
    "purpleredquinoa", 
    "redquinoa", 
    "whitequinoa", 
    "yellowquinoa", 
    "blackradish", 
    "daikonradish", 
    "greenradish", 
    "orangeradish", 
    "pinkradish", 
    "purpleradish", 
    "redradish", 
    "whiteradish", 
    "yellowradish", 
    "rutabaga", 
    "rye", 
    "blacksalsify", 
    "whitesalsify", 
    "sesame", 
    "shallot", 
    "skirret", 
    "sorghum", 
    "greenspinach", 
    "redspinach", 
    "blacksweetpotato", 
    "brownsweetpotato", 
    "orangesweetpotato", 
    "pinksweetpotato", 
    "purplesweetpotato", 
    "redsweetpotato", 
    "rosesweetpotato", 
    "whitesweetpotato", 
    "yellowsweetpotato", 
    "taro", 
    "blackturnip", 
    "orangeturnip", 
    "pinkturnip", 
    "purpleturnip", 
    "redturnip", 
    "whiteturnip", 
    "yellowturnip", 
    "wasabi", 
    "blackemmerwheat",
    "emmerwheat",
    "purplewheat",
    "redwheat",
    "whitewheat",
];

for crop in crops {
    if (cacheCrops.contains(crop)) {
        log.error("Crop with id: <" + crop + "> already exists!");
    }
    cacheCrops += crop;
    val item as string = "contenttweaker:" + crop;
    if (allCrops.contains(crop)) {
        GenericBlock.createCrop(crop, item).register();
    } else {
        log.warn("Crop item <" + item + "> not found, skipping crop creation.");
    }
}

val squashes as string[] = [
    "amberpumpkin",
    "blackpumpkin",
    "creampumpkin",
    "darkgreenpumpkin",
    "greenpumpkin",
    "lavenderpumpkin",
    "lightgraypumpkin",
    "palegreenpumpkin",
    "peachpumpkin",
    "pinkpumpkin",
    "redpumpkin",
    "tanpumpkin",
    "vermilionpumpkin",
    "wineredpumpkin",
    "whitepumpkin",
    "yellowpumpkin",
];
/*
for squash in squashes {
    if (cacheCrops.contains(squash)) {
        log.error("Crop with id: <" + squash + "> already exists!");
    }
    cacheCrops += squash;
    val item as string = "contenttweaker:" + squash;
    if (allCrops.contains(squash)) {
        GenericBlock.createStem(squash + "seeds", item, 0).register();
    } else {
        log.warn("Squash item <" + item + "> not found, skipping stem creation.");
    }
}
*/

GenericBlock.createStem("testseeds", "minecraft:stone", 0).register();

val melons as string[] = [
    "canarymelon",
    "greencantaloupemelon",
    "orangecantaloupemelon",
    "pinkcantaloupemelon",
    "redcantaloupemelon",
    "yellowcantaloupemelon",
    "whitecantaloupemelon",
    "casabamelon",
    "honeydewmelon",
    "blackwatermelon",
    "greenwatermelon",
    "lavenderwatermelon",
    "lightbluewatermelon",
    "palegreenwatermelon",
    "orangewatermelon",
    "redvioletwatermelon",
    "whitewatermelon",
    "yellowwatermelon",
    "wintermelon",
];

for melon in melons {
    if (cacheCrops.contains(melon)) {
        log.error("Crop with id: <" + melon + "> already exists!");
    }
    cacheCrops += melon;
    val item as string = "contenttweaker:" + melon;
    if (allCrops.contains(melon)) {
        GenericBlock.createStem(melon + "seeds", item, 0).register();
    } else {
        log.warn("Melon item <" + item + "> not found, skipping stem creation.");
    }
}

val vineCrops as string[] = [
    "acornsquash",
    "adzukibean", 
    "anaheimpepper", 
    "bananapepper", 
    "bananasquash", 
    "birdseyepepper", 
    "blackbean", 
    "blackbellpepper", 
    "brownbellpepper", 
    "greenbellpepper", 
    "orangebellpepper", 
    "purplebellpepper", 
    "redbellpepper", 
    "whitebellpepper", 
    "yellowbellpepper", 
    "greenbittermelon",
    "whitebittermelon",
    "yellowbittermelon",
    "orangebittermelon",
    "darkgreenbittermelon",
    "blackeyedpea", 
    "blackhungarianpepper", 
    "butterbean", 
    "buttercupsquash",
    "butternutsquash",
    "calabazasquash",
    "carnivalsquash",
    "cannellinibean", 
    "cayennepepper", 
    "chayotesquash",
    "chilipepper", 
    "cousasquash",
    "cranberrybean", 
    "crooknecksquash",
    "cucamelon", 
    "greencucumber",
    "yellowcucumber", 
    "cushawsquash",
    "delicatasquash",
    "favabean", 
    "gacmelon",
    "garbanzobean", 
    "gemsquash",
    "greatnorthernbean", 
    "greenbean", 
    "blackhabaneropepper", 
    "chocolatehabaneropepper", 
    "orangehabaneropepper", 
    "purplehabaneropepper", 
    "redhabaneropepper", 
    "yellowhabaneropepper", 
    "whitehabaneropepper", 
    "hornedmelon",
    "bluehubbardsquash",
    "orangehubbardsquash",
    "brownjalapenopepper", 
    "purplejalapenopepper", 
    "orangejalapenopepper", 
    "redjalapenopepper", 
    "yellowjalapenopepper", 
    "jauneetvertesquash",
    "blackkidneybean", 
    "redkidneybean",
    "whitekidneybean", 
    "lakotasquash",
    "lemondropmelon", 
    "limabean", 
    "longbean", 
    "mexicanasummersquash",
    "naramelon",
    "navybean", 
    "oposquash",
    "greenpattypansquash",
    "orangepattypansquash",
    "whitepattypansquash",
    "yellowpattypansquash",
    "peppercorn", 
    "pigeonpea", 
    "pimentopepper", 
    "pinkbean", 
    "pintobean", 
    "poblanopepper", 
    "purplepepinomelon",
    "redkurisquash",
    "greensnappea", 
    "purplesnappea",
    "snowleopardmelon",
    "blacksoybean", 
    "greensoybean", 
    "yellowsoybean", 
    "spaghettisquash",
    "sweetdumplingsquash",
    "szechuanpepper", 
    "tabascopepper", 
    "tromboncinosquash",
    "turbansquash",
    "waxbean", 
    "wingedbean", 
    "yardlongbean", 
    "yellowsquash",
    "greenzucchini",
    "roundzucchini",
    "stripedzucchini",
    "yellowzucchini",
];

for vine in vineCrops {
    if (cacheCrops.contains(vine)) {
        log.error("Crop with id: <" + vine + "> already exists!");
    }
    cacheCrops += vine;
    val item as string = "contenttweaker:" + vine;
    if (allCrops.contains(vine)) {
        GenericBlock.createCropRestrictedByBlock(vine, item, "minecraft:string", 0, 0, 1, 3).register();
    } else {
        log.warn("Vine crop item <" + item + "> not found, skipping crop creation.");
    }
}

val tallVines as string[] = [
    "blackgrapes",
    "greengrapes",
    "orangegrapes",
    "pinkgrapes",
    "redgrapes",
    "yellowgrapes",
    "hops",
    "blacktomatoes", 
    "orangetomatoes", 
    "pinktomatoes", 
    "purpletomatoes", 
    "redtomatoes", 
    "whitetomatoes", 
    "yellowtomatoes", 
    "tomatillos",
];

for vine in tallVines {
    if (cacheCrops.contains(vine)) {
        log.error("Crop with id: <" + vine + "> already exists!");
    }
    cacheCrops += vine;
    val item as string = "contenttweaker:" + vine;
    if (allCrops.contains(vine)) {
        GenericBlock.createCropTallRestrictedByOreDictionary(vine, item, "ore:fence", 0, 1, 3).register();
    } else {
        log.warn("Tall vine crop item <" + item + "> not found, skipping crop creation.");
    }
}
