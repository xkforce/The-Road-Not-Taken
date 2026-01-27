#loader crafttweaker
#priority 10

for material in ["iron", "golden", "diamond"] {
    for part in ["helmet", "chestplate", "leggings", "boots"] {
        recipes.remove(item(`minecraft:${material}_${part}`));
    }
}

recipes.remove(<minecraft:painting>);
recipes.remove(<minecraft:stick> * 4);
recipes.remove(<minecraft:ladder> * 3);
recipes.remove(<minecraft:bread>);
recipes.remove(<minecraft:cake>);
recipes.remove(<minecraft:redstone_lamp>);
