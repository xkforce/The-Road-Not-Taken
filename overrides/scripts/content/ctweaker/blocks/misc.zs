#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val salts as string[] = [
    "salt", 
    "saltpeter", 
];

for aa in salts {
    var ab as Block = VanillaFactory.createBlock(`${aa}block`, <blockmaterial:sand>);
    ab.setBlockHardness(0.5);
    ab.setBlockResistance(2.5);
    ab.setGravity(true);
    ab.setToolLevel(0);
    ab.register();
}

val softstone as string[] = [
    "phosphorus",
    "ambersulfur",
    "chartreusesulfur",
    "creamsulfur",
    "greensulfur",
    "lightbrownsulfur",
    "orangesulfur",
    "peachsulfur",
    "redsulfur",
    "tansulfur",
    "vermillionsulfur",
    "whitesulfur",
    "yellowsulfur",
];

for ac in softstone {
    var ad as Block = VanillaFactory.createBlock(`${ac}block`, <blockmaterial:rock>);
    ad.setBlockHardness(0.5);
    ad.setBlockResistance(2.5);
    ad.setToolClass("pickaxe");
    ad.setToolLevel(0);
    ad.register();
}

val obsidiangravel as string[] = [
    "apricot", 
    "arcane_red", 
    "atlantis", 
    "beer", 
    "berries_n_cream", 
    "bimi_green", 
    "black", 
    "blue", 
    "brown", 
    "candy_floss", 
    "crown_jewels", 
    "cyan", 
    "dark_rum", 
    "deep_sea_diver", 
    "fading_night", 
    "fluorescence", 
    "frappe", 
    "galaxea", 
    "grape_candy", 
    "gray", 
    "green_with_envy", 
    "greenfinch", 
    "green", 
    "indian_silk", 
    "iron_fist", 
    "jaffa", 
    "kathmandu", 
    "kryptonite_green", 
    "langoustine", 
    "light_blue", 
    "light_brown", 
    "light_gray", 
    "lime", 
    "lizard", 
    "magenta", 
    "ming", 
    "morocco", 
    "mysterious_blue", 
    "never_forget", 
    "orange", 
    "pink", 
    "pinot_noir", 
    "purple_protege", 
    "purple", 
    "red", 
    "rich_gold", 
    "salsa_verde", 
    "seaside", 
    "spaetzle_yellow", 
    "spicy_purple", 
    "strawberry_moon", 
    "summer_of82", 
    "super_pink", 
    "tempest", 
    "toad_king", 
    "totally_broccoli", 
    "treetop_cathedral", 
    "twinkle_night", 
    "venomous_sting", 
    "volcanic_ash", 
    "whisky_barrel", 
    "white", 
    "wizards_brew", 
    "yellow", 
];

for ae in obsidiangravel {
    var af as Block = VanillaFactory.createBlock(`${ae}obsidiangravel`, <blockmaterial:sand>);
    af.setBlockHardness(0.5);
    af.setBlockResistance(6000.0);
    af.setGravity(true);
    af.setToolLevel(0);
    af.register();
}

val planks as string[] = [
    "alder", 
    "allspice", 
    "almond", 
    "amburana", 
    "apple", 
    "apricot", 
    "avocado", 
    "azalea", 
    "balsa", 
    "basswood", 
    "beech", 
    "blackgum", 
    "bluemahoe", 
    "brazilnut", 
    "brazilwood", 
    "breadfruit", 
    "brownivory", 
    "butternut", 
    "carob", 
    "cashew", 
    "chestnut", 
    "cinnamon", 
    "citrus", 
    "cocobolo", 
    "cypress", 
    "dogwood", 
    "dragonblood", 
    "durian", 
    "elder", 
    "endoak", 
    "fig", 
    "greenheart", 
    "hala", 
    "hawthorn", 
    "hazel", 
    "hemlock", 
    "hickory", 
    "holly", 
    "honeylocust", 
    "hornbeam", 
    "ipe", 
    "iroko", 
    "ironwood", 
    "jabuticaba", 
    "jackfruit", 
    "javaplum", 
    "jujube", 
    "kapok", 
    "kolanut", 
    "larch", 
    "macadamia", 
    "magnolia", 
    "mango", 
    "mangosteen", 
    "mesquite", 
    "lychee", 
    "myrrh", 
    "noni", 
    "nutmeg", 
    "olive", 
    "onionwood", 
    "osageorange", 
    "padauk", 
    "paleoak", 
    "paloverde", 
    "papaya", 
    "parasidenut", 
    "passionfruit", 
    "pawpaw", 
    "peach", 
    "pear", 
    "pecan", 
    "persimmon", 
    "pinkivory", 
    "pistachio", 
    "plum", 
    "pomegranate", 
    "poplar", 
    "purpleheart", 
    "quince", 
    "rambutan", 
    "redbirch", 
    "redpine", 
    "roseapple", 
    "rosewood", 
    "rowan", 
    "salak", 
    "sandlewood", 
    "sapodilla", 
    "sequoia", 
    "sheanut", 
    "silverbell", 
    "soursop", 
    "starfruit", 
    "sugi", 
    "sweetgum", 
    "sycamore", 
    "tamarillo", 
    "tamarind", 
    "teak", 
    "tigerwood", 
    "walnut", 
    "whiteash", 
    "whitebeam", 
    "whitecedar", 
    "whiteelm", 
    "whiteeucalyptus", 
    "whiteoak", 
    "yellowwood", 
    "yew", 
    "zebrawood", 
];

for ag in planks {
    var ah as Block = VanillaFactory.createBlock(`${ag}plank`, <blockmaterial:wood>);
    ah.setBlockHardness(2.0);
    ah.setBlockResistance(15.0);
    ah.setToolLevel(0);
    ah.register();
}

val clay as string[] = [
    "apricot",
    "arcane_red",
    "black",
    "blue",
    "brown",
    "cyan",
    "frappe",
    "gray",
    "green",
    "langoustine",
    "lavender",
    "orange",
    "pink",
    "purple",
    "purple_protege",
    "red",
    "spicy_purple",
    "white",
    "yellow",
];

for ai in clay {
    var aj as Block = VanillaFactory.createBlock(`${ai}clayblock`, <blockmaterial:clay>);
    aj.setBlockHardness(0.5);
    aj.setBlockResistance(2.5);
    aj.setToolClass("pickaxe");
    aj.setToolLevel(0);
    aj.register();
}

val grasspath as string[] = [
    "lunar", 
    "martian", 
    "mercurian", 
    "apricot",
    "arcane_red",
    "black",
    "blue",
    "cyan",
    "frappe",
    "gray",
    "green",
    "langoustine",
    "lavender",
    "light_blue",
    "orange",
    "pink",
    "purple",
    "purple_protege",
    "red",
    "spicy_purple",
    "white",
    "yellow",
    "venusian",
];

for ak in grasspath {
    var al as Block = VanillaFactory.createBlock(`${ak}grasspath`, <blockmaterial:rock>);
    al.setBlockHardness(0.5);
    al.setBlockResistance(2.5);
    al.setToolLevel(0);
    al.register();
}

val stonetype as string[] = [
    "bornite", 
    "cattierite", 
    "chlorite", 
    "cobaltite", 
    "coke", 
    "djurleite", 
    "foolsgold", 
    "geerite", 
    "graphite", 
    "hematite", 
    "kesterite", 
    "magnetite", 
    "montbrayite", 
    "pyrrhotite", 
];

for am in stonetype {
    var an as Block = VanillaFactory.createBlock(`${am}block`, <blockmaterial:rock>);
    an.setToolClass("pickaxe");
    an.setToolLevel(0);
    an.register();
}

val coarsedirt as string[] = [
    "lunar", 
    "martian", 
    "mercurian", 
    "apricot",
    "arcane_red",
    "black",
    "blue",
    "cyan",
    "frappe",
    "gray",
    "green",
    "langoustine",
    "lavender",
    "light_blue",
    "orange",
    "pink",
    "purple",
    "purple_protege",
    "red",
    "spicy_purple",
    "white",
    "yellow",
    "venusian",
];

for ao in coarsedirt {
    var ap as Block = VanillaFactory.createBlock(`${ao}coarsedirt`, <blockmaterial:ground>);
    ap.setBlockHardness(0.5);
    ap.setBlockResistance(2.5);
    ap.setToolLevel(0);
    ap.register();
}

val pumpkin as string[] = [
    "amber",
    "black",
    "cream",
    "darkgreen",
    "green",
    "lavender",
    "lightgray",
    "palegreen",
    "peach",
    "pink",
    "red",
    "tan",
    "vermilion",
    "white",
    "winered",
    "yellow",
];

for aq in pumpkin {
    var ar as Block = VanillaFactory.createBlock(`${aq}pumpkin`, <blockmaterial:gourd>);
    ar.setBlockHardness(0.5);
    ar.setBlockResistance(2.5);
    ar.setToolLevel(0);
    ar.register();
}

val melon as string[] = [
    "canary",
    "greencantaloupe",
    "orangecantaloupe",
    "pinkcantaloupe",
    "redcantaloupe",
    "yellowcantaloupe",
    "whitecantaloupe",
    "casaba",
    "honeydew",
    "santaclaus",
    "blackwater",
    "greenwater",
    "lavenderwater",
    "lightbluewater",
    "palegreenwater",
    "orangewater",
    "redvioletwater",
    "whitewater",
    "yellowwater",
    "winter",
];

for au in melon {
    var av as Block = VanillaFactory.createBlock(`${au}melonblock`, <blockmaterial:gourd>);
    av.setBlockHardness(0.5);
    av.setBlockResistance(2.5);
    av.setToolLevel(0);
    av.register();
}

val barrel as string[] = [
"acacia",
"alder",
"amburana",
"apple",
"apricot",
"birch",
"cherry",
"chestnut",
"darkoak",
"hickory",
"juniper",
"maple",
"oak",
"olive",
"paleoak",
"peach",
"pear",
"plum",
"redbirch",
"sugi",
"whiteoak",
"charredacacia",
"charredalder",
"charredamburana",
"charredapple",
"charredapricot",
"charredbirch",
"charredcherry",
"charredchestnut",
"charreddarkoak",
"charredhickory",
"charredjuniper",
"charredmaple",
"charredoak",
"charredolive",
"charredpaleoak",
"charredpeach",
"charredpear",
"charredplum",
"charredredbirch",
"charredsugi",
"charredwhiteoak",
];

for aw in barrel {
    var ax as Block = VanillaFactory.createBlock(`${aw}barrel`, <blockmaterial:wood>);
    ax.setBlockHardness(0.5);
    ax.setBlockResistance(2.5);
    ax.setToolLevel(0);
    ax.register();
}
