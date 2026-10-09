#loader crafttweaker
#modloaded additions
#priority 1

import crafttweaker.item.IItemStack;

val armorMap as IItemStack[][string] = {
    "amethyst": [
        <additions:items-amethysthelmet>, <additions:items-amethystchestplate>,
        <additions:items-amethystleggings>, <additions:items-amethystboots>
    ],
    "aquamarine": [
        <additions:items-aquamarinehelmet>, <additions:items-aquamarinechestplate>,
        <additions:items-aquamarineleggings>, <additions:items-aquamarineboots>
    ],
    "billon": [
        <additions:items-billonhelmet>, <additions:items-billonchestplate>,
        <additions:items-billonleggings>, <additions:items-billonboots>
    ],
    "bismuth": [
        <additions:items-bismuthhelmet>, <additions:items-bismuthchestplate>,
        <additions:items-bismuthleggings>, <additions:items-bismuthboots>
    ],
    "blackdiamond": [
        <additions:items-blackdiamondhelmet>, <additions:items-blackdiamondchestplate>,
        <additions:items-blackdiamondleggings>, <additions:items-blackdiamondboots>
    ],
    "brass": [
        <additions:items-brasshelmet>, <additions:items-brasschestplate>,
        <additions:items-brassleggings>, <additions:items-brassboots>
    ],
    "bronze": [
        <additions:items-bronzehelmet>, <additions:items-bronzechestplate>,
        <additions:items-bronzeleggings>, <additions:items-bronzeboots>
    ],
    "ceresite": [
        <additions:items-ceresitehelmet>, <additions:items-ceresitechestplate>,
        <additions:items-ceresiteleggings>, <additions:items-ceresiteboots>
    ],
    "chocolatediamond": [
        <additions:items-chocolatediamondhelmet>, <additions:items-chocolatediamondchestplate>,
        <additions:items-chocolatediamondleggings>, <additions:items-chocolatediamondboots>
    ],
    "citrine": [
        <additions:items-citrinehelmet>, <additions:items-citrinechestplate>,
        <additions:items-citrineleggings>, <additions:items-citrineboots>
    ],
    "electrum": [
        <additions:items-electrumhelmet>, <additions:items-electrumchestplate>,
        <additions:items-electrumleggings>, <additions:items-electrumboots>
    ],
    "emerald": [
        <additions:items-emeraldhelmet>, <additions:items-emeraldchestplate>,
        <additions:items-emeraldleggings>, <additions:items-emeraldboots>
    ],
    "fluorite": [
        <additions:items-fluoritehelmet>, <additions:items-fluoritechestplate>,
        <additions:items-fluoriteleggings>, <additions:items-fluoriteboots>
    ],
    "hepatizon": [
        <additions:items-hepatizonhelmet>, <additions:items-hepatizonchestplate>,
        <additions:items-hepatizonleggings>, <additions:items-hepatizonboots>
    ],
    "lonsdaleite": [
        <additions:items-lonsdaleitehelmet>, <additions:items-lonsdaleitechestplate>,
        <additions:items-lonsdaleiteleggings>, <additions:items-lonsdaleiteboots>
    ],
    "meteoriron": [
        <additions:items-meteorironhelmet>, <additions:items-meteorironchestplate>,
        <additions:items-meteorironleggings>, <additions:items-meteorironboots>
    ],
    "moonstone": [
        <additions:items-moonstonehelmet>, <additions:items-moonstonechestplate>,
        <additions:items-moonstoneleggings>, <additions:items-moonstoneboots>
    ],
    "morganite": [
        <additions:items-morganitehelmet>, <additions:items-morganitechestplate>,
        <additions:items-morganiteleggings>, <additions:items-morganiteboots>
    ],
    "opal": [
        <additions:items-opalhelmet>, <additions:items-opalchestplate>,
        <additions:items-opalleggings>, <additions:items-opalboots>
    ],
    "peridot": [
        <additions:items-peridothelmet>, <additions:items-peridotchestplate>,
        <additions:items-peridotleggings>, <additions:items-peridotboots>
    ],
    "platinum": [
        <additions:items-platinumhelmet>, <additions:items-platinumchestplate>,
        <additions:items-platinumleggings>, <additions:items-platinumboots>
    ],
    "rosegold": [
        <additions:items-rosegoldhelmet>, <additions:items-rosegoldchestplate>,
        <additions:items-rosegoldleggings>, <additions:items-rosegoldboots>
    ],
    "ruby": [
        <additions:items-rubyhelmet>, <additions:items-rubychestplate>,
        <additions:items-rubyleggings>, <additions:items-rubyboots>
    ],
    "sapphire": [
        <additions:items-sapphirehelmet>, <additions:items-sapphirechestplate>,
        <additions:items-sapphireleggings>, <additions:items-sapphireboots>
    ],
    "silver": [
        <additions:items-silverhelmet>, <additions:items-silverchestplate>,
        <additions:items-silverleggings>, <additions:items-silverboots>
    ],
    "steel": [
        <additions:items-steelhelmet>, <additions:items-steelchestplate>,
        <additions:items-steelleggings>, <additions:items-steelboots>
    ],
    "tin": [
        <additions:items-tinhelmet>, <additions:items-tinchestplate>,
        <additions:items-tinleggings>, <additions:items-tinboots>
    ],
    "topaz": [
        <additions:items-topazhelmet>, <additions:items-topazchestplate>,
        <additions:items-topazleggings>, <additions:items-topazboots>
    ],
    "whitecopper": [
        <additions:items-whitecopperhelmet>, <additions:items-whitecopperchestplate>,
        <additions:items-whitecopperleggings>, <additions:items-whitecopperboots>
    ],
    "whitegold": [
        <additions:items-whitegoldhelmet>, <additions:items-whitegoldchestplate>,
        <additions:items-whitegoldleggings>, <additions:items-whitegoldboots>
    ],
    "zinc": [
        <additions:items-zinchelmet>, <additions:items-zincchestplate>,
        <additions:items-zincleggings>, <additions:items-zincboots>
    ],
    "zircon": [
        <additions:items-zirconhelmet>, <additions:items-zirconchestplate>,
        <additions:items-zirconleggings>, <additions:items-zirconboots>
    ],
};

for material, armorList in armorMap {
    val inputName as string = `contenttweaker:${material}plate`;
    if (itemLoaded(inputName)) {
        val input as IItemStack = item(inputName);
        recipes.addShaped(material + " Helmet", armorList[0], [
            [input, input, input],
            [input, null, input]
        ]);
        recipes.addShaped(material + " Chestplate", armorList[1], [
            [input, null, input],
            [input, input, input],
            [input, input, input]
        ]);
        recipes.addShaped(material + " Leggings", armorList[2], [
            [input, input, input],
            [input, null, input],
            [input, null, input]
        ]);
        recipes.addShaped(material + " Boots", armorList[3], [
            [input, null, input],
            [input, null, input]
        ]);
    } else {
        log.warn("Armor material " + material + " not found, skipping armor recipe.");
    }
}
