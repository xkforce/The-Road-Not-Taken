#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var cokeblock = VanillaFactory.createBlock("cokeblock", <blockmaterial:rock>);
cokeblock.setBlockHardness(30.0);
cokeblock.setBlockResistance(5.0);
cokeblock.setToolClass("pickaxe");
cokeblock.setToolLevel(0);
cokeblock.register();

var graphiteblock = VanillaFactory.createBlock("graphiteblock", <blockmaterial:rock>);
graphiteblock.setBlockHardness(30.0);
graphiteblock.setBlockResistance(5.0);
graphiteblock.setToolClass("pickaxe");
graphiteblock.setToolLevel(0);
graphiteblock.register();

var phosphorusblock = VanillaFactory.createBlock("phosphorusblock", <blockmaterial:rock>);
phosphorusblock.setBlockHardness(0.5);
phosphorusblock.setBlockResistance(2.5);
phosphorusblock.setToolClass("pickaxe");
phosphorusblock.setToolLevel(0);
phosphorusblock.register();

var rottenfleshblock = VanillaFactory.createBlock("rottenfleshblock", <blockmaterial:sponge>);
rottenfleshblock.setBlockHardness(0.5);
rottenfleshblock.setBlockResistance(2.5);
rottenfleshblock.setToolLevel(0);
rottenfleshblock.register();

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

val sulfur as string[] = [
    "amber", 
    "chartreuse", 
    "green", 
    "lightbrown", 
    "orange", 
    "peach", 
    "red", 
    "tan", 
    "vermillion", 
    "white", 
    "yellow", 
];

for t in sulfur {
    var c as Block = VanillaFactory.createBlock(`${t}sulfurblock`, <blockmaterial:rock>);
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
    "sugi", 
];

for p in planks {
    var e as Block = VanillaFactory.createBlock(`${p}plank`, <blockmaterial:wood>);
    e.setBlockHardness(2.0);
    e.setBlockResistance(15.0);
    e.setToolLevel(0);
    e.register();
}
