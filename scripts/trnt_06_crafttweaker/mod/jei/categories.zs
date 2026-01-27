#loader crafttweaker
#modloaded jei

import mods.jei.JEI;

static categoriesToHide as string[] = [
    "bursting",
    "jeresources.plant",
    "jeresources.worldgen",
    "jeresources.mob",
    "jeresources.enchantment",
    "jeresources.dungeon",
    "jeresources.villager",
    "rockhounding_rocks.stone_rammer",
    "jei.information"
];

for category in categoriesToHide {
    val parts as string[] = category.split(".");
    if (parts.length == 2 && modLoaded(parts[0])) {
        JEI.hideCategory(category);
        return;
    }
    if (parts.length == 0) {
        LOG.info(`Category *${category}* has no mod prefix, hiding unconditionally.`);
        JEI.hideCategory(category);
        return;
    }
    LOG.warn(`Mod *${parts[0]}* not loaded, skipping hiding of JEI category *${category}*.`);
}
