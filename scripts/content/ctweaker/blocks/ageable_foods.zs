#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val foods as string[] = [
    "mildasiagocheese",
    "mediumasiagocheese",
    "sharpasiagocheese",
    "extrasharpasiagocheese",
    "matureasiagocheese",
    "mildbluecheese",
    "mediumbluecheese",
    "sharpbluecheese",
    "extrasharpbluecheese",
    "maturebluecheese",
    "mildcheddarcheese",
    "mediumcheddarcheese",
    "sharpcheddarcheese",
    "extrasharpcheddarcheese",
    "maturecheddarcheese",
    "mildchevrecheese",
    "mediumchevrecheese",
    "sharpchevrecheese",
    "extrasharpchevrecheese",
    "maturechevrecheese",
    "mildgoudacheese",
    "mediumgoudacheese",
    "sharpgoudacheese",
    "extrasharpgoudacheese",
    "maturegoudacheese",
    "mildhabanerojackcheese",
    "mediumhabanerojackcheese",
    "sharphabanerojackcheese",
    "extrasharphabanerojackcheese",
    "maturehabanerojackcheese",
    "mildhavarticheese",
    "mediumhavarticheese",
    "sharphavarticheese",
    "extrasharphavarticheese",
    "maturehavarticheese",
    "mildmanchegocheese",
    "mediummanchegocheese",
    "sharpmanchegocheese",
    "extrasharpmanchegocheese",
    "maturemanchegocheese",
    "mildmontereyjackcheese",
    "mediummontereyjackcheese",
    "sharpmontereyjackcheese",
    "extrasharpmontereyjackcheese",
    "maturemontereyjackcheese",
    "mildparmigianoreggianocheese",
    "mediumparmigianoreggianocheese",
    "sharpparmigianoreggianocheese",
    "extrasharpparmigianoreggianocheese",
    "matureparmigianoreggianocheese",
    "mildpepperjackcheese",
    "mediumpepperjackcheese",
    "sharppepperjackcheese",
    "extrasharppepperjackcheese",
    "maturepepperjackcheese",
    "mildprovolonecheese",
    "mediumprovolonecheese",
    "sharpprovolonecheese",
    "extrasharpprovolonecheese",
    "matureprovolonecheese",
    "mildswisscheese",
    "mediumswisscheese",
    "sharpswisscheese",
    "extrasharpswisscheese",
    "matureswisscheese",
    "mildroquefortcheese",
    "mediumroquefortcheese",
    "sharproquefortcheese",
    "extrasharproquefortcheese",
    "matureroquefortcheese",
];

for food in foods {
    var block as Block = VanillaFactory.createBlock(`${food}block`, <blockmaterial:sponge>);
    block.setBlockHardness(0.5);
    block.setBlockResistance(2.5);
    block.setToolLevel(0);
    block.register();
}
