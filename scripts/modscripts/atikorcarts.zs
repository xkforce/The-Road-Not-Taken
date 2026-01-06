#loader crafttweaker
#modloaded atikorcarts
#priority 1

recipes.addShaped(<astikorcarts:wheel>, [
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
    [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.addShaped(<astikorcarts:cargocart>, [
    [<ore:plankWood>, <ore:chestWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<astikorcarts:wheel>, null, <astikorcarts:wheel>]
]);

recipes.addShaped(<astikorcarts:plowcart>, [
    [<ore:plankWood>, <minecraft:wooden_hoe:*>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<astikorcarts:wheel>, null, <astikorcarts:wheel>]
]);

recipes.addShaped(<astikorcarts:mobcart>, [
    [<ore:plankWood>, null, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<astikorcarts:wheel>, null, <astikorcarts:wheel>]
]);

