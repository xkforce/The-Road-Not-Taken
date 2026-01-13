#loader preinit contenttweaker crafttweaker
#priority 1000

import scripts.classes.stone.Stone;

import scripts.variables.misc.minecraftColors;
import scripts.variables.colors.c101;

import scripts.variables.variants.none;
import scripts.variables.variants.defaultVariants;
import scripts.variables.variants.mossyVariants;
import scripts.variables.variants.lichenVariants;
import scripts.variables.variants.OverworldVariants;
import scripts.variables.variants.sandstoneVariants;
import scripts.variables.variants.defaultnocobbleVariants;

var revColors as string[] = minecraftColors.clone();
revColors.reverse();

static USED_ROCKHOUNDING_ROCKS as int[][string]$orderly = {"a": [], "b": [], "c": [], "d": [], "e": [], "f": [], "g": [], "h": []};

function rhRep(rock as Stone, letter as string, meta as int, color as string = " ") as void {
    if (USED_ROCKHOUNDING_ROCKS[letter].indexOf(meta) == -1) {
        USED_ROCKHOUNDING_ROCKS[letter].add(meta);
    }
    rock.addReplacement(`rockhounding_rocks:blocks_${letter}:${meta}`, color, " ");
    rock.addReplacement(`rockhounding_rocks:polished_${letter}:${meta}`, color, "polished");
    rock.addReplacement(`rockhounding_rocks:bricks_${letter}:${meta}`, color, "brick");
    rock.addReplacement(`rockhounding_rocks:shorts_${letter}:${meta}`, color, "shortbrick");
    rock.addReplacement(`rockhounding_rocks:deboss_${letter}:${meta}`, color, "debossed");
    rock.addReplacement(`rockhounding_rocks:carved_${letter}:${meta}`, color, "chiseledbrick");
}

// Overworld Stones
global Andesite as Stone = Stone("andesite", COLORS.keys, OverworldVariants);
Andesite.addReplacement("minecraft:stone:5", "indian_silk", " ");
Andesite.addReplacement("minecraft:stone:6", "indian_silk", "polished");

global Concrete as Stone = Stone("concrete", COLORS_VANILLA, defaultnocobbleVariants);
for i in 0 .. 16 {
    Concrete.addReplacement(`minecraft:concrete:${i}`, minecraftColors[i], " ");
}

global Diorite as Stone = Stone("diorite", COLORS.keys, OverworldVariants);
Diorite.addReplacement("minecraft:stone:3", "iron_fist", " ");
Diorite.addReplacement("minecraft:stone:4", "iron_fist", "polished");

global Granite as Stone = Stone("granite", COLORS.keys, OverworldVariants);
Granite.addReplacement("minecraft:stone:1", "pink", " ");
Granite.addReplacement("minecraft:stone:2", "pink", "polished");

global Obsidian as Stone = Stone("obsidian", COLORS.keys, defaultnocobbleVariants);
Obsidian.addReplacement("minecraft:obsidian", "black", " ");
Obsidian.setHardness(50.0);
Obsidian.setResistance(1200.0);
Obsidian.addFlag("--dragonProof");
Obsidian.setToolLevel(3);

global TransparentObsidian as Stone = Stone("transparentobsidian", COLORS.keys, defaultnocobbleVariants);
TransparentObsidian.setHardness(50.0);
TransparentObsidian.setResistance(1200.0);
TransparentObsidian.addFlag("--dragonProof");
TransparentObsidian.addFlag("--transparent");
TransparentObsidian.setToolLevel(3);
TransparentObsidian.overrideOreName("obsidian");

global Prismarine as Stone = Stone("prismarine", COLORS.keys, [" ", "grid", "brick", "chiseledjellyfish", "hexagonalbrick", "pentagonalbrick", "polished"]);
Prismarine.addReplacement("minecraft:prismarine:0", "cyan", " ");
Prismarine.addReplacement("minecraft:prismarine:1", "cyan", "brick");
Prismarine.addReplacement("minecraft:prismarine:2", "deep_sea_diver", "grid");

global Sandstone as Stone = Stone("sandstone", COLORS.keys, mergeStringArray([none, ["polished"], sandstoneVariants]));
Sandstone.addReplacement("minecraft:sandstone:0", "spaetzel_yellow", " ");
Sandstone.addReplacement("minecraft:sandstone:1", "spaetzel_yellow", "carvedcreeper");
Sandstone.addReplacement("minecraft:sandstone:2", "spaetzel_yellow", "cut");
Sandstone.addReplacement("quark:sandstone_new:0", "spaetzel_yellow", "polished");
Sandstone.addReplacement("minecraft:red_sandstone:0", "red", " ");
Sandstone.addReplacement("minecraft:red_sandstone:1", "red", "wither");
Sandstone.addReplacement("minecraft:red_sandstone:2", "red", "cut");
Sandstone.addReplacement("quark:sandstone_new:2", "red", "polished");
Sandstone.addReplacement("biomesoplenty:white_sandstone:0", "white", " ");
Sandstone.addReplacement("biomesoplenty:white_sandstone:1", "white", "carvedzombie");
Sandstone.addReplacement("biomesoplenty:white_sandstone:2", "white", "cut");
Sandstone.addFlag("--onlyBlocks");
for c in COLORS.keys {
    for v in ["stairs", "slab"] {
        Sandstone.addSpecialAddition(c, " ", v);
        Sandstone.addSpecialAddition(c, "polished", v);
    }
}

// Misc
global HardenedClay as Stone = Stone("hardenedclay", mergeStringArray([none, COLORS.keys]), defaultnocobbleVariants);
for i in 0 .. 16 {
    HardenedClay.addReplacement(`minecraft:hardened_clay:${i}`, minecraftColors[i], " ");
    // screw you rockhounding rocks for using the reversed colors
    HardenedClay.addReplacement(`rockhounding_rocks:polished_clay:${i}`, revColors[i], "polished");
    HardenedClay.addReplacement(`rockhounding_rocks:bricks_clay:${i}`, revColors[i], "brick");
    HardenedClay.addReplacement(`rockhounding_rocks:shorts_clay:${i}`, revColors[i], "shortbrick");
    HardenedClay.addReplacement(`rockhounding_rocks:deboss_clay:${i}`, revColors[i], "debossed");
    HardenedClay.addReplacement(`rockhounding_rocks:carved_clay:${i}`, revColors[i], "chiseledbrick");
}

global PolishedStone as Stone = Stone("polishedstone", none, defaultnocobbleVariants);
PolishedStone.addReplacement("quark:polished_stone", " ", " ");

global Wool as Stone = Stone("wool", COLORS.keys, none);
Wool.addFlag("--onlyBlocks");
for i in 0 .. 16 {
    Wool.addReplacement(`minecraft:wool:${i}`, minecraftColors[i], " ");
}

// End Stones
global EndStone as Stone = Stone("endstone", COLORS.keys, defaultnocobbleVariants);
EndStone.addReplacement("minecraft:end_stone:0", "spaetzel_yellow", " ");

global EnderStone as Stone = Stone("enderstone", COLORS.keys, defaultnocobbleVariants);
global Flavolite as Stone = Stone("flavolite", COLORS.keys, defaultnocobbleVariants);
global Purpur as Stone = Stone("purpur", COLORS.keys, [" ", "pillar"]);
Purpur.addFlag("--onlyBlocks");
Purpur.addReplacement("minecraft:purpur_block", "super_pink", " ");
Purpur.addReplacement("minecraft:purpur_pillar", "super_pink", "pillar");

// Nether Stones
// global BlackStone as Stone = Stone("blackstone", none, none);
// BlackStone.setHardness(6.0);
global CryingObsidian as Stone = Stone("cryingobsidian", c101, defaultnocobbleVariants);
CryingObsidian.setToolLevel(3);

global NetherQuartz as Stone = Stone("netherquartz", COLORS_VANILLA, [" ", "chiseled", "pillar", "polished"]);
NetherQuartz.addFlag("--onlyBlocks");

global Netherrack as Stone = Stone("netherrack", COLORS.keys, none);
global NetherStone as Stone = Stone("netherstone", COLORS.keys, mergeStringArray([defaultnocobbleVariants, ["gilded"]]));

// Extraterrestrial Stones
global Basalt as Stone = Stone("basalt", COLORS.keys, defaultnocobbleVariants);
Basalt.setHardness(1.25);
Basalt.setResistance(4.2);

global Cythereastone as Stone = Stone("cythereastone", COLORS.keys, defaultnocobbleVariants);
global Rutile as Stone = Stone("rutile", COLORS.keys, defaultnocobbleVariants);
global VenusStone as Stone = Stone("venusstone", COLORS.keys, defaultVariants);
global Augite as Stone = Stone("augite", none, defaultVariants);
global Diopside as Stone = Stone("diopside", none, defaultVariants);
global Enstatite as Stone = Stone("enstatite", none, defaultVariants);
global Fayalite as Stone = Stone("fayalite", none, defaultVariants);
global Forsterite as Stone = Stone("forsterite", none, defaultVariants);
global Lunastone as Stone = Stone("lunastone", none, defaultVariants);
global Marstone as Stone = Stone("marstone", none, defaultVariants);
global MercuryStone as Stone = Stone("mercurystone", none, defaultVariants);
global Oldhamite as Stone = Stone("oldhamite", none, defaultVariants);
global Orthoclase as Stone = Stone("orthoclase", none, defaultVariants);
global Orthopyroxene as Stone = Stone("orthopyroxene", none, defaultVariants);
global Pigeonite as Stone = Stone("pigeonite", none, defaultVariants);
global Plagioclase as Stone = Stone("plagioclase", none, defaultVariants);
global Tephroite as Stone = Stone("tephroite", none, defaultVariants);
global Troilite as Stone = Stone("troilite", none, defaultVariants);
global Aegirine as Stone = Stone("aegirine", none, defaultVariants);

//Jovian stone types
global Obsidianjovianite as Stone = Stone("obsidianjovianite", COLORS.keys, defaultnocobbleVariants);
Obsidianjovianite.setHardness(50.0);
Obsidianjovianite.setResistance(1200.0);
Obsidianjovianite.setToolLevel(3);
Obsidianjovianite.overrideOreName("obsidian");

global Andesitejovianite as Stone = Stone("andesitejovianite", COLORS.keys, defaultVariants);

// Unknown
global Umbrilith as Stone = Stone("umbralith", COLORS.keys, defaultnocobbleVariants);
global Violecite as Stone = Stone("violecite", COLORS.keys, defaultnocobbleVariants);

// Rockhounding Rocks
global Ammolite as Stone = Stone("ammolite", none, OverworldVariants);
rhRep(Ammolite, "h", 1);

//apacherhyolite is a 2 color stone type. the rockhounding rocks stone is completely replaced
global Apacherhyolite as Stone = Stone("apacherhyolite", c101, defaultVariants);

global Apatite as Stone = Stone("apatite", none, OverworldVariants);
rhRep(Apatite, "h", 14);

global Aventurine as Stone = Stone("aventurine", COLORS.keys, OverworldVariants);
rhRep(Aventurine, "a", 0, "black");
rhRep(Aventurine, "b", 6, "brown");
rhRep(Aventurine, "a", 11, "blue");
rhRep(Aventurine, "c", 13, "green");
rhRep(Aventurine, "e", 14, "red");
rhRep(Aventurine, "g", 6, "yellow");

global Azurite as Stone = Stone("azurite", none, OverworldVariants);
rhRep(Azurite, "b", 5);

global Basanite as Stone = Stone("basanite", none, OverworldVariants);
rhRep(Basanite, "a", 1);

global Bloodstone as Stone = Stone("bloodstone", none, OverworldVariants);
rhRep(Bloodstone, "d", 2);

global Carnlian as Stone = Stone("carnlian", ["brown", "red"], OverworldVariants);
rhRep(Carnlian, "b", 8, "brown");
rhRep(Carnlian, "e", 13, "red");

global Chalk as Stone = Stone("chalk", none, OverworldVariants);
rhRep(Chalk, "f", 11);

global Chrysocolla as Stone = Stone("chrysocolla", none, OverworldVariants);
rhRep(Chrysocolla, "a", 12);

global Chrysoprase as Stone = Stone("chrysoprase", none, OverworldVariants);
rhRep(Chrysoprase, "d", 10);

global DendriticOpal as Stone = Stone("dendriticopal", none, OverworldVariants);
rhRep(DendriticOpal, "h", 2);

global Eclogite as Stone = Stone("eclogite", none, OverworldVariants);
rhRep(Eclogite, "h", 15);

global Gabbro as Stone = Stone("gabbro", none, OverworldVariants);
rhRep(Gabbro, "a", 10);

global Jasper as Stone = Stone("jasper", ["blue", "dalmatian", "green", "guadalupe", "mookaite", "noreena", "ocean", "rainforest", "red", "spiderweb", "yellow", "zebra"], OverworldVariants);
rhRep(Jasper, "a", 14, "blue");
rhRep(Jasper, "g", 4, "dalmatian");
rhRep(Jasper, "d", 1, "green");
rhRep(Jasper, "h", 5, "guadalupe");
rhRep(Jasper, "f", 7, "mookaite");
rhRep(Jasper, "f", 6, "noreena");
rhRep(Jasper, "g", 2, "ocean");
rhRep(Jasper, "d", 11, "rainforest");
rhRep(Jasper, "f", 2, "red");
rhRep(Jasper, "c", 5, "spiderweb");
rhRep(Jasper, "g", 8, "yellow");
rhRep(Jasper, "c", 9, "zebra");

global Jaspilite as Stone = Stone("jaspilite", none, OverworldVariants);
rhRep(Jaspilite, "f", 9);

global Jet as Stone = Stone("jet", none, OverworldVariants);
rhRep(Jet, "a", 3);

global Kakortokite as Stone = Stone("kakortokite", none, OverworldVariants);
rhRep(Kakortokite, "d", 15);

global Labradorite as Stone = Stone("labradorite", none, OverworldVariants);
rhRep(Labradorite, "a", 15);

global Laterite as Stone = Stone("laterite", none, OverworldVariants);
rhRep(Laterite, "b", 7);

global Luxulianite as Stone = Stone("luxulianite", none, OverworldVariants);
rhRep(Luxulianite, "a", 4);

global Migmatite as Stone = Stone("migmatite", none, OverworldVariants);
rhRep(Migmatite, "c", 11);

global Mudstone as Stone = Stone("mudstone", none, OverworldVariants);
rhRep(Mudstone, "g", 14);

global Pietersite as Stone = Stone("pietersite", none, OverworldVariants);
rhRep(Pietersite, "b", 2);

global Porphyry as Stone = Stone("porphyry", ["brown", "green"], OverworldVariants);
rhRep(Porphyry, "b", 9, "brown");
rhRep(Porphyry, "d", 0, "green");

global Portoro as Stone = Stone("portoro", none, OverworldVariants);
rhRep(Portoro, "a", 6);

global Rhodonite as Stone = Stone("rhodonite", none, OverworldVariants);
rhRep(Rhodonite, "e", 5);

global Schist as Stone = Stone("schist", ["blue", "gray"], OverworldVariants);
rhRep(Schist, "h", 7, "blue");
rhRep(Schist, "h", 4, "gray");

global Serpentinite as Stone = Stone("serpentinite", none, OverworldVariants);
rhRep(Serpentinite, "d", 5);

global SnowflakeObsidian as Stone = Stone("snowflakeobsidian", none, OverworldVariants);
rhRep(SnowflakeObsidian, "a", 7);

global Sodalite as Stone = Stone("sodalite", none, OverworldVariants);
rhRep(Sodalite, "b", 3);

global TreeAgate as Stone = Stone("treeagate", none, OverworldVariants);
rhRep(TreeAgate, "h", 6);

global Unakite as Stone = Stone("unakite", none, OverworldVariants);
rhRep(Unakite, "d", 9);

global Wonderstone as Stone = Stone("wonderstone", none, OverworldVariants);
rhRep(Wonderstone, "h", 12);

global Zoisite as Stone = Stone("zoisite", none, OverworldVariants);
rhRep(Zoisite, "d", 6);

for id, stone in STONES {
    log.trace(`🪨 Stone *${stone.getName()}* has ${stone.colors.length} colors and ${stone.textureVariants.length} texture variants. (total: ${stone.colors.length * stone.textureVariants.length} blocks)`, "preinit");
}
