#loader contenttweaker

static miscs as string[] = [
    "charcoalnugget",
    "coalnugget",
    "coke",
    "cokenugget",
    "eyeofpurpur",
    "gear",
    "graphite",
    "graphitenugget",
    "phosphorus",
    "purpursalt",
    "redflint",
    "salt",
    "saltpeter",
    "sulfur",
    "moss",
    "brownlichen",
    "redlichen",
    "orangelichen",
    "yellowlichen"
];

for misc in miscs {
    if (miscs.indexOf(misc) == 0) {
        COT_UTILS.createCreativeTabAndItem(misc, `${MODPACK.id}.miscitems`);
    } else {
        COT_UTILS.createItem(misc);
    }
}

for stick in WOOD_TYPES {
    COT_UTILS.createItem(`${stick}stick`);
}
COT_UTILS.resetCreativeTab();
