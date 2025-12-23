#loader contenttweaker
#modloaded contenttweaker
#priority 1000

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;

import scripts.functions.contenttweaker.createCreativeTabWithItem;
import scripts.functions.contenttweaker.createFood;
import scripts.functions.contenttweaker.creativeTab;

// Food items default to 0.6 saturation if not specified otherwise
// https://docs.blamejared.com/1.12/en/Mods/ContentTweaker/Vanilla/Creatable_Content/ItemFood/

val fruits as string[] = [
    "acai", "almond", "blackapple", "crabapple", "greenapple", "pinkapple", "purpleapple", "whiteapple", "yellowapple", "apricot",
    "dessertavocado", "hassavocado", "longneckavocado", "mexicolaavocado", "redavocado", "wildavocado", "babaco", "aeaebanana",
    "bluejavabanana", "huamoabanana", "plantain", "redbanana", "baobab", "brazilnut", "breadfruit", "redbuddhashand", "orangebuddhashand",
    "yellowbuddhashand", "purplebuddhashand", "blackbuddhashand", "cashew", "cashewfruit", "redcherry", "washingtoncherry",
    "chestnut", "cempedak", "chokecherry", "citron", "coconut", "blackcurrant", "redcurrant", "greencustardapple", "purplecustardapple",
    "redcustardapple", "yellowcustardapple", "date", "cherrydogwood", "durian", "elderberry", "engkala", "fig", "greenfingerlime",
    "redfingerlime", "gacfruit", "gardencress", "ginkgo", "grapefruit", "greenguava", "purpleguava", "redguava", "hackberry", "halafruit",
    "hawthorn", "hazelnut", "hickorynut", "honeytangerine", "icecreambeanfruit", "ivorypalmfruit", "bluejabuticaba", "purplejabuticaba",
    "sabrajabuticaba", "whitejabuticaba", "yellowjabuticaba", "jackfruit", "jellypalmfruit", "jentikfruit", "jocotefruit", "jujube",
    "juneberry", "juniperberry", "khofruit", "kolanut", "kumquat", "langsat", "limaususu", "greenlime", "redlime", "longan", "loquat",
    "lucumafruit", "lychee", "macadamianut", "mango", "buttonmangosteen", "purplemangosteen", "redmangosteen", "yellowmangosteen",
    "wildmangosteen", "maprangfruit", "marangfruit", "monkeypodfruit", "nance", "nectarine", "nonifruit", "bergamotorange", "bloodorange",
    "greenorange", "satsuma", "orange", "papeda", "paradisenut", "giantpassionfruit", "passionfruit", "pawpaw", "whitepeach", "yellowpeach",
    "peanutbutterfruit", "asianpear", "brownpear", "greenpear", "redpear", "yellowpear", "orangepear", "wildpear", "pecan", "persimmon",
    "pilinut", "pineappleguava", "pistachio", "blackplum", "greenplum", "purpleplum", "pomegranate", "pomelo", "ponderosalemon", "quince",
    "blackrambutan", "redrambutan", "yellowrambutan", "raspberry", "safoufruit", "santolfruit", "blacksapote", "mameysapote", "whitesapote",
    "yellowsapote", "sloe", "blacksnakefruit", "redsnakefruit", "greensoursop", "orangesoursop", "redsoursop", "yellowsoursop", "snowberry",
    "starfruit", "treestrawberry", "sugarapple", "sumac", "suranamcherry", "orangetamarillo", "purpletamarillo", "redtamarillo",
    "yellowtamarillo", "tamarind", "tangerine", "walnut", "woodapple", "beautyberry", "bayberry", "blackberry", "blueberry", "boysenberry",
    "cloudberry", "coralberry", "gojiberry", "goldenberry", "gooseberry", "honeyberry", "huckleberry", "redraspberry", "whiteraspberry",
    "goldenraspberry", "salmonberry", "seabuckthorn", "redstrawberry", "whitestrawberry", "tayberry", "applecactusfruit",
    "elgrullodragonfruit", "triciadragonfruit", "whitedragonfruit", "americanbeautydragonfruit", "axdragonfruit", "reddragonfruit",
    "yellowdragonfruit", "cottoncandydragonfruit", "pricklypear", "rosecactusfruit", "torchcactusfruit", "wheelcactusfruit", "xoconostle",
    "redmelocactus", "pinkmelocactus", "whitemelocactus", "yellowlemon", "pinklemon", "redlemon",
];

val overrideFruits as float[][string] = {
    // foodItemName: [hunger, saturation]
    "acai": [3.0, 0.6],
    "cempedak": [2.0, 0.6]
};

for fruit in fruits {
    val hunger as int = ((overrideFruits has fruit) ? overrideFruits[fruit][0] : 3) as int;
    val saturation as float = ((overrideFruits has fruit) ? overrideFruits[fruit][1] : 0.6) as float;
    val foodItem = VanillaFactory.createItemFood(fruit, hunger);
    if (fruits.indexOf(fruit) == 0) {
        createCreativeTabWithItem(modpackID + ".fruits", foodItem);
    }
    foodItem.creativeTab = creativeTab;
    foodItem.register();
}
