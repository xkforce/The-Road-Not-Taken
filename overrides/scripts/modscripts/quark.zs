#loader crafttweaker
#modloaded quark
#priority 1

recipes.addShaped(<quark:paper_wall_big>, [[<ore:stickWood>, <minecraft:paper>, <ore:stickWood>],[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>], [<ore:stickWood>, <minecraft:paper>, <ore:stickWood>]]);
recipes.addShaped(<quark:paper_wall> * 6, [[<quark:paper_wall_big>, <quark:paper_wall_big>, null],[<quark:paper_wall_big>, <quark:paper_wall_big>, null], [<quark:paper_wall_big>, <quark:paper_wall_big>, null]]);
recipes.addShaped(<quark:magma_bricks> * 4, [[null, <minecraft:magma>, <minecraft:magma>], [null, <minecraft:magma>, <minecraft:magma>]]);
recipes.addShapeless(<quark:midori_pillar>, [<minecraft:purpur_pillar>,<contenttweaker:greendyenugget>]);
recipes.addShapeless(<quark:midori_block_stairs>, [<minecraft:purpur_stairs>,<contenttweaker:greendyenugget>]);
recipes.addShapeless(<quark:midori_block_slab>, [<minecraft:purpur_slab>,<contenttweaker:greendyenugget>]);
recipes.addShaped(<quark:midori_block_slab> * 8, [[<minecraft:purpur_slab>, <minecraft:purpur_slab>, <minecraft:purpur_slab>],[<minecraft:purpur_slab>, <minecraft:dye:2>, <minecraft:purpur_slab>], [<minecraft:purpur_slab>, <minecraft:purpur_slab>, <minecraft:purpur_slab>]]);
recipes.addShaped(<quark:midori_block_stairs> * 8, [[<minecraft:purpur_stairs>, <minecraft:purpur_stairs>, <minecraft:purpur_stairs>],[<minecraft:purpur_stairs>, <minecraft:dye:2>, <minecraft:purpur_stairs>], [<minecraft:purpur_stairs>, <minecraft:purpur_stairs>, <minecraft:purpur_stairs>]]);
recipes.addShaped(<quark:midori_pillar> * 8, [[<minecraft:purpur_pillar>, <minecraft:purpur_pillar>, <minecraft:purpur_pillar>],[<minecraft:purpur_pillar>, <minecraft:dye:2>, <minecraft:purpur_pillar>], [<minecraft:purpur_pillar>, <minecraft:purpur_pillar>, <minecraft:purpur_pillar>]]);
recipes.addShaped(<quark:midori_block> * 8, [[<minecraft:purpur_block>, <minecraft:purpur_block>, <minecraft:purpur_block>],[<minecraft:purpur_block>, <minecraft:dye:2>, <minecraft:purpur_block>], [<minecraft:purpur_block>, <minecraft:purpur_block>, <minecraft:purpur_block>]]);
furnace.addRecipe(<quark:sandstone_new:4>, <quark:soul_sandstone>, 0.1);
recipes.addShaped(<quark:glass_item_frame>, [[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],[<minecraft:glass_pane>, <minecraft:leather>, <minecraft:glass_pane>], [<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]]);
recipes.addShaped(<quark:ender_watcher>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],[<minecraft:redstone>, <minecraft:redstone>, <minecraft:ender_eye>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.addShaped(<quark:arrow_explosive> * 4, [[<minecraft:tnt>],[<ore:stickWood>], [<minecraft:feather>]]);
furnace.addRecipe(<quark:polished_stone>, <minecraft:stone>, 0.1);
recipes.addShaped(<quark:nether_brick_fence_gate>, [[<ore:stickWood>, <minecraft:nether_brick>, <ore:stickWood>], [<ore:stickWood>, <minecraft:nether_brick>, <ore:stickWood>]]);
