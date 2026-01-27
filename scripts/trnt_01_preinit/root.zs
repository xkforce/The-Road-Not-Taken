#loader preinit
#modloaded roidtweaker zenutils

/* ╔═══════════════════════════════════════════════════════════════════╗ */
/* ║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║ */
/* ║░▀█▀░█░█░█▀▀░░░█▀▄░█▀█░█▀█░█▀▄░░░█▀█░█▀█░▀█▀░░░▀█▀░█▀█░█░█░█▀▀░█▀█░║ */
/* ║░░█░░█▀█░█▀▀░░░█▀▄░█░█░█▀█░█░█░░░█░█░█░█░░█░░░░░█░░█▀█░█▀▄░█▀▀░█░█░║ */
/* ║░░▀░░▀░▀░▀▀▀░░░▀░▀░▀▀▀░▀░▀░▀▀░░░░▀░▀░▀▀▀░░▀░░░░░▀░░▀░▀░▀░▀░▀▀▀░▀░▀░║ */
/* ║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║ */
/* ╚═══════════════════════════════════════════════════════════════════╝ */

// When debug mode is enabled, disable the removal of certain messages, furthermore a LOT more messages will be printed
if (MODPACK.debug_enabled) {
    LOG.info(`[🚧 MODPACK 🚧] 🔍 Debug mode is enabled. This disables the removal of certain messages.`);
} else {
    // Clean up the crafttweaker.log file
    addRegexLogFilter("^.*Could not find creative tab with name.*$");
}

// MOTD
LOG.shoutout("[💾 BOOT 💾]", [
    `Welcome to ${MODPACK.name} v${MODPACK.ver}`,
    `This is a custom header made by *MasterEnderman*.`,
    `For more information, visit 'https://github.com/xkforce/The-Road-Not-Taken/'`,
]);

// Little check if all required CT addons are loaded
val ct_addons as string[string]$orderly = {
    "crafttweaker": "https://www.curseforge.com/minecraft/mc-mods/crafttweaker",
    "contenttweaker": "https://www.curseforge.com/minecraft/mc-mods/contenttweaker",
    "contentcreator": "https://www.curseforge.com/minecraft/mc-mods/contentcreator",
    "roidtweaker": "https://www.curseforge.com/minecraft/mc-mods/roid-tweaker",
    "treetweaker": "https://www.curseforge.com/minecraft/mc-mods/tree-tweaker",
    "zenutils": "https://www.curseforge.com/minecraft/mc-mods/zenutil",
};

LOG.info(`🔍 Searching for required mods...`);
for addon, url in ct_addons {
    if (loadedMods has addon) {
        /*
            Note: If we reach this point, we no longer need to check if any CT related mods are loaded,
                  when using "#modloaded something something".
         */
        LOG.info(`✅ Found ${addon}. Continuing...`);
    } else {
        // @enderman can we implement a better way to do this?
        LOG.warn(`❌ Unable to find ${addon}. It can be downloaded from ${url}.`);
        LOG.exception(`❌ The modpack is unable to continue and we now will exit...`);
        // Yes, this actually just closes the game, it would be better if we could make this clearer to the user
        MODPACK.close();
    }
}
LOG.info("📣 Found all mods. Starting to load scripts!");
