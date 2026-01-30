#loader setup
#priority -2

import scripts.trnt_02_setup.classes.cot_material.CotMaterial;
import scripts.trnt_02_setup.classes.cot_material.MaterialType;

LOG.info("💎 Loading materials...");

/*
static baseMaterials as string[] = [
    "amethyst", "aquamarine", "bismuth", "blackdiamond", "chocolatediamond", "citrine", "hepatizon",
    "moonstone", "morganite", "opal", "peridot", "ruby", "sapphire", "topaz", "zircon",
];
*/

// Metals
global IRON as CotMaterial = CotMaterial(TYPE_METAL, "iron", "#C0C0C0");
IRON.addParts(["ingot", "nugget", "plate"]);
IRON.addReplacement("ingot", "minecraft:iron_ingot");
IRON.addReplacement("nugget", "minecraft:iron_nugget");

global GOLD as CotMaterial = CotMaterial(TYPE_METAL, "gold", "#FFD700");
GOLD.addParts(["ingot", "nugget", "plate"]);
GOLD.addReplacement("ingot", "minecraft:gold_ingot");
GOLD.addReplacement("nugget", "minecraft:gold_nugget");

global COPPER as CotMaterial = CotMaterial(TYPE_METAL, "copper", "#B87333");
COPPER.addParts(["ingot", "nugget", "plate"]);
COPPER.addReplacement("ingot", "deeperdepths:material");
COPPER.addReplacement("nugget", "deeperdepths:material:4");

global TIN as CotMaterial = CotMaterial(TYPE_METAL, "tin", "#7E7E7E");
TIN.addParts(["ingot", "nugget", "plate"]);

global ROSEGOLD as CotMaterial = CotMaterial(TYPE_METAL, "rosegold", "#d39d13");
ROSEGOLD.addParts(["ingot", "nugget", "plate"]);

global BRONZE as CotMaterial = CotMaterial(TYPE_METAL, "bronze", "#cd7f32");
BRONZE.addParts(["ingot", "nugget", "plate"]);

global STEEL as CotMaterial = CotMaterial(TYPE_METAL, "steel", "#575656");
STEEL.addParts(["ingot", "nugget", "plate"]);

global SILVER as CotMaterial = CotMaterial(TYPE_METAL, "silver", "#b0d2d6");
SILVER.addParts(["ingot", "nugget", "plate"]);

global ELECTRUM as CotMaterial = CotMaterial(TYPE_METAL, "electrum", "#f0e54b");
ELECTRUM.addParts(["ingot", "nugget", "plate"]);

global METEORIRON as CotMaterial = CotMaterial(TYPE_METAL, "meteoriron", "#544a4a");
METEORIRON.addParts(["ingot", "nugget", "plate"]);

global IRIDIUM as CotMaterial = CotMaterial(TYPE_METAL, "iridium", "#dadaea");
IRIDIUM.addParts(["ingot", "nugget", "plate"]);

global NETHERITE as CotMaterial = CotMaterial(TYPE_METAL, "netherite", "#211a1a");
NETHERITE.addParts(["ingot", "nugget", "plate"]);
NETHERITE.addReplacement("ingot", "futuremc:netherite_ingot");

// Gems
global AMETHYST as CotMaterial = CotMaterial(TYPE_GEM, "amethyst", "#9B4FDD");
AMETHYST.addParts(["nugget", "plate"]);

global AQUAMARINE as CotMaterial = CotMaterial(TYPE_GEM, "aquamarine", "#06b5c8");
AQUAMARINE.addParts(["nugget", "plate"]);

global BLACKDIAMOND as CotMaterial = CotMaterial(TYPE_GEM, "blackdiamond", "#272626");
BLACKDIAMOND.addParts(["nugget", "plate"]);

global CHOCOLATEDIAMOND as CotMaterial = CotMaterial(TYPE_GEM, "chocolatediamond", "#491111");
CHOCOLATEDIAMOND.addParts(["nugget", "plate"]);

global CITRINE as CotMaterial = CotMaterial(TYPE_GEM, "citrine", "#f0f04b");
CITRINE.addParts(["nugget", "plate"]);

global DIAMOND as CotMaterial = CotMaterial(TYPE_GEM, "diamond", "#00f2ff");
DIAMOND.addParts(["nugget", "plate"]);
DIAMOND.addReplacement("gem", "minecraft:diamond");

global EMERALD as CotMaterial = CotMaterial(TYPE_GEM, "emerald", "#00ff44");
EMERALD.addParts(["nugget", "plate"]);
EMERALD.addReplacement("gem", "minecraft:emerald");

global HEPATIZON as CotMaterial = CotMaterial(TYPE_GEM, "hepatizon", "#0a2f06");
HEPATIZON.addParts(["nugget", "plate"]);

global MOONSTONE as CotMaterial = CotMaterial(TYPE_GEM, "moonstone", "#c8d9d9");
MOONSTONE.addParts(["nugget", "plate"]);

global MORGANITE as CotMaterial = CotMaterial(TYPE_GEM, "morganite", "#f99ef0");
MORGANITE.addParts(["nugget", "plate"]);

global OPAL as CotMaterial = CotMaterial(TYPE_GEM, "opal", "#d9c5e3");
OPAL.addParts(["nugget", "plate"]);

global PERIDOT as CotMaterial = CotMaterial(TYPE_GEM, "peridot", "#6cd968");
PERIDOT.addParts(["nugget", "plate"]);

global RUBY as CotMaterial = CotMaterial(TYPE_GEM, "ruby", "#e64774");
RUBY.addParts(["nugget", "plate"]);

global SAPPHIRE as CotMaterial = CotMaterial(TYPE_GEM, "sapphire", "#1b18ae");
SAPPHIRE.addParts(["nugget", "plate"]);

global TOPAZ as CotMaterial = CotMaterial(TYPE_GEM, "topaz", "#ea8d30");
TOPAZ.addParts(["nugget", "plate"]);

global ZIRCON as CotMaterial = CotMaterial(TYPE_GEM, "zircon", "#8b5150");
ZIRCON.addParts(["nugget", "plate"]);
