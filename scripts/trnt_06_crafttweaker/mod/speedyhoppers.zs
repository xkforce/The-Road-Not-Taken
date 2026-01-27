#loader crafttweaker
#modloaded speedyhoppers

import mods.ctintegration.util.RecipePattern;

static hoppers as string[int]$orderly = {
    1: "steel",
    2: "gold",
    3: "electrum",
};

for tier, material in hoppers {
    val name as string = `speedyhoppers:speedyhopper_mk${tier}`;
    recipes.remove(item(name));
    val R as RecipePattern = RecipePattern.init(item(name), ["x x", "xyx", " x "]);
    R.setName(`craft_${name}`);
    R.with("x", ore(`ingot§${material.toUpperCase()}`));
    R.with("y", <ore:chestWood>);
    R.build();
}
