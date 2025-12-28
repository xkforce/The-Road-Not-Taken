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
global ArcaneRed as Color = Color("arcane_red", "#612925", [Black, Red]);
global Galaxea as Color = Color("galaxea", "#32355E", [Blue, Black]);
global Gray as Color = Color("gray", "#474F52", [White, Black]);
global Green as Color = Color("green", "#5E7C16", [Yellow, Blue]);
global LightBlue as Color = Color("light_blue", "#3AB3DA", [White, Blue]);
global Orange as Color = Color("orange", "#F9801D", [Yellow, Red]);
global PestoDiRucola as Color = Color("pesto_di_rucola", "#71833B", [Yellow, Black]);
global Pink as Color = Color("pink", "#F38BAA", [White, Red]);
global Purple as Color = Color("purple", "#8932B8", [Blue, Red]);
global SpaetzleYellow as Color = Color("spaetzle_yellow", "#FBEC89", [White, Yellow]);

// Generation 2
global Cyan as Color = Color("cyan", "#169C9C", [Green, Blue]);

global Apricot as Color = Color("apricot", "#FAB06F", [Yellow, Pink]);
global Atlantis as Color = Color("atlantis", "#346576", [Black, LightBlue]);
global Beer as Color = Color("beer", "#FCAB29", [Yellow, Orange]);
global BerriesNCream as Color = Color("berries_n_cream", "#F7BECF", [White, Pink]);
global BerryJam as Color = Color("berry_jam", "#605178", [LightBlue, ArcaneRed]);
global BimiGreen as Color = Color("bimi_green", "#4E692C", [Gray, Green]);
global Brown as Color = Color("brown", "#835432", [Orange, Black]);
global BruisedPlum as Color = Color("brused_plum", "#3F2226", [Black, ArcaneRed]);
global Butterum as Color = Color("butterum", "#BD8A65", [Pink, PestoDiRucola]);
global Cactus as Color = Color("cactus", "#546F5E", [Cyan, Brown]);
global ClassyMauve as Color = Color("classy_mauve", "#BA969E", [SpaetzleYellow, Purple]);
global CreamPuff as Color = Color("cream_puff", "#F8B89A", [SpaetzleYellow, Pink]);
global Endo as Color = Color("endo", "#5CA46F", [LightBlue, PestoDiRucola]);
global FadingNight as Color = Color("fading_night", "#3B78C3", [Blue, LightBlue]);
global Fluorescence as Color = Color("fluorescence", "#8CD873", [Yellow, LightBlue]);
global GingerDough as Color = Color("ginger_dough", "#AB7141", [Orange, PestoDiRucola]);
global Honey as Color = Color("honey", "#A7822A", [Orange, PestoDiRucola]);
global ImperialPurple as Color = Color("imperial_purple", "#552E62", [Blue, ArcaneRed]);
global IndianSilk as Color = Color("indian_silk", "#845468", [Black, Pink]);
global JapaneseBonsai as Color = Color("japanese_bonsai", "#87A599", [Blue, SpaetzleYellow]);
global JovialJade as Color = Color("jovial_jade", "#90DCA9", [White, LightBlue]);
global KissACorn as Color = Color("kiss_a_corn", "#BDC685", [Yellow, Black]);
global Langoustine as Color = Color("langoustine", "#D44E22", [Red, Orange]);
global LavaStone as Color = Color("lava_stone", "#3C4258", [Gray, Galaxea]);
global LightGray as Color = Color("light_gray", "#9D9D97", [White, Gray]);
global Lime as Color = Color("lime", "#80C71F", [White, Green]);
global Lizard as Color = Color("lizard", "#7D6E49", [Green, Purple]);
global LochNess as Color = Color("loch_ness", "#656AC7", [LightBlue, Purple]);
global LushBamboo as Color = Color("lush_bamboo", "#AFB526", [Yellow, Green]);
global LustyLavender as Color = Color("lusty_lavender", "#8E5FA8", [Blue, Pink]);
global Magenta as Color = Color("magenta", "#C74EBD", [White, Purple]);
global MossGardens as Color = Color("moss_gardens", "#7D8D5F", [Black, SpaetzleYellow]);
global MysteriousBlue as Color = Color("mysterious_blue", "#487E8E", [LightBlue, Gray]);
global NoblePlum as Color = Color("noble_plum", "#7C296C", [Purple, ArcaneRed]);
global OverTheSky as Color = Color("over_the_sky", "#8ED6EF", [White, LightBlue]);
global PhoenixRed as Color = Color("phoenix_red", "#DF7665", [Red, SpaetzleYellow]);
global PinkyPickle as Color = Color("pinky_pickle", "#B67294", [White, ArcaneRed]);
global PlasticLips as Color = Color("plastic_lips", "#9F3068", [Red, Purple]);
global ReadingTeaLeaves as Color = Color("reading_tea_leaves", "#826968", [PestoDiRucola, Purple]);
global RuthlessEmpress as Color = Color("ruthless_empress", "#5B378F", [Purple, Galaxea]);
global Siren as Color = Color("siren", "#693242", [Red, Galaxea]);
global StrawberryMoon as Color = Color("strawberry_moon", "#D7536D", [Red, Pink]);
global TotallyBroccoli as Color = Color("totally_broccoli", "#8C9C4D", [Yellow, Gray]);
global TreetopCathedral as Color = Color("treetop_cathedral", "#334B18", [Black, Green]);
global VeryCoffee as Color = Color("very_coffee", "#684B1B", [Green, ArcaneRed]);
global VinCuit as Color = Color("vin_cuit", "#B27563", [SpaetzleYellow, ArcaneRed]);
global WizardsBrew as Color = Color("wizards_brew", "#9890B9", [LightBlue, Pink]);
global YellowMana as Color = Color("yellow_mana", "#FAF6BE", [White, SpaetzleYellow]);

Black.addMixed([Black, Gray]);
Red.addMixed([Red, Brown]);
White.addMixed([White, LightGray]);
ArcaneRed.addMixed([Red, Gray]);
Gray.addMixed([Black, LightGray]);
LightBlue.addMixed([LightBlue, Cyan]);
LightBlue.addMixed([LightBlue, LightGray]);
Orange.addMixed([Pink, Orange]);
PestoDiRucola.addMixed([Lime, Brown]);
PestoDiRucola.addMixed([Gray, Lime]);
PestoDiRucola.addMixed([Orange, Cyan]);
Pink.addMixed([White, Magenta]);
Purple.addMixed([Blue, Magenta]);
Purple.addMixed([Purple, Magenta]);
Atlantis.addMixed([Black, Cyan]);
Atlantis.addMixed([Gray, Cyan]);
Beer.addMixed([White, Orange]);
BerryJam.addMixed([Gray, Purple]);
BerryJam.addMixed([Blue, Brown]);
BimiGreen.addMixed([Black, Lime]);
Brown.addMixed([Red, Green]);
Butterum.addMixed([Yellow, Purple]);
Butterum.addMixed([Yellow, Magenta]);
Butterum.addMixed([White, Brown]);
Cactus.addMixed([LightBlue, Brown]);
Cactus.addMixed([Gray, LightGray]);
Cyan.addMixed([LightGray, Cyan]);
Endo.addMixed([LightBlue, Green]);
Endo.addMixed([Blue, Lime]);
Endo.addMixed([Green, Cyan]);
FadingNight.addMixed([Blue, Cyan]);
Fluorescence.addMixed([Yellow, Cyan]);
Fluorescence.addMixed([LightBlue, Lime]);
Fluorescence.addMixed([Lime, Cyan]);
Fluorescence.addMixed([White, Lime]);
GingerDough.addMixed([Orange, Purple]);
GingerDough.addMixed([Red, Lime]);
GingerDough.addMixed([Orange, Brown]);
GingerDough.addMixed([Green, Magenta]);
GingerDough.addMixed([LightGray, Brown]);
Honey.addMixed([Orange, Green]);
Honey.addMixed([Yellow, Brown]);
Honey.addMixed([Pink, Green]);
Honey.addMixed([Orange, LightGray]);
Honey.addMixed([Lime, Magenta]);
IndianSilk.addMixed([Purple, Brown]);
IndianSilk.addMixed([Red, LightBlue]);
IndianSilk.addMixed([Red, Cyan]);
IndianSilk.addMixed([Magenta, Brown]);
Lime.addMixed([LightGray, Lime]);
Lizard.addMixed([Gray, Orange]);
Lizard.addMixed([Blue, Orange]);
Lizard.addMixed([Green, Brown]);
LochNess.addMixed([Magenta, Cyan]);
LochNess.addMixed([Purple, Cyan]);
LochNess.addMixed([Blue, LightGray]);
LochNess.addMixed([LightBlue, Magenta]);
LushBamboo.addMixed([Yellow, Lime]);
LushBamboo.addMixed([Orange, Lime]);
LushBamboo.addMixed([Pink, Lime]);
LustyLavender.addMixed([Purple, LightGray]);
LustyLavender.addMixed([Gray, Magenta]);
Magenta.addMixed([Pink, Purple]);
OverTheSky.addMixed([White, Cyan]);
PinkyPickle.addMixed([LightGray, Magenta]);
PinkyPickle.addMixed([Pink, Gray]);
PinkyPickle.addMixed([Pink, Magenta]);
PlasticLips.addMixed([Red, Magenta]);
StrawberryMoon.addMixed([Red, LightGray]);
TotallyBroccoli.addMixed([Green, LightGray]);
TotallyBroccoli.addMixed([LightBlue, Orange]);
TotallyBroccoli.addMixed([Green, Lime]);
VeryCoffee.addMixed([Gray, Brown]);
VeryCoffee.addMixed([Black, Brown]);
WizardsBrew.addMixed([Pink, Cyan]);

for id, color in Color.colors {
    info(`Color ${id} can be mixed from ${color._mixed.length} color combinations.`);
}

global COLORS as Color[string] = Color.colors;
