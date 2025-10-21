#modloaded contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;

var dyeBlack = <ore:dyeBlack>;
var dyeRed = <ore:dyeRed>;
var dyeGreen = <ore:dyeGreen>;
var dyeBrown = <ore:dyeBrown>;
var dyeBlue = <ore:dyeBlue>;
var dyePurple = <ore:dyePurple>;
var dyeCyan = <ore:dyeCyan>;
var dyeLightGray = <ore:dyeLightGray>;
var dyeGray = <ore:dyeGray>;
var dyePink = <ore:dyePink>;
var dyeLime = <ore:dyeLime>;
var dyeYellow = <ore:dyeYellow>;
var dyeLightBlue = <ore:dyeLightBlue>;
var dyeMagenta = <ore:dyeMagenta>;
var dyeOrange = <ore:dyeOrange>;
var dyeWhite = <ore:dyeWhite>;
var purpledyenugget = <ore:purpledyenugget>;
var reddyenugget = <ore:reddyenugget>;
var graydyenugget = <ore:graydyenugget>;
var yellowdyenugget = <ore:yellowdyenugget>;
var lightgraydyenugget = <ore:lightgraydyenugget>;
var pinkdyenugget = <ore:pinkdyenugget>;
var greendyenugget = <ore:greendyenugget>;
var blackdyenugget = <ore:blackdyenugget>;
var whitedyenugget = <ore:whitedyenugget>;
var bluedyenugget = <ore:bluedyenugget>;
var lightbluedyenugget = <ore:lightbluedyenugget>;
var limedyenugget = <ore:limedyenugget>;
var cyandyenugget = <ore:cyandyenugget>;
var browndyenugget = <ore:browndyenugget>;
var magentadyenugget = <ore:magentadyenugget>;
var orangedyenugget = <ore:orangedyenugget>;

recipes.addShaped(<contenttweaker:steelchisel>, [[null, <contenttweaker:steel>], [<ore:stickWood>, null]]);

recipes.addShaped(<contenttweaker:blackkauristick> * 4, [[<plants2:planks:2>], [<plants2:planks:2>]]);
recipes.addShaped(<contenttweaker:eucalyptusstick> * 4, [[<biomesoplenty:planks_0:15>], [<biomesoplenty:planks_0:15>]]);
recipes.addShaped(<contenttweaker:ebonystick> * 4, [[<biomesoplenty:planks_0:14>], [<biomesoplenty:planks_0:14>]]);
recipes.addShaped(<contenttweaker:birchstick> * 4, [[<minecraft:planks:2>], [<minecraft:planks:2>]]);
recipes.addShaped(<contenttweaker:oakstick> * 4, [[<minecraft:planks>], [<minecraft:planks>]]);
recipes.addShaped(<contenttweaker:mahoganystick> * 4, [[<biomesoplenty:planks_0:13>], [<biomesoplenty:planks_0:13>]]);
recipes.addShaped(<contenttweaker:pinestick> * 4, [[<biomesoplenty:planks_0:10>], [<biomesoplenty:planks_0:10>]]);
recipes.addShaped(<contenttweaker:willowstick> * 4, [[<biomesoplenty:planks_0:9>], [<biomesoplenty:planks_0:9>]]);
recipes.addShaped(<contenttweaker:redwoodstick> * 4, [[<biomesoplenty:planks_0:8>], [<biomesoplenty:planks_0:8>]]);
recipes.addShaped(<contenttweaker:mangrovestick> * 4, [[<biomesoplenty:planks_0:6>], [<biomesoplenty:planks_0:6>]]);
recipes.addShaped(<contenttweaker:firstick> * 4, [[<biomesoplenty:planks_0:3>], [<biomesoplenty:planks_0:3>]]);
recipes.addShaped(<contenttweaker:umbranstick> * 4, [[<biomesoplenty:planks_0:2>], [<biomesoplenty:planks_0:2>]]);
recipes.addShaped(<contenttweaker:cherrystick> * 4, [[<biomesoplenty:planks_0:1>], [<biomesoplenty:planks_0:1>]]);
recipes.addShaped(<contenttweaker:darkoakstick> * 4, [[<minecraft:planks:5>], [<minecraft:planks:5>]]);
recipes.addShaped(<contenttweaker:acaciastick> * 4, [[<minecraft:planks:4>], [<minecraft:planks:4>]]);
recipes.addShaped(<contenttweaker:junglestick> * 4, [[<minecraft:planks:3>], [<minecraft:planks:3>]]);
recipes.addShaped(<contenttweaker:juniperstick> * 4, [[<pvj:planks_juniper>], [<pvj:planks_juniper>]]);
recipes.addShaped(<contenttweaker:sugistick> * 4, [[<sugiforest:sugi_planks>], [<sugiforest:sugi_planks>]]);
recipes.addShaped(<contenttweaker:jacarandastick> * 4, [[<biomesoplenty:planks_0:12>], [<biomesoplenty:planks_0:12>]]);
recipes.addShaped(<contenttweaker:incensecedarstick> * 4, [[<plants2:planks:4>], [<plants2:planks:4>]]);
recipes.addShaped(<contenttweaker:maplestick> * 4, [[<pvj:planks_maple>], [<pvj:planks_maple>]]);
recipes.addShaped(<contenttweaker:baobabstick> * 4, [[<pvj:planks_baobab>], [<pvj:planks_baobab>]]);
recipes.addShaped(<contenttweaker:brazillianpinestick> * 4, [[<plants2:planks:3>], [<plants2:planks:3>]]);
recipes.addShaped(<contenttweaker:cottonwoodstick> * 4, [[<pvj:planks_cottonwood>], [<pvj:planks_cottonwood>]]);
recipes.addShaped(<minecraft:stick> * 4, [[<minecraft:planks:1>], [<minecraft:planks:1>]]);

recipes.addShapeless(<minecraft:coal>, [<contenttweaker:coalnugget>,<contenttweaker:coalnugget>,<contenttweaker:coalnugget>,<contenttweaker:coalnugget>,<contenttweaker:coalnugget>,<contenttweaker:coalnugget>,<contenttweaker:coalnugget>,<contenttweaker:coalnugget>]);
recipes.addShapeless(<contenttweaker:coalnugget> * 8, [<minecraft:coal>]);

recipes.addShapeless(<minecraft:coal:1>, [<contenttweaker:charcoalnugget>,<contenttweaker:charcoalnugget>,<contenttweaker:charcoalnugget>,<contenttweaker:charcoalnugget>,<contenttweaker:charcoalnugget>,<contenttweaker:charcoalnugget>,<contenttweaker:charcoalnugget>,<contenttweaker:charcoalnugget>]);
recipes.addShapeless(<contenttweaker:charcoalnugget> * 8, [<minecraft:coal:1>]);
 
recipes.addShapeless(<contenttweaker:coke>, [<contenttweaker:cokenugget>,<contenttweaker:cokenugget>,<contenttweaker:cokenugget>,<contenttweaker:cokenugget>,<contenttweaker:cokenugget>,<contenttweaker:cokenugget>,<contenttweaker:cokenugget>,<contenttweaker:cokenugget>]);
recipes.addShapeless(<contenttweaker:cokenugget> * 8, [<contenttweaker:coke>]);

recipes.addShapeless(<contenttweaker:phosphorus> * 9, [<contenttweaker:phosphorusblock>]);
recipes.addShaped(<contenttweaker:phosphorusblock>, [[<contenttweaker:phosphorus>, <contenttweaker:phosphorus>, <contenttweaker:phosphorus>],[<contenttweaker:phosphorus>, <contenttweaker:phosphorus>, <contenttweaker:phosphorus>], [<contenttweaker:phosphorus>, <contenttweaker:phosphorus>, <contenttweaker:phosphorus>]]);
 
recipes.addShapeless(<contenttweaker:purpledyenugget> * 8, [dyePurple]);
recipes.addShapeless(<minecraft:dye:5>, [purpledyenugget,purpledyenugget,purpledyenugget,purpledyenugget,purpledyenugget,purpledyenugget,purpledyenugget,purpledyenugget]);
recipes.addShapeless(<contenttweaker:reddyenugget> * 8, [dyeRed]);
recipes.addShapeless(<minecraft:dye:1>, [reddyenugget,reddyenugget,reddyenugget,reddyenugget,reddyenugget,reddyenugget,reddyenugget,reddyenugget]);
recipes.addShapeless(<contenttweaker:graydyenugget> * 8, [dyeGray]);
recipes.addShapeless(<minecraft:dye:8>, [graydyenugget,graydyenugget,graydyenugget,graydyenugget,graydyenugget,graydyenugget,graydyenugget,graydyenugget]);
recipes.addShapeless(<contenttweaker:yellowdyenugget> * 8, [dyeYellow]);
recipes.addShapeless(<minecraft:dye:11>, [yellowdyenugget,yellowdyenugget,yellowdyenugget,yellowdyenugget,yellowdyenugget,yellowdyenugget,yellowdyenugget,yellowdyenugget]);
recipes.addShapeless(<contenttweaker:lightgraydyenugget> * 8, [dyeLightGray]);
recipes.addShapeless(<minecraft:dye:7>, [lightgraydyenugget,lightgraydyenugget,lightgraydyenugget,lightgraydyenugget,lightgraydyenugget,lightgraydyenugget,lightgraydyenugget,lightgraydyenugget]);
recipes.addShapeless(<contenttweaker:pinkdyenugget> * 8, [dyePink]);
recipes.addShapeless(<minecraft:dye:9>, [pinkdyenugget,pinkdyenugget,pinkdyenugget,pinkdyenugget,pinkdyenugget,pinkdyenugget,pinkdyenugget,pinkdyenugget]);
recipes.addShapeless(<contenttweaker:greendyenugget> * 8, [dyeGreen]);
recipes.addShapeless(<minecraft:dye:2>, [greendyenugget,greendyenugget,greendyenugget,greendyenugget,greendyenugget,greendyenugget,greendyenugget,greendyenugget]);
recipes.addShapeless(<contenttweaker:blackdyenugget> * 8, [dyeBlack]);
recipes.addShapeless(<plants2:generic:1>, [blackdyenugget,blackdyenugget,blackdyenugget,blackdyenugget,blackdyenugget,blackdyenugget,blackdyenugget,blackdyenugget]);
recipes.addShapeless(<contenttweaker:whitedyenugget> * 8, [dyeWhite]);
recipes.addShapeless(<plants2:generic:4>, [whitedyenugget,whitedyenugget,whitedyenugget,whitedyenugget,whitedyenugget,whitedyenugget,whitedyenugget,whitedyenugget]);
recipes.addShapeless(<contenttweaker:bluedyenugget> * 8, [dyeBlue]);
recipes.addShapeless(<plants2:generic:2>, [bluedyenugget,bluedyenugget,bluedyenugget,bluedyenugget,bluedyenugget,bluedyenugget,bluedyenugget,bluedyenugget]);
recipes.addShapeless(<contenttweaker:lightbluedyenugget> * 8, [dyeLightBlue]);
recipes.addShapeless(<minecraft:dye:12>, [lightbluedyenugget,lightbluedyenugget,lightbluedyenugget,lightbluedyenugget,lightbluedyenugget,lightbluedyenugget,lightbluedyenugget,lightbluedyenugget]);
recipes.addShapeless(<contenttweaker:limedyenugget> * 8, [dyeLime]);
recipes.addShapeless(<minecraft:dye:10>, [limedyenugget,limedyenugget,limedyenugget,limedyenugget,limedyenugget,limedyenugget,limedyenugget,limedyenugget]);
recipes.addShapeless(<contenttweaker:cyandyenugget> * 8, [dyeCyan]);
recipes.addShapeless(<minecraft:dye:6>, [cyandyenugget,cyandyenugget,cyandyenugget,cyandyenugget,cyandyenugget,cyandyenugget,cyandyenugget,cyandyenugget]);
recipes.addShapeless(<contenttweaker:browndyenugget> * 8, [dyeBrown]);
recipes.addShapeless(<plants2:generic:3>, [browndyenugget,browndyenugget,browndyenugget,browndyenugget,browndyenugget,browndyenugget,browndyenugget,browndyenugget]);
recipes.addShapeless(<contenttweaker:magentadyenugget> * 8, [dyeMagenta]);
recipes.addShapeless(<minecraft:dye:13>, [magentadyenugget,magentadyenugget,magentadyenugget,magentadyenugget,magentadyenugget,magentadyenugget,magentadyenugget,magentadyenugget]);
recipes.addShapeless(<contenttweaker:orangedyenugget> * 8, [dyeOrange]);
recipes.addShapeless(<minecraft:dye:14>, [orangedyenugget,orangedyenugget,orangedyenugget,orangedyenugget,orangedyenugget,orangedyenugget,orangedyenugget,orangedyenugget]);
recipes.addShapeless(<plants2:generic:4>, [<minecraft:dye:1>,<minecraft:dye:15>]);
recipes.addShapeless(<plants2:generic:3>, [<minecraft:dye:1>,<minecraft:dye:3>]);
recipes.addShapeless(<plants2:generic:2>, [<minecraft:dye:1>,<minecraft:dye:4>]);
recipes.addShapeless(<plants2:generic:1>, [<minecraft:dye:1>,<minecraft:dye>]);
recipes.addShapeless(<minecraft:dye:13> * 2, [<minecraft:dye:1>,<minecraft:dye:12>]);
recipes.addShapeless(<contenttweaker:magentadyeblock> * 2, [<contenttweaker:reddyeblock>,<contenttweaker:lightbluedyeblock>]);
recipes.addShapeless(<plants2:generic:3> * 9, [<contenttweaker:browndyeblock>]);
recipes.addShapeless(<minecraft:dye:13> * 9, [<contenttweaker:magentadyeblock>]);
recipes.addShapeless(<minecraft:dye:14> * 9, [<contenttweaker:orangedyeblock>]);
recipes.addShapeless(<minecraft:dye:10> * 9, [<contenttweaker:limedyeblock>]);
recipes.addShapeless(<minecraft:dye:12> * 9, [<contenttweaker:lightbluedyeblock>]);
recipes.addShapeless(<minecraft:dye:6> * 9, [<contenttweaker:cyandyeblock>]);
recipes.addShapeless(<minecraft:dye:7> * 9, [<contenttweaker:lightgraydyeblock>]);
recipes.addShapeless(<plants2:generic:1> * 9, [<contenttweaker:blackdyeblock>]);
recipes.addShapeless(<plants2:generic:2> * 9, [<contenttweaker:bluedyeblock>]);
recipes.addShapeless(<minecraft:dye:8> * 9, [<contenttweaker:graydyeblock>]);
recipes.addShapeless(<plants2:generic:4> * 9, [<contenttweaker:whitedyeblock>]);
recipes.addShapeless(<minecraft:dye:9> * 9, [<contenttweaker:pinkdyeblock>]);
recipes.addShapeless(<minecraft:dye:11> * 9, [<contenttweaker:yellowdyeblock>]);
recipes.addShapeless(<minecraft:dye:1> * 9, [<contenttweaker:reddyeblock>]);
recipes.addShapeless(<minecraft:dye:2> * 9, [<contenttweaker:greendyeblock>]);
recipes.addShapeless(<minecraft:dye:5> * 9, [<contenttweaker:purpledyeblock>]);
recipes.addShapeless(<contenttweaker:magentadyeblock> * 4, [<contenttweaker:bluedyeblock>,<contenttweaker:reddyeblock>,<contenttweaker:reddyeblock>,<contenttweaker:whitedyeblock>]);
recipes.addShapeless(<contenttweaker:magentadyeblock> * 3, [<contenttweaker:pinkdyeblock>,<contenttweaker:bluedyeblock>,<contenttweaker:reddyeblock>]);
recipes.addShapeless(<contenttweaker:magentadyeblock> * 2, [<contenttweaker:pinkdyeblock>,<contenttweaker:purpledyeblock>]);
recipes.addShapeless(<contenttweaker:lightgraydyeblock> * 2, [<contenttweaker:graydyeblock>,<contenttweaker:whitedyeblock>]);
recipes.addShapeless(<contenttweaker:lightgraydyeblock> * 3, [<contenttweaker:whitedyeblock>,<contenttweaker:blackdyeblock>,<contenttweaker:whitedyeblock>]);
recipes.addShapeless(<contenttweaker:lightbluedyeblock> * 2, [<contenttweaker:bluedyeblock>,<contenttweaker:whitedyeblock>]);
recipes.addShapeless(<contenttweaker:limedyeblock> * 2, [<contenttweaker:greendyeblock>,<contenttweaker:whitedyeblock>]);
recipes.addShapeless(<contenttweaker:graydyeblock> * 2, [<contenttweaker:whitedyeblock>,<contenttweaker:blackdyeblock>]);
recipes.addShapeless(<contenttweaker:pinkdyeblock> * 2, [<contenttweaker:reddyeblock>,<contenttweaker:whitedyeblock>]);
recipes.addShapeless(<contenttweaker:orangedyeblock> * 2, [<contenttweaker:reddyeblock>,<contenttweaker:yellowdyeblock>]);
recipes.addShapeless(<contenttweaker:purpledyeblock> * 2, [<contenttweaker:bluedyeblock>,<contenttweaker:reddyeblock>]);
recipes.addShapeless(<contenttweaker:cyandyeblock> * 2, [<contenttweaker:greendyeblock>,<contenttweaker:bluedyeblock>]);
recipes.addShapeless(<contenttweaker:whitedyeblock>, [<minecraft:bone_block>]);
recipes.addShapeless(<contenttweaker:bluedyeblock>, [<minecraft:lapis_block>]);
recipes.addShaped(<contenttweaker:greendyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:purpledyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:reddyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:yellowdyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:pinkdyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:whitedyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:graydyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:browndyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:magentadyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:orangedyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:limedyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:lightbluedyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:cyandyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:lightgraydyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:blackdyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
recipes.addShaped(<contenttweaker:bluedyeblock>, [[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>],[<minecraft:dye>, <minecraft:dye>, <minecraft:dye>], [<minecraft:dye>, <minecraft:dye>, <minecraft:dye>]]);
 
recipes.addShaped(<contenttweaker:gear>, [[null, <minecraft:iron_nugget>, null],[<minecraft:iron_nugget>, <minecraft:iron_ingot>, <minecraft:iron_nugget>], [null, <minecraft:iron_nugget>, null]]);

//storage blocks
recipes.addShapeless(<minecraft:rotten_flesh> * 9, [<contenttweaker:rottenfleshblock>]);
recipes.addShaped(<contenttweaker:rottenfleshblock>, [[<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>],[<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>], [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>]]);
recipes.addShapeless(<contenttweaker:salt> * 9, [<contenttweaker:saltblock>]);
recipes.addShaped(<contenttweaker:saltblock>, [[<contenttweaker:salt>, <contenttweaker:salt>, <contenttweaker:salt>],[<contenttweaker:salt>, <contenttweaker:salt>, <contenttweaker:salt>], [<contenttweaker:salt>, <contenttweaker:salt>, <contenttweaker:salt>]]);
recipes.addShapeless(<contenttweaker:saltpeter> * 9, [<contenttweaker:saltpeter>]);
recipes.addShaped(<contenttweaker:saltpeter>, [[<contenttweaker:saltpeter>, <contenttweaker:saltpeter>, <contenttweaker:saltpeter>],[<contenttweaker:saltpeter>, <contenttweaker:saltpeter>, <contenttweaker:saltpeter>], [<contenttweaker:saltpeter>, <contenttweaker:saltpeter>, <contenttweaker:saltpeter>]]);
recipes.addShaped(<contenttweaker:sulfur>, [[<contenttweaker:sulfur>, <contenttweaker:sulfur>], [<contenttweaker:sulfur>, <contenttweaker:sulfur>]]);
recipes.addShapeless(<contenttweaker:sulfur> * 4, [<contenttweaker:sulfur>]);

recipes.addShapeless(<contenttweaker:amethyst> * 9, [<contenttweaker:amethystblock>]);
recipes.addShaped(<contenttweaker:amethystblock>, [[<contenttweaker:amethyst>, <contenttweaker:amethyst>, <contenttweaker:amethyst>],[<contenttweaker:amethyst>, <contenttweaker:amethyst>, <contenttweaker:amethyst>], [<contenttweaker:amethyst>, <contenttweaker:amethyst>, <contenttweaker:amethyst>]]);
recipes.addShaped(<contenttweaker:amethyst>, [[<contenttweaker:amethystnugget>, <contenttweaker:amethystnugget>, <contenttweaker:amethystnugget>],[<contenttweaker:amethystnugget>, <contenttweaker:amethystnugget>, <contenttweaker:amethystnugget>], [<contenttweaker:amethystnugget>, <contenttweaker:amethystnugget>, <contenttweaker:amethystnugget>]]);
recipes.addShapeless(<contenttweaker:amethystnugget> * 9, [<contenttweaker:amethyst>]);
recipes.addShapeless(<contenttweaker:amethystplate>, [<contenttweaker:amethyst>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:aquamarine> * 9, [<contenttweaker:aquamarineblock>]);
recipes.addShaped(<contenttweaker:aquamarineblock>, [[<contenttweaker:aquamarine>, <contenttweaker:aquamarine>, <contenttweaker:aquamarine>],[<contenttweaker:aquamarine>, <contenttweaker:aquamarine>, <contenttweaker:aquamarine>], [<contenttweaker:aquamarine>, <contenttweaker:aquamarine>, <contenttweaker:aquamarine>]]);
recipes.addShaped(<contenttweaker:aquamarine>, [[<contenttweaker:aquamarinenugget>, <contenttweaker:aquamarinenugget>, <contenttweaker:aquamarinenugget>],[<contenttweaker:aquamarinenugget>, <contenttweaker:aquamarinenugget>, <contenttweaker:aquamarinenugget>], [<contenttweaker:aquamarinenugget>, <contenttweaker:aquamarinenugget>, <contenttweaker:aquamarinenugget>]]);
recipes.addShapeless(<contenttweaker:aquamarinenugget> * 9, [<contenttweaker:aquamarine>]);
recipes.addShapeless(<contenttweaker:aquamarineplate>, [<contenttweaker:aquamarine>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:bronze> * 9, [<contenttweaker:bronzeblock>]);
recipes.addShaped(<contenttweaker:bronzeblock>, [[<contenttweaker:bronze>, <contenttweaker:bronze>, <contenttweaker:bronze>],[<contenttweaker:bronze>, <contenttweaker:bronze>, <contenttweaker:bronze>], [<contenttweaker:bronze>, <contenttweaker:bronze>, <contenttweaker:bronze>]]);
recipes.addShaped(<contenttweaker:bronze>, [[<contenttweaker:bronzenugget>, <contenttweaker:bronzenugget>, <contenttweaker:bronzenugget>],[<contenttweaker:bronzenugget>, <contenttweaker:bronzenugget>, <contenttweaker:bronzenugget>], [<contenttweaker:bronzenugget>, <contenttweaker:bronzenugget>, <contenttweaker:bronzenugget>]]);
recipes.addShapeless(<contenttweaker:bronzenugget> * 9, [<contenttweaker:bronze>]);
recipes.addShapeless(<contenttweaker:bronzeplate>, [<contenttweaker:bronze>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:citrine> * 9, [<contenttweaker:citrineblock>]);
recipes.addShaped(<contenttweaker:citrineblock>, [[<contenttweaker:citrine>, <contenttweaker:citrine>, <contenttweaker:citrine>],[<contenttweaker:citrine>, <contenttweaker:citrine>, <contenttweaker:citrine>], [<contenttweaker:citrine>, <contenttweaker:citrine>, <contenttweaker:citrine>]]);
recipes.addShaped(<contenttweaker:citrine>, [[<contenttweaker:citrinenugget>, <contenttweaker:citrinenugget>, <contenttweaker:citrinenugget>],[<contenttweaker:citrinenugget>, <contenttweaker:citrinenugget>, <contenttweaker:citrinenugget>], [<contenttweaker:citrinenugget>, <contenttweaker:citrinenugget>, <contenttweaker:citrinenugget>]]);
recipes.addShapeless(<contenttweaker:citrinenugget> * 9, [<contenttweaker:citrine>]);
recipes.addShapeless(<contenttweaker:citrineplate>, [<contenttweaker:citrine>,<minecraft:leather>]);

recipes.addShapeless(<deeperdepths:material> * 9, [<deeperdepths:copper_block>]);
recipes.addShaped(<deeperdepths:copper_block>, [[<deeperdepths:material>, <deeperdepths:material>, <deeperdepths:material>],[<deeperdepths:material>, <deeperdepths:material>, <deeperdepths:material>], [<deeperdepths:material>, <deeperdepths:material>, <deeperdepths:material>]]);
recipes.addShaped(<deeperdepths:material>, [[<deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>],[<deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>], [<deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>]]);
recipes.addShapeless(<deeperdepths:material:4> * 9, [<deeperdepths:material>]);
recipes.addShapeless(<contenttweaker:copperplate>, [<deeperdepths:material>,<minecraft:leather>]);

recipes.addShaped(<minecraft:diamond>, [[<contenttweaker:diamondnugget>, <contenttweaker:diamondnugget>, <contenttweaker:diamondnugget>],[<contenttweaker:diamondnugget>, <contenttweaker:diamondnugget>, <contenttweaker:diamondnugget>], [<contenttweaker:diamondnugget>, <contenttweaker:diamondnugget>, <contenttweaker:diamondnugget>]]);
recipes.addShapeless(<contenttweaker:diamondnugget> * 9, [<minecraft:diamond>]);
recipes.addShapeless(<contenttweaker:diamondplate>, [<minecraft:diamond>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:electrum> * 9, [<contenttweaker:electrumblock>]);
recipes.addShaped(<contenttweaker:electrumblock>, [[<contenttweaker:electrum>, <contenttweaker:electrum>, <contenttweaker:electrum>],[<contenttweaker:electrum>, <contenttweaker:electrum>, <contenttweaker:electrum>], [<contenttweaker:electrum>, <contenttweaker:electrum>, <contenttweaker:electrum>]]);
recipes.addShaped(<contenttweaker:electrum>, [[<contenttweaker:electrumnugget>, <contenttweaker:electrumnugget>, <contenttweaker:electrumnugget>],[<contenttweaker:electrumnugget>, <contenttweaker:electrumnugget>, <contenttweaker:electrumnugget>], [<contenttweaker:electrumnugget>, <contenttweaker:electrumnugget>, <contenttweaker:electrumnugget>]]);
recipes.addShapeless(<contenttweaker:electrumnugget> * 9, [<contenttweaker:electrum>]);
recipes.addShapeless(<contenttweaker:electrumplate>, [<contenttweaker:electrum>,<minecraft:leather>]);

recipes.addShaped(<minecraft:emerald>, [[<contenttweaker:emeraldnugget>, <contenttweaker:emeraldnugget>, <contenttweaker:emeraldnugget>],[<contenttweaker:emeraldnugget>, <contenttweaker:emeraldnugget>, <contenttweaker:emeraldnugget>], [<contenttweaker:emeraldnugget>, <contenttweaker:emeraldnugget>, <contenttweaker:emeraldnugget>]]);
recipes.addShapeless(<contenttweaker:emeraldnugget> * 9, [<minecraft:emerald>]); 
recipes.addShapeless(<contenttweaker:emeraldplate>, [<minecraft:emerald>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:goldplate>, [<minecraft:gold_ingot>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:iridium> * 9, [<contenttweaker:iridiumblock>]);
recipes.addShaped(<contenttweaker:iridiumblock>, [[<contenttweaker:iridium>, <contenttweaker:iridium>, <contenttweaker:iridium>],[<contenttweaker:iridium>, <contenttweaker:iridium>, <contenttweaker:iridium>], [<contenttweaker:iridium>, <contenttweaker:iridium>, <contenttweaker:iridium>]]);
recipes.addShaped(<contenttweaker:iridium>, [[<contenttweaker:iridiumnugget>, <contenttweaker:iridiumnugget>, <contenttweaker:iridiumnugget>],[<contenttweaker:iridiumnugget>, <contenttweaker:iridiumnugget>, <contenttweaker:iridiumnugget>], [<contenttweaker:iridiumnugget>, <contenttweaker:iridiumnugget>, <contenttweaker:iridiumnugget>]]);
recipes.addShapeless(<contenttweaker:iridiumnugget> * 9, [<contenttweaker:iridium>]);
recipes.addShapeless(<contenttweaker:iridiumplate>, [<contenttweaker:iridium>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:ironplate>, [<minecraft:iron_ingot>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:meteoriron> * 9, [<contenttweaker:meteorironblock>]);
recipes.addShaped(<contenttweaker:meteorironblock>, [[<contenttweaker:meteoriron>, <contenttweaker:meteoriron>, <contenttweaker:meteoriron>],[<contenttweaker:meteoriron>, <contenttweaker:meteoriron>, <contenttweaker:meteoriron>], [<contenttweaker:meteoriron>, <contenttweaker:meteoriron>, <contenttweaker:meteoriron>]]);
recipes.addShaped(<contenttweaker:meteoriron>, [[<contenttweaker:meteorironnugget>, <contenttweaker:meteorironnugget>, <contenttweaker:meteorironnugget>],[<contenttweaker:meteorironnugget>, <contenttweaker:meteorironnugget>, <contenttweaker:meteorironnugget>], [<contenttweaker:meteorironnugget>, <contenttweaker:meteorironnugget>, <contenttweaker:meteorironnugget>]]);
recipes.addShapeless(<contenttweaker:meteorironnugget> * 9, [<contenttweaker:meteoriron>]);
recipes.addShapeless(<contenttweaker:meteorironplate>, [<contenttweaker:meteoriron>,<minecraft:leather>]);

recipes.addShaped(<futuremc:netherite_ingot>, [[<contenttweaker:netheritenugget>, <contenttweaker:netheritenugget>, <contenttweaker:netheritenugget>],[<contenttweaker:netheritenugget>, <contenttweaker:netheritenugget>, <contenttweaker:netheritenugget>], [<contenttweaker:netheritenugget>, <contenttweaker:netheritenugget>, <contenttweaker:netheritenugget>]]);
recipes.addShapeless(<contenttweaker:netheritenugget> * 9, [<futuremc:netherite_ingot>]);
recipes.addShapeless(<contenttweaker:netheriteplate>, [<futuremc:netherite_ingot>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:ruby> * 9, [<contenttweaker:rubyblock>]);
recipes.addShaped(<contenttweaker:rubyblock>, [[<contenttweaker:ruby>, <contenttweaker:ruby>, <contenttweaker:ruby>],[<contenttweaker:ruby>, <contenttweaker:ruby>, <contenttweaker:ruby>], [<contenttweaker:ruby>, <contenttweaker:ruby>, <contenttweaker:ruby>]]);
recipes.addShaped(<contenttweaker:ruby>, [[<contenttweaker:rubynugget>, <contenttweaker:rubynugget>, <contenttweaker:rubynugget>],[<contenttweaker:rubynugget>, <contenttweaker:rubynugget>, <contenttweaker:rubynugget>], [<contenttweaker:rubynugget>, <contenttweaker:rubynugget>, <contenttweaker:rubynugget>]]);
recipes.addShapeless(<contenttweaker:rubynugget> * 9, [<contenttweaker:ruby>]);
recipes.addShapeless(<contenttweaker:rubyplate>, [<contenttweaker:ruby>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:sapphire> * 9, [<contenttweaker:sapphireblock>]);
recipes.addShaped(<contenttweaker:sapphireblock>, [[<contenttweaker:sapphire>, <contenttweaker:sapphire>, <contenttweaker:sapphire>],[<contenttweaker:sapphire>, <contenttweaker:sapphire>, <contenttweaker:sapphire>], [<contenttweaker:sapphire>, <contenttweaker:sapphire>, <contenttweaker:sapphire>]]);
recipes.addShaped(<contenttweaker:sapphire>, [[<contenttweaker:sapphirenugget>, <contenttweaker:sapphirenugget>, <contenttweaker:sapphirenugget>],[<contenttweaker:sapphirenugget>, <contenttweaker:sapphirenugget>, <contenttweaker:sapphirenugget>], [<contenttweaker:sapphirenugget>, <contenttweaker:sapphirenugget>, <contenttweaker:sapphirenugget>]]);
recipes.addShapeless(<contenttweaker:sapphirenugget> * 9, [<contenttweaker:sapphire>]);
recipes.addShapeless(<contenttweaker:sapphireplate>, [<contenttweaker:sapphire>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:silver> * 9, [<contenttweaker:silverblock>]);
recipes.addShaped(<contenttweaker:silverblock>, [[<contenttweaker:silver>, <contenttweaker:silver>, <contenttweaker:silver>],[<contenttweaker:silver>, <contenttweaker:silver>, <contenttweaker:silver>], [<contenttweaker:silver>, <contenttweaker:silver>, <contenttweaker:silver>]]);
recipes.addShaped(<contenttweaker:silver>, [[<contenttweaker:silvernugget>, <contenttweaker:silvernugget>, <contenttweaker:silvernugget>],[<contenttweaker:silvernugget>, <contenttweaker:silvernugget>, <contenttweaker:silvernugget>], [<contenttweaker:silvernugget>, <contenttweaker:silvernugget>, <contenttweaker:silvernugget>]]);
recipes.addShapeless(<contenttweaker:silvernugget> * 9, [<contenttweaker:silver>]);
recipes.addShapeless(<contenttweaker:silverplate>, [<contenttweaker:silver>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:morganite> * 9, [<contenttweaker:morganiteblock>]);
recipes.addShaped(<contenttweaker:morganiteblock>, [[<contenttweaker:morganite>, <contenttweaker:morganite>, <contenttweaker:morganite>],[<contenttweaker:morganite>, <contenttweaker:morganite>, <contenttweaker:morganite>], [<contenttweaker:morganite>, <contenttweaker:morganite>, <contenttweaker:morganite>]]);
recipes.addShaped(<contenttweaker:morganite>, [[<contenttweaker:morganitenugget>, <contenttweaker:morganitenugget>, <contenttweaker:morganitenugget>],[<contenttweaker:morganitenugget>, <contenttweaker:morganitenugget>, <contenttweaker:morganitenugget>], [<contenttweaker:morganitenugget>, <contenttweaker:morganitenugget>, <contenttweaker:morganitenugget>]]);
recipes.addShapeless(<contenttweaker:morganitenugget> * 9, [<contenttweaker:morganite>]);
recipes.addShapeless(<contenttweaker:morganiteplate>, [<contenttweaker:morganite>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:steel> * 9, [<contenttweaker:steelblock>]);
recipes.addShaped(<contenttweaker:steelblock>, [[<contenttweaker:steel>, <contenttweaker:steel>, <contenttweaker:steel>],[<contenttweaker:steel>, <contenttweaker:steel>, <contenttweaker:steel>], [<contenttweaker:steel>, <contenttweaker:steel>, <contenttweaker:steel>]]);
recipes.addShaped(<contenttweaker:steel>, [[<contenttweaker:steelnugget>, <contenttweaker:steelnugget>, <contenttweaker:steelnugget>],[<contenttweaker:steelnugget>, <contenttweaker:steelnugget>, <contenttweaker:steelnugget>], [<contenttweaker:steelnugget>, <contenttweaker:steelnugget>, <contenttweaker:steelnugget>]]);
recipes.addShapeless(<contenttweaker:steelnugget> * 9, [<contenttweaker:steel>]);
recipes.addShapeless(<contenttweaker:steelplate>, [<contenttweaker:steel>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:tin> * 9, [<contenttweaker:tinblock>]);
recipes.addShaped(<contenttweaker:tinblock>, [[<contenttweaker:tin>, <contenttweaker:tin>, <contenttweaker:tin>],[<contenttweaker:tin>, <contenttweaker:tin>, <contenttweaker:tin>], [<contenttweaker:tin>, <contenttweaker:tin>, <contenttweaker:tin>]]);
recipes.addShaped(<contenttweaker:tin>, [[<contenttweaker:tinnugget>, <contenttweaker:tinnugget>, <contenttweaker:tinnugget>],[<contenttweaker:tinnugget>, <contenttweaker:tinnugget>, <contenttweaker:tinnugget>], [<contenttweaker:tinnugget>, <contenttweaker:tinnugget>, <contenttweaker:tinnugget>]]);
recipes.addShapeless(<contenttweaker:tinnugget> * 9, [<contenttweaker:tin>]);
recipes.addShapeless(<contenttweaker:tinplate>, [<contenttweaker:tin>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:topaz> * 9, [<contenttweaker:topazblock>]);
recipes.addShaped(<contenttweaker:topazblock>, [[<contenttweaker:topaz>, <contenttweaker:topaz>, <contenttweaker:topaz>],[<contenttweaker:topaz>, <contenttweaker:topaz>, <contenttweaker:topaz>], [<contenttweaker:topaz>, <contenttweaker:topaz>, <contenttweaker:topaz>]]);
recipes.addShaped(<contenttweaker:topaz>, [[<contenttweaker:topaznugget>, <contenttweaker:topaznugget>, <contenttweaker:topaznugget>],[<contenttweaker:topaznugget>, <contenttweaker:topaznugget>, <contenttweaker:topaznugget>], [<contenttweaker:topaznugget>, <contenttweaker:topaznugget>, <contenttweaker:topaznugget>]]);
recipes.addShapeless(<contenttweaker:topaznugget> * 9, [<contenttweaker:topaz>]);
recipes.addShapeless(<contenttweaker:topazplate>, [<contenttweaker:topaz>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:blackdiamond> * 9, [<contenttweaker:blackdiamondblock>]);
recipes.addShaped(<contenttweaker:blackdiamondblock>, [[<contenttweaker:blackdiamond>, <contenttweaker:blackdiamond>, <contenttweaker:blackdiamond>],[<contenttweaker:blackdiamond>, <contenttweaker:blackdiamond>, <contenttweaker:blackdiamond>], [<contenttweaker:blackdiamond>, <contenttweaker:blackdiamond>, <contenttweaker:blackdiamond>]]);
recipes.addShaped(<contenttweaker:blackdiamond>, [[<contenttweaker:blackdiamondnugget>, <contenttweaker:blackdiamondnugget>, <contenttweaker:blackdiamondnugget>],[<contenttweaker:blackdiamondnugget>, <contenttweaker:blackdiamondnugget>, <contenttweaker:blackdiamondnugget>], [<contenttweaker:blackdiamondnugget>, <contenttweaker:blackdiamondnugget>, <contenttweaker:blackdiamondnugget>]]);
recipes.addShapeless(<contenttweaker:blackdiamondnugget> * 9, [<contenttweaker:blackdiamond>]);
recipes.addShapeless(<contenttweaker:blackdiamondplate>, [<contenttweaker:blackdiamond>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:chocolatediamond> * 9, [<contenttweaker:chocolatediamondblock>]);
recipes.addShaped(<contenttweaker:chocolatediamondblock>, [[<contenttweaker:chocolatediamond>, <contenttweaker:chocolatediamond>, <contenttweaker:chocolatediamond>],[<contenttweaker:chocolatediamond>, <contenttweaker:chocolatediamond>, <contenttweaker:chocolatediamond>], [<contenttweaker:chocolatediamond>, <contenttweaker:chocolatediamond>, <contenttweaker:chocolatediamond>]]);
recipes.addShaped(<contenttweaker:chocolatediamond>, [[<contenttweaker:chocolatediamondnugget>, <contenttweaker:chocolatediamondnugget>, <contenttweaker:chocolatediamondnugget>],[<contenttweaker:chocolatediamondnugget>, <contenttweaker:chocolatediamondnugget>, <contenttweaker:chocolatediamondnugget>], [<contenttweaker:chocolatediamondnugget>, <contenttweaker:chocolatediamondnugget>, <contenttweaker:chocolatediamondnugget>]]);
recipes.addShapeless(<contenttweaker:chocolatediamondnugget> * 9, [<contenttweaker:chocolatediamond>]);
recipes.addShapeless(<contenttweaker:chocolatediamondplate>, [<contenttweaker:chocolatediamond>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:zircon> * 9, [<contenttweaker:zirconblock>]);
recipes.addShaped(<contenttweaker:zirconblock>, [[<contenttweaker:zircon>, <contenttweaker:zircon>, <contenttweaker:zircon>],[<contenttweaker:zircon>, <contenttweaker:zircon>, <contenttweaker:zircon>], [<contenttweaker:zircon>, <contenttweaker:zircon>, <contenttweaker:zircon>]]);
recipes.addShaped(<contenttweaker:zircon>, [[<contenttweaker:zirconnugget>, <contenttweaker:zirconnugget>, <contenttweaker:zirconnugget>],[<contenttweaker:zirconnugget>, <contenttweaker:zirconnugget>, <contenttweaker:zirconnugget>], [<contenttweaker:zirconnugget>, <contenttweaker:zirconnugget>, <contenttweaker:zirconnugget>]]);
recipes.addShapeless(<contenttweaker:zirconnugget> * 9, [<contenttweaker:zircon>]);
recipes.addShapeless(<contenttweaker:zirconplate>, [<contenttweaker:zircon>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:hepatizon> * 9, [<contenttweaker:hepatizonblock>]);
recipes.addShaped(<contenttweaker:hepatizonblock>, [[<contenttweaker:hepatizon>, <contenttweaker:hepatizon>, <contenttweaker:hepatizon>],[<contenttweaker:hepatizon>, <contenttweaker:hepatizon>, <contenttweaker:hepatizon>], [<contenttweaker:hepatizon>, <contenttweaker:hepatizon>, <contenttweaker:hepatizon>]]);
recipes.addShaped(<contenttweaker:hepatizon>, [[<contenttweaker:hepatizonnugget>, <contenttweaker:hepatizonnugget>, <contenttweaker:hepatizonnugget>],[<contenttweaker:hepatizonnugget>, <contenttweaker:hepatizonnugget>, <contenttweaker:hepatizonnugget>], [<contenttweaker:hepatizonnugget>, <contenttweaker:hepatizonnugget>, <contenttweaker:hepatizonnugget>]]);
recipes.addShapeless(<contenttweaker:hepatizonnugget> * 9, [<contenttweaker:hepatizon>]);
recipes.addShapeless(<contenttweaker:hepatizonplate>, [<contenttweaker:hepatizon>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:moonstone> * 9, [<contenttweaker:moonstoneblock>]);
recipes.addShaped(<contenttweaker:moonstoneblock>, [[<contenttweaker:moonstone>, <contenttweaker:moonstone>, <contenttweaker:moonstone>],[<contenttweaker:moonstone>, <contenttweaker:moonstone>, <contenttweaker:moonstone>], [<contenttweaker:moonstone>, <contenttweaker:moonstone>, <contenttweaker:moonstone>]]);
recipes.addShaped(<contenttweaker:moonstone>, [[<contenttweaker:moonstonenugget>, <contenttweaker:moonstonenugget>, <contenttweaker:moonstonenugget>],[<contenttweaker:moonstonenugget>, <contenttweaker:moonstonenugget>, <contenttweaker:moonstonenugget>], [<contenttweaker:moonstonenugget>, <contenttweaker:moonstonenugget>, <contenttweaker:moonstonenugget>]]);
recipes.addShapeless(<contenttweaker:moonstonenugget> * 9, [<contenttweaker:moonstone>]);
recipes.addShapeless(<contenttweaker:moonstoneplate>, [<contenttweaker:moonstone>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:opal> * 9, [<contenttweaker:opalblock>]);
recipes.addShaped(<contenttweaker:opalblock>, [[<contenttweaker:opal>, <contenttweaker:opal>, <contenttweaker:opal>],[<contenttweaker:opal>, <contenttweaker:opal>, <contenttweaker:opal>], [<contenttweaker:opal>, <contenttweaker:opal>, <contenttweaker:opal>]]);
recipes.addShaped(<contenttweaker:opal>, [[<contenttweaker:opalnugget>, <contenttweaker:opalnugget>, <contenttweaker:opalnugget>],[<contenttweaker:opalnugget>, <contenttweaker:opalnugget>, <contenttweaker:opalnugget>], [<contenttweaker:opalnugget>, <contenttweaker:opalnugget>, <contenttweaker:opalnugget>]]);
recipes.addShapeless(<contenttweaker:opalnugget> * 9, [<contenttweaker:opal>]);
recipes.addShapeless(<contenttweaker:opalplate>, [<contenttweaker:opal>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:peridot> * 9, [<contenttweaker:peridotblock>]);
recipes.addShaped(<contenttweaker:peridotblock>, [[<contenttweaker:peridot>, <contenttweaker:peridot>, <contenttweaker:peridot>],[<contenttweaker:peridot>, <contenttweaker:peridot>, <contenttweaker:peridot>], [<contenttweaker:peridot>, <contenttweaker:peridot>, <contenttweaker:peridot>]]);
recipes.addShaped(<contenttweaker:peridot>, [[<contenttweaker:peridotnugget>, <contenttweaker:peridotnugget>, <contenttweaker:peridotnugget>],[<contenttweaker:peridotnugget>, <contenttweaker:peridotnugget>, <contenttweaker:peridotnugget>], [<contenttweaker:peridotnugget>, <contenttweaker:peridotnugget>, <contenttweaker:peridotnugget>]]);
recipes.addShapeless(<contenttweaker:peridotnugget> * 9, [<contenttweaker:peridot>]);
recipes.addShapeless(<contenttweaker:peridotplate>, [<contenttweaker:peridot>,<minecraft:leather>]);

recipes.addShapeless(<contenttweaker:rosegold> * 9, [<contenttweaker:rosegoldblock>]);
recipes.addShaped(<contenttweaker:rosegoldblock>, [[<contenttweaker:rosegold>, <contenttweaker:rosegold>, <contenttweaker:rosegold>],[<contenttweaker:rosegold>, <contenttweaker:rosegold>, <contenttweaker:rosegold>], [<contenttweaker:rosegold>, <contenttweaker:rosegold>, <contenttweaker:rosegold>]]);
recipes.addShaped(<contenttweaker:rosegold>, [[<contenttweaker:rosegoldnugget>, <contenttweaker:rosegoldnugget>, <contenttweaker:rosegoldnugget>],[<contenttweaker:rosegoldnugget>, <contenttweaker:rosegoldnugget>, <contenttweaker:rosegoldnugget>], [<contenttweaker:rosegoldnugget>, <contenttweaker:rosegoldnugget>, <contenttweaker:rosegoldnugget>]]);
recipes.addShapeless(<contenttweaker:rosegoldnugget> * 9, [<contenttweaker:rosegold>]);
recipes.addShapeless(<contenttweaker:rosegoldplate>, [<contenttweaker:rosegold>,<minecraft:leather>]);

recipes.addShapeless(<minecraft:gunpowder> * 3, [<contenttweaker:sulfur>,<contenttweaker:saltpeter>,<minecraft:coal:1>]);
recipes.addShapeless(<minecraft:gunpowder> * 3, [<contenttweaker:sulfur>,<contenttweaker:saltpeter>,<minecraft:coal>]);

recipes.addShaped(<minecraft:ladder> * 3, [[<contenttweaker:oakstick>, null, <contenttweaker:oakstick>],[<contenttweaker:oakstick>, <contenttweaker:oakstick>, <contenttweaker:oakstick>], [<contenttweaker:oakstick>, null, <contenttweaker:oakstick>]]);































