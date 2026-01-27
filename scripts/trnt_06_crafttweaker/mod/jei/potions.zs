#loader crafttweaker
#modloaded jei

import mods.jei.JEI;

val potionsData as string[][string]$orderly = {
    "ancientbeasts": [
        "poison_ghostly",
        "long_potion_ghostly",
        "poison_rifted",
        "long_potion_rifted",
        "potion_undead",
        "long_potion_undead",
    ],
    "quark": [
        "resilience",
        "long_resilience",
        "strong_resilience",
    ],
    "plants2": [
        "wither",
        "regen_heal",
        "cauldron_brew",
        "levitation",
    ],
    "potioncore": [
        "fire",
        "strong_fire",
        "lightning",
        "magic_inhibition",
        "strong_magic_inhibition",
        "long_magic_inhibition",
        "strong_weight",
        "long_weight",
        "revival",
        "love",
        "extension",
        "strong_extension",
        "long_extension",
        "broken_magic_shield",
        "strong_broken_magic_shield",
        "long_broken_magic_shield",
        "purity",
        "long_purity",
        "teleport",
        "strong_teleport",
        "teleport_surface",
        "magic_focus",
        "strong_magic_focus",
        "long_magic_focus",
        "cure",
        "drown",
        "long_drown",
        "teleport_spawn",
        "vulnerable",
        "strong_vulnerable",
        "long_vulnerable",
        "solid_core",
        "long_solid_core",
        "chance",
        "strong_chance",
        "weight",
        "strong_revival",
        "long_revival",
        "klutz",
        "strong_klutz",
        "long_klutz",
        "magic_shield",
        "strong_magic_shield",
        "long_magic_shield",
        "antidote",
        "long_antidote",
        "archery",
        "strong_archery",
        "long_archery",
    ],
};

for mods, potions in potionsData {
    if (modLoaded(mods)) {
        for p in potions {
            JEI.removeAndHide(<minecraft:potion>.withTag({Potion: `${mods}:${p}`}));
            JEI.removeAndHide(<minecraft:splash_potion>.withTag({Potion: `${mods}:${p}`}));
            JEI.removeAndHide(<minecraft:lingering_potion>.withTag({Potion: `${mods}:${p}`}));
            JEI.removeAndHide(<minecraft:tipped_arrow>.withTag({Potion: `${mods}:${p}`}));
        }
    }
}
