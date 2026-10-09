#loader crafttweaker
#priority 11

val smelting as string[][string] = {
    "contenttweaker:cokenugget": ["contenttweaker:charcoalnugget", "contenttweaker:coalnugget"],
    "greenery:dried_kelp": [
        "greenery:plant/submerged/lightbluekelp",
        "greenery:plant/submerged/brownkelp",
        "greenery:plant/submerged/greenkelp",
        "greenery:plant/submerged/orangekelp",
        "greenery:plant/submerged/purplekelp",
        "greenery:plant/submerged/blackkelp",
        "greenery:plant/submerged/cyankelp",
        "greenery:plant/submerged/pinkkelp",
        "greenery:plant/submerged/palegreenkelp",
        "greenery:plant/submerged/palepurplekelp",
        "greenery:plant/submerged/whitekelp",
        "greenery:plant/submerged/yellowkelp",
        "greenery:plant/submerged/redkelp",
    ],
};

for output, inputs in smelting {
    if (itemLoaded(output)) {
        for input in inputs {
            if (itemLoaded(input)) {
                furnace.addRecipe(item(output), item(input), 0.1);
            }
        }
    }
}

furnace.addRecipe(<forge:bucketfilled>.withTag({FluidName: "boilingwater", Amount: 1000}), <minecraft:water_bucket>, 0.1);
