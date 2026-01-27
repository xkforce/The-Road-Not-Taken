#loader crafttweaker

import crafttweaker.item.IItemStack;

LOG.info("♻️ Adding furnace recycling recipes...");

static recyclingData as int[string][string]$orderly = {
    "gold": {
        "additions:items-goldchainhelmet": 5,
        "additions:items-goldchainchestplate": 8,
        "additions:items-goldchainleggings": 7,
        "additions:items-goldchainboots": 4,
        "minecraft:golden_boots": 4,
        "backstab:gold_dagger": 1,
        "minecraft:golden_leggings": 7,
        "minecraft:golden_chestplate": 8,
        "minecraft:golden_helmet": 5,
        "minecraft:golden_hoe": 2,
        "minecraft:golden_axe": 3,
        "minecraft:golden_pickaxe": 3,
        "minecraft:golden_shovel": 1,
        "minecraft:golden_sword": 2,
    },
    "iron": {
        "backstab:iron_dagger": 1,
        "minecraft:iron_boots": 4,
        "minecraft:iron_leggings": 7,
        "minecraft:iron_chestplate": 8,
        "minecraft:iron_helmet": 5,
        "minecraft:iron_hoe": 2,
        "minecraft:iron_sword": 2,
        "minecraft:iron_axe": 3,
        "minecraft:iron_pickaxe": 3,
        "minecraft:iron_shovel": 1,
    },
    "bronze": {
        "additions:items-bronzehelmet": 5,
        "additions:items-bronzechestplate": 8,
        "additions:items-bronzeleggings": 7,
        "additions:items-bronzeboots": 4,
        "additions:items-bronzeshovel": 1,
        "additions:items-bronzehammer": 6,
        "additions:items-bronzedagger": 1,
        "additions:items-bronzehoe": 2,
        "additions:items-bronzeaxe": 3,
        "additions:items-bronzepickaxe": 3,
        "additions:items-bronzesword": 2,
    },
    "copper": {
        "deeperdepths:copper_helmet": 5,
        "deeperdepths:copper_chestplate": 8,
        "deeperdepths:copper_leggings": 7,
        "deeperdepths:copper_boots": 4,
        "deeperdepths:copper_shovel": 1,
        "additions:items-copperhammer": 6,
        "additions:items-copperdagger": 1,
        "deeperdepths:copper_hoe": 2,
        "deeperdepths:copper_axe": 3,
        "deeperdepths:copper_pickaxe": 3,
        "deeperdepths:copper_sword": 2,
        "contenttweaker:copperplate": 1,
    },
    "electrum": {
        "additions:items-electrumhelmet": 5,
        "additions:items-electrumchestplate": 8,
        "additions:items-electrumleggings": 7,
        "additions:items-electrumboots": 4,
        "additions:items-electrumshovel": 1,
        "additions:items-electrumhammer": 6,
        "additions:items-electrumdagger": 1,
        "additions:items-electrumhoe": 2,
        "additions:items-electrumaxe": 3,
        "additions:items-electrumpickaxe": 3,
        "additions:items-electrumsword": 2,
    },
    "iridium": {
        "additions:items-iridiumhelmet": 5,
        "additions:items-iridiumchestplate": 8,
        "additions:items-iridiumleggings": 7,
        "additions:items-iridiumboots": 4,
        "additions:items-iridiumshovel": 1,
        "additions:items-iridiumhammer": 6,
        "additions:items-iridiumdagger": 1,
        "additions:items-iridiumhoe": 2,
        "additions:items-iridiumaxe": 3,
        "additions:items-iridiumpickaxe": 3,
        "additions:items-iridiumsword": 2,
    },
    "meteoriron": {
        "additions:items-meteorironhelmet": 5,
        "additions:items-meteorironchestplate": 8,
        "additions:items-meteorironleggings": 7,
        "additions:items-meteorironboots": 4,
        "additions:items-meteorironshovel": 1,
        "additions:items-meteorironhammer": 6,
        "additions:items-meteorirondagger": 1,
        "additions:items-meteorironhoe": 2,
        "additions:items-meteorironaxe": 3,
        "additions:items-meteorironpickaxe": 3,
        "additions:items-meteorironsword": 2,
    },
    "silver": {
        "additions:items-silverhelmet": 5,
        "additions:items-silverchestplate": 8,
        "additions:items-silverleggings": 7,
        "additions:items-silverboots": 4,
        "additions:items-silvershovel": 1,
        "additions:items-silverhammer": 6,
        "additions:items-silverdagger": 1,
        "additions:items-silverhoe": 2,
        "additions:items-silveraxe": 3,
        "additions:items-silverpickaxe": 3,
        "additions:items-silversword": 2,
    },
    "steel": {
        "additions:items-steelhelmet": 5,
        "additions:items-steelchestplate": 8,
        "additions:items-steelleggings": 7,
        "additions:items-steelboots": 4,
        "additions:items-steelshovel": 1,
        "additions:items-steelhammer": 6,
        "additions:items-steeldagger": 1,
        "additions:items-steelhoe": 2,
        "additions:items-steelaxe": 3,
        "additions:items-steelpickaxe": 3,
        "additions:items-steelsword": 2,
    },
    "tin": {
        "additions:items-tinhelmet": 5,
        "additions:items-tinchestplate": 8,
        "additions:items-tinleggings": 7,
        "additions:items-tinboots": 4,
        "additions:items-tinshovel": 1,
        "additions:items-tinhammer": 6,
        "additions:items-tindagger": 1,
        "additions:items-tinhoe": 2,
        "additions:items-tinaxe": 3,
        "additions:items-tinpickaxe": 3,
        "additions:items-tinsword": 2,
    },
};

furnace.remove(<minecraft:gold_nugget>);
furnace.remove(<minecraft:iron_nugget>);

for output, inputs in recyclingData {
    val out as IItemStack = getMaterial("nugget", output);
    for input, amount in inputs {
        if (itemLoaded(input)) {
            furnace.addRecipe(out * amount, item(input), 0.1);
        }
    }
}
