#loader setup
#priority -3

import scripts.trnt_02_setup.classes.zen_blocks.ZenBlock;
import scripts.trnt_02_setup.resources.colors.c101;

LOG.info(`🪨 Loading custom blocks...`);

var revColors as string[] = MC_COLOR.colors.clone();
revColors.reverse();

static USED_ROCKHOUNDING_ROCKS as int[][string]$orderly = {"a": [], "b": [], "c": [], "d": [], "e": [], "f": [], "g": [], "h": []};

function rhRep(rock as ZenBlock, letter as string, meta as int, color as string = " ") as void {
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
global Andesite as ZenBlock = ZenBlock("andesite", COLORS.keys, StringArray.merge([VARIANTS.overworld, VARIANTS.brownlichen]));
Andesite.addReplacement("minecraft:stone:5", "volcanic_ash", " ");
Andesite.addReplacement("minecraft:stone:6", "volcanic_ash", "polished");

global Concrete as ZenBlock = ZenBlock("concrete", MC_COLOR.colors, VARIANTS.defaultnocobble);
for i in 0 .. 16 {
    if (i > MC_COLOR.colors.length) LOG.error("Color index out of bounds!");
    Concrete.addReplacement(`minecraft:concrete:${i}`, MC_COLOR.colors[i], " ");
}

global Diorite as ZenBlock = ZenBlock("diorite", COLORS.keys, StringArray.merge([VARIANTS.overworld, VARIANTS.orangelichen]));
Diorite.addReplacement("minecraft:stone:3", "iron_fist", " ");
Diorite.addReplacement("minecraft:stone:4", "iron_fist", "polished");

global Granite as ZenBlock = ZenBlock("granite", COLORS.keys, StringArray.merge([VARIANTS.overworld, VARIANTS.yellowlichen]));
Granite.addReplacement("minecraft:stone:1", "pink", " ");
Granite.addReplacement("minecraft:stone:2", "pink", "polished");

global Obsidian as ZenBlock = ZenBlock("obsidian", COLORS.keys, VARIANTS.defaultnocobble);
Obsidian.addReplacement("minecraft:obsidian", "black", " ");
Obsidian.setHardness(50.0);
Obsidian.setResistance(1200.0);
Obsidian.addFlag("--dragonProof");
Obsidian.setToolLevel(3);

global TransparentObsidian as ZenBlock = ZenBlock("transparentobsidian", COLORS.keys, VARIANTS.defaultnocobble);
TransparentObsidian.setHardness(50.0);
TransparentObsidian.setResistance(1200.0);
TransparentObsidian.addFlag("--dragonProof");
TransparentObsidian.addFlag("--transparent");
TransparentObsidian.setToolLevel(3);
TransparentObsidian.overrideOreName("obsidian");

global Prismarine as ZenBlock = ZenBlock("prismarine", COLORS.keys, [" ", "grid", "brick", "chiseledjellyfish", "hexagonalbrick", "pentagonalbrick", "polished"]);
Prismarine.addReplacement("minecraft:prismarine:0", "cyan", " ");
Prismarine.addReplacement("minecraft:prismarine:1", "cyan", "brick");
Prismarine.addReplacement("minecraft:prismarine:2", "deep_sea_diver", "grid");

global Sandstone as ZenBlock = ZenBlock("sandstone", COLORS.keys, StringArray.merge([VARIANTS.none, ["polished"], VARIANTS.sandstone]));
Sandstone.addReplacement("minecraft:sandstone:0", "spaetzle_yellow", " ");
Sandstone.addReplacement("minecraft:sandstone:1", "spaetzle_yellow", "carvedcreeper");
Sandstone.addReplacement("minecraft:sandstone:2", "spaetzle_yellow", "cut");
Sandstone.addReplacement("quark:sandstone_new:0", "spaetzle_yellow", "polished");
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
global HardenedClay as ZenBlock = ZenBlock("hardenedclay", StringArray.merge([VARIANTS.none, COLORS.keys]), VARIANTS.defaultnocobble);
for i in 0 .. 16 {
    if (i > MC_COLOR.colors.length) LOG.error("Color index out of bounds!");
    HardenedClay.addReplacement(`minecraft:hardened_clay:${i}`, MC_COLOR.colors[i], " ");
    // screw you rockhounding rocks for using the reversed colors
    HardenedClay.addReplacement(`rockhounding_rocks:polished_clay:${i}`, revColors[i], "polished");
    HardenedClay.addReplacement(`rockhounding_rocks:bricks_clay:${i}`, revColors[i], "brick");
    HardenedClay.addReplacement(`rockhounding_rocks:shorts_clay:${i}`, revColors[i], "shortbrick");
    HardenedClay.addReplacement(`rockhounding_rocks:deboss_clay:${i}`, revColors[i], "debossed");
    HardenedClay.addReplacement(`rockhounding_rocks:carved_clay:${i}`, revColors[i], "chiseledbrick");
}

global PolishedStone as ZenBlock = ZenBlock("polishedstone", VARIANTS.none, VARIANTS.defaultnocobble);
PolishedStone.addReplacement("quark:polished_stone", " ", " ");

global Wool as ZenBlock = ZenBlock("wool", COLORS.keys, VARIANTS.none);
Wool.addFlag("--onlyBlocks");
for i in 0 .. 16 {
    if (i > MC_COLOR.colors.length) LOG.error("Color index out of bounds!");
    Wool.addReplacement(`minecraft:wool:${i}`, MC_COLOR.colors[i], " ");
}

// End Stones
global EndStone as ZenBlock = ZenBlock("endstone", COLORS.keys, VARIANTS.defaultnocobble);
EndStone.addReplacement("minecraft:end_stone:0", "spaetzle_yellow", " ");

global EnderStone as ZenBlock = ZenBlock("enderstone", COLORS.keys, VARIANTS.defaultnocobble);
global Flavolite as ZenBlock = ZenBlock("flavolite", COLORS.keys, VARIANTS.defaultnocobble);
global Purpur as ZenBlock = ZenBlock("purpur", COLORS.keys, [" ", "pillar"]);
Purpur.addFlag("--onlyBlocks");
Purpur.addReplacement("minecraft:purpur_block", "super_pink", " ");
Purpur.addReplacement("minecraft:purpur_pillar", "super_pink", "pillar");

// Nether Stones
// global NetherStone as ZenBlock = ZenBlock("blackstone", VARIANTS.none, VARIANTS.none);
// NetherStone.setHardness(6.0);
global CryingObsidian as ZenBlock = ZenBlock("cryingobsidian", c101, VARIANTS.defaultnocobble);
CryingObsidian.setToolLevel(3);

global NetherQuartz as ZenBlock = ZenBlock("netherquartz", MC_COLOR.colors, [" ", "chiseled", "pillar", "polished"]);
NetherQuartz.addFlag("--onlyBlocks");

global Netherrack as ZenBlock = ZenBlock("netherrack", COLORS.keys, VARIANTS.none);
global NetherStone as ZenBlock = ZenBlock("netherstone", COLORS.keys, StringArray.merge([VARIANTS.defaultnocobble, VARIANTS.redlichen, ["gilded"]]));

// Extraterrestrial Stones
global Basalt as ZenBlock = ZenBlock("basalt", COLORS.keys, VARIANTS.defaultnocobble);
Basalt.setHardness(1.25);
Basalt.setResistance(4.2);

global Cythereastone as ZenBlock = ZenBlock("cythereastone", COLORS.keys, VARIANTS.defaultnocobble);
global Rutile as ZenBlock = ZenBlock("rutile", COLORS.keys, VARIANTS.defaultnocobble);
global VenusStone as ZenBlock = ZenBlock("venusstone", COLORS.keys, VARIANTS.default);
global Augite as ZenBlock = ZenBlock("augite", VARIANTS.none, VARIANTS.default);
global Diopside as ZenBlock = ZenBlock("diopside", VARIANTS.none, VARIANTS.default);
global Enstatite as ZenBlock = ZenBlock("enstatite", VARIANTS.none, VARIANTS.default);
global Fayalite as ZenBlock = ZenBlock("fayalite", VARIANTS.none, VARIANTS.default);
global Forsterite as ZenBlock = ZenBlock("forsterite", VARIANTS.none, VARIANTS.default);
global Lunastone as ZenBlock = ZenBlock("lunastone", VARIANTS.none, VARIANTS.default);
global Marstone as ZenBlock = ZenBlock("marstone", VARIANTS.none, VARIANTS.default);
global MercuryStone as ZenBlock = ZenBlock("mercurystone", VARIANTS.none, VARIANTS.default);
global Oldhamite as ZenBlock = ZenBlock("oldhamite", VARIANTS.none, VARIANTS.default);
global Orthoclase as ZenBlock = ZenBlock("orthoclase", VARIANTS.none, VARIANTS.default);
global Orthopyroxene as ZenBlock = ZenBlock("orthopyroxene", VARIANTS.none, VARIANTS.default);
global Pigeonite as ZenBlock = ZenBlock("pigeonite", VARIANTS.none, VARIANTS.default);
global Plagioclase as ZenBlock = ZenBlock("plagioclase", VARIANTS.none, VARIANTS.default);
global Tephroite as ZenBlock = ZenBlock("tephroite", VARIANTS.none, VARIANTS.default);
global Troilite as ZenBlock = ZenBlock("troilite", VARIANTS.none, VARIANTS.default);
global Aegirine as ZenBlock = ZenBlock("aegirine", VARIANTS.none, VARIANTS.default);

//Jovian stone types
global Obsidianjovianite as ZenBlock = ZenBlock("obsidianjovianite", COLORS.keys, VARIANTS.defaultnocobble);
Obsidianjovianite.setHardness(50.0);
Obsidianjovianite.setResistance(1200.0);
Obsidianjovianite.setToolLevel(3);
Obsidianjovianite.overrideOreName("obsidian");

global Andesitejovianite as ZenBlock = ZenBlock("andesitejovianite", COLORS.keys, VARIANTS.default);

// Unknown
global Umbrilith as ZenBlock = ZenBlock("umbralith", COLORS.keys, VARIANTS.defaultnocobble);
global Violecite as ZenBlock = ZenBlock("violecite", COLORS.keys, VARIANTS.defaultnocobble);

// Rockhounding Rocks
global Ammolite as ZenBlock = ZenBlock("ammolite", VARIANTS.none, VARIANTS.overworld);
rhRep(Ammolite, "h", 1);

//apacherhyolite is a 2 color stone type. the rockhounding rocks stone is completely replaced
global Apacherhyolite as ZenBlock = ZenBlock("apacherhyolite", c101, VARIANTS.default);

global Apatite as ZenBlock = ZenBlock("apatite", VARIANTS.none, VARIANTS.overworld);
rhRep(Apatite, "h", 14);

global Aventurine as ZenBlock = ZenBlock("aventurine", COLORS.keys, VARIANTS.overworld);
rhRep(Aventurine, "a", 0, "black");
rhRep(Aventurine, "b", 6, "brown");
rhRep(Aventurine, "a", 11, "blue");
rhRep(Aventurine, "c", 13, "green");
rhRep(Aventurine, "e", 14, "red");
rhRep(Aventurine, "g", 6, "yellow");

global Azurite as ZenBlock = ZenBlock("azurite", VARIANTS.none, VARIANTS.overworld);
rhRep(Azurite, "b", 5);

global Basanite as ZenBlock = ZenBlock("basanite", VARIANTS.none, VARIANTS.overworld);
rhRep(Basanite, "a", 1);

global Bloodstone as ZenBlock = ZenBlock("bloodstone", VARIANTS.none, VARIANTS.overworld);
rhRep(Bloodstone, "d", 2);

global Carnlian as ZenBlock = ZenBlock("carnlian", ["brown", "red"], VARIANTS.overworld);
rhRep(Carnlian, "b", 8, "brown");
rhRep(Carnlian, "e", 13, "red");

global Chalk as ZenBlock = ZenBlock("chalk", VARIANTS.none, VARIANTS.overworld);
rhRep(Chalk, "f", 11);

global Chrysocolla as ZenBlock = ZenBlock("chrysocolla", VARIANTS.none, VARIANTS.overworld);
rhRep(Chrysocolla, "a", 12);

global Chrysoprase as ZenBlock = ZenBlock("chrysoprase", VARIANTS.none, VARIANTS.overworld);
rhRep(Chrysoprase, "d", 10);

global DendriticOpal as ZenBlock = ZenBlock("dendriticopal", VARIANTS.none, VARIANTS.overworld);
rhRep(DendriticOpal, "h", 2);

global Eclogite as ZenBlock = ZenBlock("eclogite", VARIANTS.none, VARIANTS.overworld);
rhRep(Eclogite, "h", 15);

global Gabbro as ZenBlock = ZenBlock("gabbro", VARIANTS.none, VARIANTS.overworld);
rhRep(Gabbro, "a", 10);

global Jasper as ZenBlock = ZenBlock("jasper", ["blue", "dalmatian", "green", "guadalupe", "mookaite", "noreena", "ocean", "rainforest", "red", "spiderweb", "yellow", "zebra"], VARIANTS.overworld);
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

global Jaspilite as ZenBlock = ZenBlock("jaspilite", VARIANTS.none, VARIANTS.overworld);
rhRep(Jaspilite, "f", 9);

global Jet as ZenBlock = ZenBlock("jet", VARIANTS.none, VARIANTS.overworld);
rhRep(Jet, "a", 3);

global Kakortokite as ZenBlock = ZenBlock("kakortokite", VARIANTS.none, VARIANTS.overworld);
rhRep(Kakortokite, "d", 15);

global Labradorite as ZenBlock = ZenBlock("labradorite", VARIANTS.none, VARIANTS.overworld);
rhRep(Labradorite, "a", 15);

global Laterite as ZenBlock = ZenBlock("laterite", VARIANTS.none, VARIANTS.overworld);
rhRep(Laterite, "b", 7);

global Luxulianite as ZenBlock = ZenBlock("luxulianite", VARIANTS.none, VARIANTS.overworld);
rhRep(Luxulianite, "a", 4);

global Migmatite as ZenBlock = ZenBlock("migmatite", VARIANTS.none, VARIANTS.overworld);
rhRep(Migmatite, "c", 11);

global Mudstone as ZenBlock = ZenBlock("mudstone", VARIANTS.none, VARIANTS.overworld);
rhRep(Mudstone, "g", 14);

global Pietersite as ZenBlock = ZenBlock("pietersite", VARIANTS.none, VARIANTS.overworld);
rhRep(Pietersite, "b", 2);

global Porphyry as ZenBlock = ZenBlock("porphyry", ["brown", "green"], VARIANTS.overworld);
rhRep(Porphyry, "b", 9, "brown");
rhRep(Porphyry, "d", 0, "green");

global Portoro as ZenBlock = ZenBlock("portoro", VARIANTS.none, VARIANTS.overworld);
rhRep(Portoro, "a", 6);

global Rhodonite as ZenBlock = ZenBlock("rhodonite", VARIANTS.none, VARIANTS.overworld);
rhRep(Rhodonite, "e", 5);

global Schist as ZenBlock = ZenBlock("schist", ["blue", "gray"], VARIANTS.overworld);
rhRep(Schist, "h", 7, "blue");
rhRep(Schist, "h", 4, "gray");

global Serpentinite as ZenBlock = ZenBlock("serpentinite", VARIANTS.none, VARIANTS.overworld);
rhRep(Serpentinite, "d", 5);

global SnowflakeObsidian as ZenBlock = ZenBlock("snowflakeobsidian", VARIANTS.none, VARIANTS.overworld);
rhRep(SnowflakeObsidian, "a", 7);

global Sodalite as ZenBlock = ZenBlock("sodalite", VARIANTS.none, VARIANTS.overworld);
rhRep(Sodalite, "b", 3);

global TreeAgate as ZenBlock = ZenBlock("treeagate", VARIANTS.none, VARIANTS.overworld);
rhRep(TreeAgate, "h", 6);

global Unakite as ZenBlock = ZenBlock("unakite", VARIANTS.none, VARIANTS.overworld);
rhRep(Unakite, "d", 9);

global Wonderstone as ZenBlock = ZenBlock("wonderstone", VARIANTS.none, VARIANTS.overworld);
rhRep(Wonderstone, "h", 12);

global Zoisite as ZenBlock = ZenBlock("zoisite", VARIANTS.none, VARIANTS.overworld);
rhRep(Zoisite, "d", 6);

for id, block in BLOCKS {
    LOG.debug(`🪨 Block *${block.getName()}* has ${block.colors.length} colors and ${block.textureVariants.length} texture variants. (total: ${block.colors.length * block.textureVariants.length} blocks)`);
}
