#loader preinit contenttweaker crafttweaker
#priority 1000

import scripts.classes.stone.Stone;

import scripts.variables.colors.c101;
import scripts.variables.colors.c18;

import scripts.variables.misc.lowerColors;

import scripts.variables.variants.none;
import scripts.variables.variants.defaultVariants;
import scripts.variables.variants.mossyVariants;
import scripts.variables.variants.lichenVariants;
import scripts.variables.variants.OverworldVariants;
import scripts.variables.variants.sandstoneVariants;
import scripts.variables.variants.defaultnocobbleVariants;

// Overworld Stones
global Andesite as Stone = Stone("andesite", COLORS.keys, OverworldVariants);
global Aventurine as Stone = Stone("aventurine", COLORS.keys, OverworldVariants);
global Concrete as Stone = Stone("concrete", COLORS.keys, defaultnocobbleVariants);
global ApacheRhyolite as Stone = Stone("apacherhyolite", c101, OverworldVariants);
global Diorite as Stone = Stone("diorite", COLORS.keys, OverworldVariants);
global Granite as Stone = Stone("granite", COLORS.keys, OverworldVariants);
global Obsidian as Stone = Stone("obsidian", COLORS.keys, defaultnocobbleVariants);
Obsidian.setHardness(50.0);
Obsidian.setResistance(1200.0);
global Prismarine as Stone = Stone("prismarine", COLORS.keys, [" ", "fourxfour", "brick", "chiseledjellyfish", "hexagonalbrick", "pentagonalbrick", "polished"]);
global Sandstone as Stone = Stone("sandstone", mergeStringArray([COLORS.keys, none]), sandstoneVariants);
Sandstone.addFlag("--onlyBlocks");

// Misc
global HardenedClay as Stone = Stone("hardenedclay", mergeStringArray([none, lowerColors]), [" ", "brick", "crackedbrick", "crackedshortbrick", "polished", "shortbrick"]);
global SmoothStone as Stone = Stone("smoothstone", none, none);
SmoothStone.addReplacement("minecraft:stone", " ", " ");
global Wool as Stone = Stone("wool", COLORS.keys, none);
Wool.addReplacement("minecraft:wool:0", "white", " ");
Wool.addReplacement("minecraft:wool:1", "orange", " ");
Wool.addReplacement("minecraft:wool:2", "magenta", " ");
Wool.addReplacement("minecraft:wool:3", "light_blue", " ");
Wool.addReplacement("minecraft:wool:4", "yellow", " ");
Wool.addReplacement("minecraft:wool:5", "lime", " ");
Wool.addReplacement("minecraft:wool:6", "pink", " ");
Wool.addReplacement("minecraft:wool:7", "gray", " ");
Wool.addReplacement("minecraft:wool:8", "light_gray", " ");
Wool.addReplacement("minecraft:wool:9", "cyan", " ");
Wool.addReplacement("minecraft:wool:10", "purple", " ");
Wool.addReplacement("minecraft:wool:11", "blue", " ");
Wool.addReplacement("minecraft:wool:12", "brown", " ");
Wool.addReplacement("minecraft:wool:13", "green", " ");
Wool.addReplacement("minecraft:wool:14", "red", " ");
Wool.addReplacement("minecraft:wool:15", "black", " ");

// End Stones
global EndStone as Stone = Stone("endstone", COLORS.keys, defaultnocobbleVariants);
global EnderStone as Stone = Stone("enderstone", COLORS.keys, defaultnocobbleVariants);
global Flavolite as Stone = Stone("flavolite", COLORS.keys, defaultnocobbleVariants);
global Purpur as Stone = Stone("purpur", COLORS.keys, [" ", "pillar"]);
Purpur.addFlag("--onlyBlocks");

// Nether Stones
// global BlackStone as Stone = Stone("blackstone", none, none);
// BlackStone.setHardness(6.0);
global CryingObsidian as Stone = Stone("cryingobsidian", c101, defaultnocobbleVariants);
global NetherQuartz as Stone = Stone("netherquartz", c18, [" ", "chiseled", "pillar", "polished"]);
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
global Augite as Stone = Stone("augite", COLORS.keys, defaultVariants);
global Diopside as Stone = Stone("diopside", COLORS.keys, defaultVariants);
global Enstatite as Stone = Stone("enstatite", COLORS.keys, defaultVariants);
global Fayelite as Stone = Stone("fayelite", COLORS.keys, defaultVariants);
global Forsterite as Stone = Stone("forsterite", COLORS.keys, defaultVariants);
global Lunastone as Stone = Stone("lunastone", COLORS.keys, defaultVariants);
global Marstone as Stone = Stone("marstone", COLORS.keys, defaultVariants);
global MercuryStone as Stone = Stone("mercurystone", COLORS.keys, defaultVariants);
global Oldhamite as Stone = Stone("oldhamite", COLORS.keys, defaultVariants);
global Orthoclase as Stone = Stone("orthoclase", COLORS.keys, defaultVariants);
global Orthopyroxene as Stone = Stone("orthopyroxene", COLORS.keys, defaultVariants);
global Pigeonite as Stone = Stone("pigeonite", COLORS.keys, defaultVariants);
global Plagioclase as Stone = Stone("plagioclase", COLORS.keys, defaultVariants);
global Tephroite as Stone = Stone("tephroite", COLORS.keys, defaultVariants);
global Troilite as Stone = Stone("troilite", COLORS.keys, defaultVariants);
global Aegirine as Stone = Stone("aegirine", COLORS.keys, defaultVariants);

// Unknown
global Umbrilith as Stone = Stone("umbralith", COLORS.keys, defaultnocobbleVariants);
global Violecite as Stone = Stone("violecite", COLORS.keys, defaultnocobbleVariants);

// Rockhounding Rocks
global Basanite as Stone = Stone("basanite", COLORS.keys, OverworldVariants);
global BlueJasper as Stone = Stone("bluejasper", COLORS.keys, OverworldVariants);
global Chrysocolla as Stone = Stone("chrysocolla", COLORS.keys, OverworldVariants);
global Gabbro as Stone = Stone("gabbro", COLORS.keys, OverworldVariants);
global Jet as Stone = Stone("jet", COLORS.keys, OverworldVariants);
global Labradorite as Stone = Stone("labradorite", COLORS.keys, OverworldVariants);
global Luxulyanite as Stone = Stone("luxulyanite", COLORS.keys, OverworldVariants);
global Portoro as Stone = Stone("portoro", COLORS.keys, OverworldVariants);
global Slate as Stone = Stone("slate", COLORS.keys, OverworldVariants);
global Arkose as Stone = Stone("arkose", COLORS.keys, OverworldVariants);
global Bronzite as Stone = Stone("bronzite", COLORS.keys, OverworldVariants);
global Browncarnelian as Stone = Stone("browncarnelian", COLORS.keys, OverworldVariants);
global Brownporphyry as Stone = Stone("brownporphyry", COLORS.keys, OverworldVariants);
global Ignimbrite as Stone = Stone("ignimbrite", COLORS.keys, OverworldVariants);
global Larimar as Stone = Stone("larimar", COLORS.keys, OverworldVariants);
global Laterite as Stone = Stone("laterite", COLORS.keys, OverworldVariants);
global Pietersite as Stone = Stone("pietersite", COLORS.keys, OverworldVariants);
global Scoria as Stone = Stone("scoria", COLORS.keys, OverworldVariants);
global Amazonite as Stone = Stone("amazonite", COLORS.keys, OverworldVariants);
global Dacite as Stone = Stone("dacite", COLORS.keys, OverworldVariants);
global Grayporphyry as Stone = Stone("grayporphyry", COLORS.keys, OverworldVariants);
global Graytrachyte as Stone = Stone("graytrachyte", COLORS.keys, OverworldVariants);
global Graytravertine as Stone = Stone("graytravertine", COLORS.keys, OverworldVariants);
global Migmatite as Stone = Stone("migmatite", COLORS.keys, OverworldVariants);
global Pumice as Stone = Stone("pumice", COLORS.keys, OverworldVariants);
global Spiderwebjasper as Stone = Stone("spiderwebjasper", COLORS.keys, OverworldVariants);
global Zebrajasper as Stone = Stone("zebrajasper", COLORS.keys, OverworldVariants);
global Chrysoprase as Stone = Stone("chrysoprase", COLORS.keys, OverworldVariants);
global Dunite as Stone = Stone("dunite", COLORS.keys, OverworldVariants);
global Glauconite as Stone = Stone("glauconite", COLORS.keys, OverworldVariants);
global Greenjasper as Stone = Stone("greenjasper", COLORS.keys, OverworldVariants);
global Greenporphyry as Stone = Stone("greenporphyry", COLORS.keys, OverworldVariants);
global Jadeite as Stone = Stone("jadeite", COLORS.keys, OverworldVariants);
global Kakortokite as Stone = Stone("kakortokite", COLORS.keys, OverworldVariants);
global Rainforestjasper as Stone = Stone("rainforestjasper", COLORS.keys, OverworldVariants);
global Rhodocrite as Stone = Stone("rhodocrit", COLORS.keys, OverworldVariants);
global Serpentinite as Stone = Stone("serpentinite", COLORS.keys, OverworldVariants);
global Zoisite as Stone = Stone("zoisite", COLORS.keys, OverworldVariants);
global Aplite as Stone = Stone("aplite", COLORS.keys, OverworldVariants);
global Charoite as Stone = Stone("charoite", COLORS.keys, OverworldVariants);
global Dumortierite as Stone = Stone("dumortierite", COLORS.keys, OverworldVariants);
global Jasperoid as Stone = Stone("jasperoid", COLORS.keys, OverworldVariants);
global Pinkporphyry as Stone = Stone("pinkporphyry", COLORS.keys, OverworldVariants);
global Pinktrachyte as Stone = Stone("pinktrachyte", COLORS.keys, OverworldVariants);
global Pinktravertine as Stone = Stone("pinktravertine", COLORS.keys, OverworldVariants);
global Purpurporphyry as Stone = Stone("purpleporphyry", COLORS.keys, OverworldVariants);
global Redcarnelian as Stone = Stone("redcarnelian", COLORS.keys, OverworldVariants);
global Rhodonite as Stone = Stone("rhodonite", COLORS.keys, OverworldVariants);
global Stichtite as Stone = Stone("stichtite", COLORS.keys, OverworldVariants);
global Sugilite as Stone = Stone("sugilite", COLORS.keys, OverworldVariants);
global Alabaster as Stone = Stone("alabaster", COLORS.keys, OverworldVariants);
global Jaspilite as Stone = Stone("jaspilite", COLORS.keys, OverworldVariants);
global Mookaitejasper as Stone = Stone("mookaitejasper", COLORS.keys, OverworldVariants);
global Noreenajasper as Stone = Stone("noreenajasper", COLORS.keys, OverworldVariants);
global Porcelainjasper as Stone = Stone("porcelainjasper", COLORS.keys, OverworldVariants);
global Redjasper as Stone = Stone("redjasper", COLORS.keys, OverworldVariants);
global Redporphyry as Stone = Stone("redporphyry", COLORS.keys, OverworldVariants);
global Redtrachyte as Stone = Stone("redtrachyte", COLORS.keys, OverworldVariants);
global Rosered as Stone = Stone("rosered", COLORS.keys, OverworldVariants);
global Sunstone as Stone = Stone("sunstone", COLORS.keys, OverworldVariants);
global Dalmatianjasper as Stone = Stone("dalmatianjasper", COLORS.keys, OverworldVariants);
global Diatomite as Stone = Stone("diatomite", COLORS.keys, OverworldVariants);
global Felsite as Stone = Stone("felsite", COLORS.keys, OverworldVariants);
global Howlite as Stone = Stone("howlite", COLORS.keys, OverworldVariants);
global Mudstone as Stone = Stone("mudstone", COLORS.keys, OverworldVariants);
global Oceanjasper as Stone = Stone("oceanjasper", COLORS.keys, OverworldVariants);
global Yellowjasper as Stone = Stone("yellowjasper", COLORS.keys, OverworldVariants);
global Yellowporphyry as Stone = Stone("yellowporphyry", COLORS.keys, OverworldVariants);
global Yellowtrachyte as Stone = Stone("yellowtrachyte", COLORS.keys, OverworldVariants);
global Actinolite as Stone = Stone("actinolite", COLORS.keys, OverworldVariants);
global Ammolite as Stone = Stone("ammolite", COLORS.keys, OverworldVariants);
global Apatite as Stone = Stone("apatite", COLORS.keys, OverworldVariants);
global Blueschist as Stone = Stone("blueschist", COLORS.keys, OverworldVariants);
global Breccia as Stone = Stone("breccia", COLORS.keys, OverworldVariants);
global Eclogite as Stone = Stone("eclogite", COLORS.keys, OverworldVariants);
global Grayschist as Stone = Stone("grayschist", COLORS.keys, OverworldVariants);
global Guadalupejasper as Stone = Stone("guadalupejasper", COLORS.keys, OverworldVariants);
global Oolite as Stone = Stone("oolite", COLORS.keys, OverworldVariants);
global Treeagate as Stone = Stone("treeagate", COLORS.keys, OverworldVariants);
global Umber as Stone = Stone("umber", COLORS.keys, OverworldVariants);
global Wonderstone as Stone = Stone("wonderstone", COLORS.keys, OverworldVariants);

for id, stone in STONES {
    log.trace(`🪨 Stone *${stone.getName()}* has ${stone.colors.length} colors and ${stone.textureVariants.length} texture variants. (total: ${stone.colors.length * stone.textureVariants.length} blocks)`, "preinit");
}
