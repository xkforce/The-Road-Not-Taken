#loader crafttweaker
#modloaded tabulator

import mods.tabulator.Tabs;

LOG.info("📊 Removing creative tabs...");

static tabs as string[] = [
    "charset",
    "bard_mania",
    "Better Animals+",
    "cyclicmagic",
    "verticalslabs",
    "tabExoticbirds",
    "CFFBlocks",
    "CFFFlowers",
    "itemsblockstabcreatures",
    "tabGrapplemod",
    "gbook",
    "hammercore",
    "jjmeteor",
    "plants",
    "speedyhoppers",
    "tabCreativTabSwitchbow",
    "zawa_tab_items",
    "zawa_tab_plants",
    "zawa_tab_drops",
    "zawa_tab_decor",
    "zawa_tab_entity",
    "zawa_tab_breeding",
    "taba_lotof_records",
    "taba_lotof_records_dyes",
    "tabBiomesOPlenty",
    "comforts",
    "materials.base",
    "Mechanics",
    "pogosticks",
    "tabPrimitiveMobs",
    "tabProjectVibrantJourneys",
    "railsplus.general",
    "railsplus.transportation",
    "structureTools",
    "inventoryGenerators",
    "rockhoundingRocks",
    "astikorcarts",
    "locks",
    "rockhoundingCore",
];

for tabID in tabs {
    // TODO can we check if the tab exists before removing it?
    Tabs.removeTab(tabID);
}
