#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val salts as string[] = [
    "salt", 
    "saltpeter", 
];

for s in salts {
    var b as Block = VanillaFactory.createBlock(`${s}block`, <blockmaterial:sand>);
    b.setBlockHardness(0.5);
    b.setBlockResistance(2.5);
    b.setGravity(true);
    b.setToolLevel(0);
    b.register();
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

for t in softstone {
    var c as Block = VanillaFactory.createBlock(`${t}block`, <blockmaterial:rock>);
    c.setBlockHardness(0.5);
    c.setBlockResistance(2.5);
    c.setToolClass("pickaxe");
    c.setToolLevel(0);
    c.register();
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

for g in obsidiangravel {
    var d as Block = VanillaFactory.createBlock(`${g}obsidiangravel`, <blockmaterial:sand>);
    d.setBlockHardness(0.5);
    d.setBlockResistance(6000.0);
    d.setGravity(true);
    d.setToolLevel(0);
    d.register();
}

val planks as string[] = [
    "alder", 
    "allspice", 
    "almond", 
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
    "mychee", 
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

for p in planks {
    var e as Block = VanillaFactory.createBlock(`${p}plank`, <blockmaterial:wood>);
    e.setBlockHardness(2.0);
    e.setBlockResistance(15.0);
    e.setToolLevel(0);
    e.register();
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

for y in clay {
    var f as Block = VanillaFactory.createBlock(`${y}clayblock`, <blockmaterial:clay>);
    f.setBlockHardness(0.5);
    f.setBlockResistance(2.5);
    f.setToolClass("pickaxe");
    f.setToolLevel(0);
    f.register();
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

for z in grasspath {
    var f as Block = VanillaFactory.createBlock(`${z}grasspath`, <blockmaterial:ground>);
    f.setBlockHardness(0.5);
    f.setBlockResistance(2.5);
    f.setToolLevel(0);
    f.register();
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

for v in stonetype {
    var w as Block = VanillaFactory.createBlock(`${v}block`, <blockmaterial:rock>);
    w.setToolClass("pickaxe");
    w.setToolLevel(0);
    w.register();
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

for aa in coarsedirt {
    var h as Block = VanillaFactory.createBlock(`${aa}coarsedirt`, <blockmaterial:ground>);
    h.setBlockHardness(0.5);
    h.setBlockResistance(2.5);
    h.setToolLevel(0);
    h.register();
}
