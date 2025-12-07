#loader crafttweaker
#modloaded jei
#priority 1

import mods.jei.JEI;

val categoriesToHide as string[] = [
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
    JEI.hideCategory(category);
}