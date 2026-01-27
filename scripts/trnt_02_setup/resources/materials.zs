#loader setup
#priority -1

import scripts.trnt_02_setup.classes.cot_material.CotMaterial;
import scripts.trnt_02_setup.classes.cot_material.MaterialType;

LOG.info("💎 Loading materials...");

// Metals
global IRON as CotMaterial = CotMaterial(TYPE_METAL, "iron", "#C0C0C0");
IRON.addParts(["ingot", "nugget", "plate"]);
IRON.addReplacement("ingot", "minecraft:iron_ingot");
IRON.addReplacement("nugget", "minecraft:iron_nugget");

global GOLD as CotMaterial = CotMaterial(TYPE_METAL, "gold", "#FFD700");
GOLD.addParts(["ingot", "nugget", "plate"]);
GOLD.addReplacement("ingot", "minecraft:gold_ingot");
GOLD.addReplacement("nugget", "minecraft:gold_nugget");

/*
// Gems
global AMETHYST as CotMaterial = CotMaterial(TYPE_GEM, "amethyst", "#9B4FDD");
AMETHYST.addParts(["nugget", "plate"]);
*/
