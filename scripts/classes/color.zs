#loader preinit contenttweaker crafttweaker
#priority 10000000

zenClass Color {
    static colors as Color[string] = {};

    var _id as string = "";
    var _hex as string = "";
    var _mixed as string[][int] = {};

    /*
     * Creates a new color.
     * @param id The id of the color.
     * @param hex The hex code of the color.
     * @param mixed The colors to mix with.
     */
    zenConstructor(id as string, hex as string, mixed as Color[]) {
        _id = id;
        _hex = hex;
        _mixed[mixed.length] = [mixed[0]._id, mixed[1]._id];
        colors[id] = this;
    }

    /*
     * Creates a new color.
     * @param id The id of the color.
     * @param hex The hex code of the color.
     */
    zenConstructor(id as string, hex as string) {
        _id = id;
        _hex = hex;
        colors[id] = this;
    }

    /*
     * Gets the id of the color.
     * @return The id of the color.
     */
    function id() as string {
        return _id;
    }

    /*
     * Gets the hex code of the color.
     * @return The hex code of the color.
     */
    function hex() as string {
        return _hex;
    }

    /*
     * Gets the lang key of the color.
     * @return The lang key of the color.
     */
    function langKey() as string {
        return `${modpackID}.color.${_id}.name`;
    }

    /*
     * Adds a combination of colors that makes this color.
     * @param mixed The color to add.
     */
    function addMixed(mixed as Color[]) as void {
        if (mixed.length != 2) {
            error(`Color ${_id} can only be mixed with 2 colors!`);
            return;
        }
        this._mixed[_mixed.length] = [mixed[0]._id, mixed[1]._id];
    }
}

/*
 * Gets a color from the color registry.
 * @param cid The id of the color.
 * @return The color.
 */
global getColor as function(string)Color = function(cid as string) as Color {
    return Color.colors[cid];
};

/*
 * Gets a blended color from the color registry.
 * @param id1 The id of the first color.
 * @param id2 The id of the second color.
 * @return The blended color.
 */
global getBlend as function(string, string)Color = function(id1 as string, id2 as string) as Color {
    for id, color in Color.colors {
        for i in 0 to color._mixed.length {
            if (color._mixed[i] has id1 && color._mixed[i] has id2) {
                return color;
            }
        }
    }
    error(`Color blend from ids ${id1} and ${id2} not found!`);
    return null;
};

// Generation 0
global Black as Color = Color("black", "#1D1D21");
global Blue as Color = Color("blue", "#3C44AA");
global Red as Color = Color("red", "#B02E26");
global White as Color = Color("white", "#F9FFFE");
global Yellow as Color = Color("yellow", "#FED83D");

// Generation 1
global WineRed as Color = Color("wine_red", "#612925", [Black, Red]);
global NavyBlue as Color = Color("navy_blue", "#32355E", [Blue, Black]);
global Gray as Color = Color("gray", "#474F52", [White, Black]);
global Green as Color = Color("green", "#5E7C16", [Yellow, Blue]);
global LightBlue as Color = Color("light_blue", "#3AB3DA", [White, Blue]);
global Orange as Color = Color("orange", "#F9801D", [Yellow, Red]);
global Olive as Color = Color("olive", "#71833B", [Yellow, Black]);
global Pink as Color = Color("pink", "#F38BAA", [White, Red]);
global Purple as Color = Color("purple", "#8932B8", [Blue, Red]);
global Cream as Color = Color("cream", "#FBEC89", [White, Yellow]);

// Generation 2
global Cyan as Color = Color("cyan", "#169C9C", [Green, Blue]);
global Apricot as Color = Color("apricot", "#FAB06F", [Yellow, Pink]);
global SteelBlue as Color = Color("steel_blue", "#346576", [Black, LightBlue]);
global Amber as Color = Color("amber", "#FCAB29", [Yellow, Orange]);
global Blush as Color = Color("blush", "#F7BECF", [White, Pink]);
global Grape as Color = Color("grape", "#605178", [LightBlue, WineRed]);
global Fern as Color = Color("fern", "#4E692C", [Gray, Green]);
global Brown as Color = Color("brown", "#835432", [Orange, Black]);
global Aubergine as Color = Color("aubergine", "#3F2226", [Black, WineRed]);
global Beige as Color = Color("butterum", "#BD8A65", [Pink, Olive]);
global DarkForest as Color = Color("darkforest", "#546F5E", [Cyan, Brown]);
global ClassyMauve as Color = Color("classy_mauve", "#BA969E", [Cream, Purple]);
global CreamPuff as Color = Color("cream_puff", "#F8B89A", [Cream, Pink]);
global SeaGreen as Color = Color("seagreen", "#5CA46F", [LightBlue, Olive]);
global Cerulean as Color = Color("cerulean", "#3B78C3", [Blue, LightBlue]);
global Pistachio as Color = Color("pistachio", "#8CD873", [Yellow, LightBlue]);
global HazelBrown as Color = Color("hazel_brown", "#AB7141", [Orange, Olive]);
global Honey as Color = Color("honey", "#A7822A", [Orange, Olive]);
global ImperialPurple as Color = Color("imperial_purple", "#552E62", [Blue, WineRed]);
global Fig as Color = Color("fig", "#845468", [Black, Pink]);
global JapaneseBonsai as Color = Color("japanese_bonsai", "#87A599", [Blue, Cream]);
global JovialJade as Color = Color("jovial_jade", "#90DCA9", [White, LightBlue]);
global KissACorn as Color = Color("kiss_a_corn", "#BDC685", [Yellow, Black]);
global Vermilion as Color = Color("vermilion", "#D44E22", [Red, Orange]);
global LavaStone as Color = Color("lava_stone", "#3C4258", [Gray, NavyBlue]);
global LightGray as Color = Color("light_gray", "#9D9D97", [White, Gray]);
global Lime as Color = Color("lime", "#80C71F", [White, Green]);
global Oregano as Color = Color("oregano", "#7D6E49", [Green, Purple]);
global SlateBlue as Color = Color("slateblue", "#656AC7", [LightBlue, Purple]);
global Chartreuse as Color = Color("chartreuse", "#AFB526", [Yellow, Green]);
global Lavender as Color = Color("lavender", "#8E5FA8", [Blue, Pink]);
global Magenta as Color = Color("magenta", "#C74EBD", [White, Purple]);
global MossGardens as Color = Color("moss_gardens", "#7D8D5F", [Black, Cream]);
global MysteriousBlue as Color = Color("mysterious_blue", "#487E8E", [LightBlue, Gray]);
global NoblePlum as Color = Color("noble_plum", "#7C296C", [Purple, WineRed]);
global Mint as Color = Color("mint", "#8ED6EF", [White, LightBlue]);
global PhoenixRed as Color = Color("phoenix_red", "#DF7665", [Red, Cream]);
global Mauve as Color = Color("mauve", "#B67294", [White, WineRed]);
global RedViolet as Color = Color("red_violet", "#9F3068", [Red, Purple]);
global ReadingTeaLeaves as Color = Color("reading_tea_leaves", "#826968", [Olive, Purple]);
global RuthlessEmpress as Color = Color("ruthless_empress", "#5B378F", [Purple, NavyBlue]);
global Siren as Color = Color("siren", "#693242", [Red, NavyBlue]);
global RoseRed as Color = Color("rose_red", "#D7536D", [Red, Pink]);
global MossGreen as Color = Color("moss_green", "#8C9C4D", [Yellow, Gray]);
global DarkGreen as Color = Color("dark_green", "#334B18", [Black, Green]);
global Coffee as Color = Color("coffee", "#684B1B", [Green, WineRed]);
global VinCuit as Color = Color("vin_cuit", "#B27563", [Cream, WineRed]);
global PaleViolet as Color = Color("pale_violet", "#9890B9", [LightBlue, Pink]);
global YellowMana as Color = Color("yellow_mana", "#FAF6BE", [White, Cream]);

Black.addMixed([Black, Gray]);
Red.addMixed([Red, Brown]);
White.addMixed([White, LightGray]);
WineRed.addMixed([Red, Gray]);
Gray.addMixed([Black, LightGray]);
LightBlue.addMixed([LightBlue, Cyan]);
LightBlue.addMixed([LightBlue, LightGray]);
Orange.addMixed([Pink, Orange]);
Olive.addMixed([Lime, Brown]);
Olive.addMixed([Gray, Lime]);
Olive.addMixed([Orange, Cyan]);
Pink.addMixed([White, Magenta]);
Purple.addMixed([Blue, Magenta]);
Purple.addMixed([Purple, Magenta]);
SteelBlue.addMixed([Black, Cyan]);
SteelBlue.addMixed([Gray, Cyan]);
Amber.addMixed([White, Orange]);
Grape.addMixed([Gray, Purple]);
Grape.addMixed([Blue, Brown]);
Fern.addMixed([Black, Lime]);
Brown.addMixed([Red, Green]);
Beige.addMixed([Yellow, Purple]);
Beige.addMixed([Yellow, Magenta]);
Beige.addMixed([White, Brown]);
DarkForest.addMixed([LightBlue, Brown]);
DarkForest.addMixed([Gray, LightGray]);
Cyan.addMixed([LightGray, Cyan]);
SeaGreen.addMixed([LightBlue, Green]);
SeaGreen.addMixed([Blue, Lime]);
SeaGreen.addMixed([Green, Cyan]);
Cerulean.addMixed([Blue, Cyan]);
Pistachio.addMixed([Yellow, Cyan]);
Pistachio.addMixed([LightBlue, Lime]);
Pistachio.addMixed([Lime, Cyan]);
Pistachio.addMixed([White, Lime]);
HazelBrown.addMixed([Orange, Purple]);
HazelBrown.addMixed([Red, Lime]);
HazelBrown.addMixed([Orange, Brown]);
HazelBrown.addMixed([Green, Magenta]);
HazelBrown.addMixed([LightGray, Brown]);
Honey.addMixed([Orange, Green]);
Honey.addMixed([Yellow, Brown]);
Honey.addMixed([Pink, Green]);
Honey.addMixed([Orange, LightGray]);
Honey.addMixed([Lime, Magenta]);
Fig.addMixed([Purple, Brown]);
Fig.addMixed([Red, LightBlue]);
Fig.addMixed([Red, Cyan]);
Fig.addMixed([Magenta, Brown]);
Lime.addMixed([LightGray, Lime]);
Oregano.addMixed([Gray, Orange]);
Oregano.addMixed([Blue, Orange]);
Oregano.addMixed([Green, Brown]);
SlateBlue.addMixed([Magenta, Cyan]);
SlateBlue.addMixed([Purple, Cyan]);
SlateBlue.addMixed([Blue, LightGray]);
SlateBlue.addMixed([LightBlue, Magenta]);
Chartreuse.addMixed([Yellow, Lime]);
Chartreuse.addMixed([Orange, Lime]);
Chartreuse.addMixed([Pink, Lime]);
Lavender.addMixed([Purple, LightGray]);
Lavender.addMixed([Gray, Magenta]);
Magenta.addMixed([Pink, Purple]);
Mint.addMixed([White, Cyan]);
Mauve.addMixed([LightGray, Magenta]);
Mauve.addMixed([Pink, Gray]);
Mauve.addMixed([Pink, Magenta]);
RedViolet.addMixed([Red, Magenta]);
RoseRed.addMixed([Red, LightGray]);
MossGreen.addMixed([Green, LightGray]);
MossGreen.addMixed([LightBlue, Orange]);
MossGreen.addMixed([Green, Lime]);
Coffee.addMixed([Gray, Brown]);
Coffee.addMixed([Black, Brown]);
PaleViolet.addMixed([Pink, Cyan]);

for id, color in Color.colors {
    info(`Color ${id} can be mixed from ${color._mixed.length} color combinations.`);
}

global COLORS as Color[string] = Color.colors;
