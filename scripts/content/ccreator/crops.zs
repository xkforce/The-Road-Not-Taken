#loader preinit
#modloaded contentcreator
#priority 110

import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;

import scripts.variables.crops.edible_crops;
import scripts.variables.crops.inedible_crops;

val allCrops as string[] = mergeStringArray([edible_crops, inedible_crops]);

val crops as string[] = [
    "purplecarrot", "redcarrot", "yellowcarrot", "whitecarrot", "blackcarrot", "greenbokchoy", "redbokchoy", "greencabbage",
    "redcabbage", "whitecabbage", "blackcabbage", "greenchinesecabbage", "purplechinesecabbage", "orangechinesecabbage",
    "yellowchinesecabbage", "cassava", "broccoli", "greenbrusselsprouts", "purplebrusselsprouts", "greencelery", "redcelery",
    "yellowcelery", "chickpea", "cilantro", "collards", "cotton", "dill", "whiteeggplant", "purpleeggplant", "yelloweggplant",
    "redeggplant", "orangeeggplant", "greeneggplant", "purplewhitestripedeggplant", "greenlentil", "redlentil","blacklentil",
    "yellowlentil", "whitegarlic", "purplegarlic", "ginger", "jicama", "greenkale", "redkale", "kholrabi", "fennel", "greenlettuce",
    "redlettuce", "mustard", "okra", "yellowonion", "redonion", "whiteonion", "amaranth", "arrowroot", "barley", "buckwheat",
    "caraway", "cardamom", "chia", "cumin", "cowpea", "drumstick", "flax", "fingermillet", "japanesemillet", "pearlmillet",
    "foxtailmillet", "kodomillet", "oats", "parsley", "parsnip", "peanut", "redpotato", "russetpotato", "quinoa", "purpleradish",
    "blackradish", "daikonradish", "rutabaga", "rye", "seasame", "sorghum", "greenspinach", "redspinach", "taro", "teff", "turnip",
    "wasabi", "winterradish", "brownyam", "purpleyam", "agave", "whitecauliflower", "orangecauliflower", "purplecauliflower",
    "yellowcauliflower", "broccoflower", "sugarbeet", "alfalfa", "arugala", "whitebeet", "yellowbeet", "orangebeet", "blackbeet",
    "candystripebeet", "celeriac", "greenchard", "redchard", "orangechard", "yellowchard", "chives", "fenugreek", "galangal",
    "greenkohlrabi", "redkohlrabi", "leek", "yellowpineapple", "pinkpineapple", "poppyseed", "sesameseed", "shallot", "spelt",
    "lymegrass", "kaniwa", "redcherrytomatoes", "orangecherrytomatoes", "yellowcherrytomatoes", "purplecherrytomatoes",
    "whitecherrytomatoes", "pinkcherrytomatoes", "blackcherrytomatoes",
];

for crop in crops {
    val item as string = "contenttweaker:" + crop;
    if (allCrops.contains(crop)) {
        GenericBlock.createCrop(crop, item).register();
    } else {
        log.warn("Crop item <" + item + "> not found, skipping crop creation.");
    }
}

val squashes as string[] = [
    "acornsquash",
    "buttercupsquash",
    "butternutsquash",
    "delicatasquash",
    "hubbardsquash",
    "lakotasquash",
    "pattypansquash",
    "australianbluepumpkin",
    "jarrahdalepumpkin",
    "rougedetampespumpkin",
    "whitepumpkin",
    "yellowpumpkin",
    "spaghettisquash",
    "sweetdumplingsquash",
];

for squash in squashes {
    val item as string = "contentcreator:" + squash;
    if (allCrops.contains(squash)) {
        GenericBlock.createStem(squash + "seeds", item, 0).register();
    } else {
        log.warn("Squash item <" + item + "> not found, skipping stem creation.");
    }
}

val melons as string[] = [
    "canarymelon",
    "cantaloupemelon",
    "casabamelon",
    "hamimelon",
    "honeydewmelon",
    "hornedmelon",
    "pepinomelon",
    "orangewatermelon",
    "yellowwatermelon",
    "wintermelon",
];

for melon in melons {
    val item as string = "contentcreator:" + melon;
    if (allCrops.contains(melon)) {
        GenericBlock.createStem(melon + "seeds", item, 0).register();
    } else {
        log.warn("Melon item <" + item + "> not found, skipping stem creation.");
    }
}

val vineCrops as string[] = [
    "blackeyedpea", "greensplitpea", "yellowsplitpea", "waxbeans", "whitekidneybean", "anaheimpepper", "bananapepper", "greenbellpepper",
    "redbellpepper", "orangebellpepper", "yellowbellpepper", "blackbellpepper", "purplebellpepper", "whitebellpepper", "brownbellpepper",
    "chilipepper", "blackhungarianpepper", "birdseyepepper", "cayennepepper", "paprika", "szechuanpepper", "tobascopepper", "pigeonpea",
    "fishpepper", "fresnopepper", "ghostpepper", "habaneropepper", "jalapenopepper", "papricapepper", "bananasquash", "greencucumbers",
    "yellowcucumbers", "peppercorns", "pimentopepper", "greensnappeas", "purplesnappeas", "piripiripepper", "poblanopepper",
    "serranopepper", "tabascopepper", "scotchbonnetpepper", "adzukibean", "blackbean", "blackeyedpeas", "cannellinibean", "garbanzobean",
    "cranberrybean", "favabean", "greensoybean", "yellowsoybean", "blacksoybean", "greenbean", "greatnorthernbean", "redkidneybean",
    "blackkidneybean", "limabean", "longbean", "mungbean", "navybean", "pintobean", "greensplitpeas", "yellowsplitpeas", "pinkbean",
    "yardlongbean", "broadbean", "butterbean", "wingedbean",
];

for vine in vineCrops {
    val item as string = "contenttweaker:" + vine;
    if (allCrops.contains(vine)) {
        GenericBlock.createCropRestrictedByBlock(vine, item, "minecraft:string", 0, 0, 1, 3).register();
    } else {
        log.warn("Vine crop item <" + item + "> not found, skipping crop creation.");
    }
}

val tallVines as string[] = [
    "greengrapes",
    "redgrapes",
    "pinkgrapes",
    "orangegrapes",
    "blackgrapes",
    "yellowgrapes",
    "hops",
    "redtomatoes",
    "greentomatoes",
    "orangetomatoes",
    "yellowtomatoes",
    "purpletomatoes",
    "whitetomatoes",
    "pinktomatoes",
    "blacktomatoes",
    "tomatillos",
];

for vine in tallVines {
    val item as string = "contenttweaker:" + vine;
    if (allCrops.contains(vine)) {
        GenericBlock.createCropTallRestrictedByOreDictionary(vine, item, "ore:fence", 0, 1, 3).register();
    } else {
        log.warn("Tall vine crop item <" + item + "> not found, skipping crop creation.");
    }
}
