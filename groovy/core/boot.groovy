import core.Modpack;

/* ╔═══════════════════════════════════════════════════════════════════╗ */
/* ║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║ */
/* ║░▀█▀░█░█░█▀▀░░░█▀▄░█▀█░█▀█░█▀▄░░░█▀█░█▀█░▀█▀░░░▀█▀░█▀█░█░█░█▀▀░█▀█░║ */
/* ║░░█░░█▀█░█▀▀░░░█▀▄░█░█░█▀█░█░█░░░█░█░█░█░░█░░░░░█░░█▀█░█▀▄░█▀▀░█░█░║ */
/* ║░░▀░░▀░▀░▀▀▀░░░▀░▀░▀▀▀░▀░▀░▀▀░░░░▀░▀░▀▀▀░░▀░░░░░▀░░▀░▀░▀░▀░▀▀▀░▀░▀░║ */
/* ║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║ */
/* ╚═══════════════════════════════════════════════════════════════════╝ */

if (Modpack.DEBUG_ENABLED) Modpack.LOGGER.info("[🚧 MODPACK 🚧] 🔍 Debug mode is enabled. This disables the removal of certain messages.");

// MOTD
Modpack.LOGGER.shoutout("[💾 BOOT 💾]", [
    "Welcome to ${Modpack.NAME} v${Modpack.VERSION}!", "",
    "These scripts are all written by 'MasterEnderman' and 'Penteractgaming'.",
    "For more information, visit 'https://github.com/xkforce/The-Road-Not-Taken/'",
]);

// Little check if all required CT addons are loaded
def ct_addons = [
    crafttweaker: "https://www.curseforge.com/minecraft/mc-mods/crafttweaker",
    contenttweaker: "https://www.curseforge.com/minecraft/mc-mods/contenttweaker",
    contentcreator: "https://www.curseforge.com/minecraft/mc-mods/contentcreator",
    roidtweaker: "https://www.curseforge.com/minecraft/mc-mods/roid-tweaker",
    treetweaker: "https://www.curseforge.com/minecraft/mc-mods/tree-tweaker",
    zenutils: "https://www.curseforge.com/minecraft/mc-mods/zenutil",
];

Modpack.LOGGER.info("🔍 Searching for required mods...");
ct_addons.each { addon, url ->
    if (isLoaded(addon)) {
        Modpack.LOGGER.info("✅ Found ${addon}. Continuing...");
    } else {
        Modpack.LOGGER.warn("❌ Unable to find ${addon}. It can be downloaded from ${url}.");
        Modpack.LOGGER.exception("❌ The modpack is unable to continue and we now will exit...");
        // Yes, this actually just closes the game, it would be better if we could make this clearer to the user
        Modpack.close();
    }
}
Modpack.LOGGER.info("📣 Found all mods. Starting to load scripts!");
