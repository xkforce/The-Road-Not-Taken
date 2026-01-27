#loader crafttweaker

import mods.ctintegration.util.RecipePattern;

static horseArmor as string[string]$orderly = {
    "iron": "iron",
    "golden": "gold",
    "diamond": "diamond"
};

for key, material in horseArmor {
    val name as string = `minecraft:${key}_horse_armor`;
    val R as RecipePattern = RecipePattern.init(item(name), ["  x", "xyx", "xxx"]);
    R.setName(`craft_${name.replace(":", "_")}`);
    R.with("x", ore(`block${material.toUpperCase()}`));
    R.with("y", <minecraft:saddle>);
    R.build();
}
