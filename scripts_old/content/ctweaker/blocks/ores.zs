#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val stoneorezero as string[] = [
    "martiancoal",
    "venusiancoal",
];

val stoneoreone as string[] = [
    "bismuth",
    "jupitercopper",
    "jupiteriron",
    "jupitertin",
    "lunarcopper",
    "lunariron",
    "lunartin",
    "martiancopper",
    "martianiron",
    "martiantin",
    "mercuriancopper",
    "mercurianiron",
    "mercuriantin",
    "nativecopper",
    "nativeiron",
    "nativetin",
    "neptunecopper",
    "neptuneiron",
    "neptunetin",
    "persephonecopper",
    "persephoneiron",
    "persephonetin",
    "saturncopper",
    "saturniron",
    "saturntin",
    "uranuscopper",
    "uranusiron",
    "uranustin",
    "venusiancopper",
    "venusianiron",
    "venusiantin",
];

val stoneoretwo as string[] = [
    "aquamarine",
    "jupiterdiamond",
    "jupitergold",
    "lunardiamond",
    "lunargold",
    "martiandiamond",
    "martianemerald",
    "martiangold",
    "martianlapis",
    "martianmalachite",
    "meteorirondiamondpallasite",
    "meteorironperidotpallasite",
    "martianredstone",
    "mercuriandiamond",
    "mercurianemerald",
    "mercuriangold",
    "moonstone",
    "morganite",
    "nativegold",
    "nethergold",
    "neptunediamond",
    "neptunegold",
    "opal",
    "persephonediamond",
    "persephonegold",
    "phosphorus",
    "ruby",
    "sapphire",
    "saturndiamond",
    "saturngold",
    "silver",
    "topaz",
    "uranusdiamond",
    "uranusgold",
];

val metaloretwo as string[] = [
    "electrumdiamondpallasite",
    "electrum",
    "electrumperidotpallasite",
    "golddiamondpallasite",
    "goldperidotpallasite",
];

val endore as string[] = [
    "amethyst",
    "citrine",
];

val obsidianore as string[] = [
    "obsidiancopper",
    "obsidiandiamond",
    "obsidianemerald",
    "obsidiangold",
    "obsidianiron",
    "obsidianlapis",
    "obsidianmalachite",
    "obsidianredstone",
    "obsidiantin",
];

for s in stoneorezero {
    var b as Block = VanillaFactory.createBlock(`${s}ore`, <blockmaterial:rock>);
    b.setBlockHardness(0.5);
    b.setBlockResistance(2.5);
    b.setToolClass("pickaxe");
    b.setToolLevel(0);
    b.register();
}

for t in stoneoreone {
    var c as Block = VanillaFactory.createBlock(`${t}ore`, <blockmaterial:rock>);
    c.setBlockHardness(0.5);
    c.setBlockResistance(2.5);
    c.setToolClass("pickaxe");
    c.setToolLevel(1);
    c.register();
}

for u in metaloretwo {
    var d as Block = VanillaFactory.createBlock(`${u}ore`, <blockmaterial:iron>);
    d.setBlockHardness(5.0);
    d.setBlockResistance(6.0);
    d.setToolClass("pickaxe");
    d.setToolLevel(2);
    d.register();
}

for v in stoneoretwo {
    var e as Block = VanillaFactory.createBlock(`${v}ore`, <blockmaterial:rock>);
    e.setBlockHardness(3.0);
    e.setBlockResistance(3.0);
    e.setToolClass("pickaxe");
    e.setToolLevel(2);
    e.register();
}

for w in endore {
    var f as Block = VanillaFactory.createBlock(`${w}ore`, <blockmaterial:rock>);
    f.setBlockHardness(3.0);
    f.setBlockResistance(9.0);
    f.setToolClass("pickaxe");
    f.setToolLevel(2);
    f.register();
}

for x in obsidianore {
    var g as Block = VanillaFactory.createBlock(`${x}ore`, <blockmaterial:rock>);
    g.setBlockHardness(50.0);
    g.setBlockResistance(6000.0);
    g.setToolClass("pickaxe");
    g.setToolLevel(3);
    g.register();
}
