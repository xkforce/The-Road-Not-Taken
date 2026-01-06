#loader preinit contenttweaker crafttweaker
#priority 1001

zenClass Color {
    static colors as Color[string]$orderly = {};

    var id as string = "";
    var hex as string = "";
    var mixed as string[][int]$orderly = {};

    /**
     * Creates a new color.
     * @param _id The id of the color.
     * @param _hex The hex code of the color.
     */
    zenConstructor(_id as string, _hex as string) {
        id = _id;
        hex = _hex;
        colors[id] = this;
        log.trace(`🖌 Registering new color: *${id}*`, "preinit");
    }

    /**
     * Gets the rgb value of the color.
     * @return The rgb value of the color.
     */
    function rgb() as int {
        return mods.zenutils.HexHelper.toDecInteger(hex);
    }

    /**
     * Gets the lang key of the color.
     * @return The lang key of the color.
     */
    function langKey() as string {
        return `${modpackID}.palette.${id}.name`;
    }

    /**
     * Gets the translated name of the color.
     * @return The name of the color.
     */
    function getName() as string {
        return mods.zenutils.I18n.format(langKey());
    }

    /**
     * Adds a combination of colors that makes this color.
     * @param _mixed The color to add.
     */
    function addMix(_mixed as Color[]) as void {
        if (_mixed.length != 2) {
            log.error(`Color ${id} can only be mixed with 2 colors!`);
            return;
        }
        mixed[mixed.length] = [_mixed[0].id, _mixed[1].id];
        log.trace(`🎨 Adding mix of colors to *${getName()}*: *${_mixed[0].getName()}* and *${_mixed[1].getName()}*`, "preinit");
    }
}

/**
 * Gets a color from the color registry.
 * @param cid The id of the color.
 * @return The color.
 */
global getColor as function(string)Color = function(cid as string) as Color {
    return Color.colors[cid];
};

/**
 * Gets a blended color from the color registry.
 * @param id1 The id of the first color.
 * @param id2 The id of the second color.
 * @return The blended color.
 */
global getBlend as function(string, string)Color = function(id1 as string, id2 as string) as Color {
    for id, color in Color.colors {
        for i in 0 to color.mixed.length {
            if (color.mixed[i] has id1 && color.mixed[i] has id2) {
                return color;
            }
        }
    }
    log.error(`Color blend from ids ${id1} and ${id2} not found!`);
    return null;
};

global COLORS as Color[string]$orderly = Color.colors;
