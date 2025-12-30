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
        return `${modpackID}.palette.${_id}.name`;
    }

    /*
     * Adds a combination of colors that makes this color.
     * @param mixed The color to add.
     */
    function addMix(mixed as Color[]) as void {
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
global ArcaneRed as Color = Color("arcane_red", "#612925");
global Galaxea as Color = Color("galaxea", "#32355E");
global Gray as Color = Color("gray", "#474F52");
global Green as Color = Color("green", "#5E7C16");
global LightBlue as Color = Color("light_blue", "#3AB3DA");
global Orange as Color = Color("orange", "#F9801D");
global PestoDiRucola as Color = Color("pesto_di_rucola", "#71833B");
global Pink as Color = Color("pink", "#F38BAA");
global Purple as Color = Color("purple", "#8932B8");
global SpaetzleYellow as Color = Color("spaetzle_yellow", "#FBEC89");

// Generation 2
global Apricot as Color = Color("apricot", "#FAB06F");
global Atlantis as Color = Color("atlantis", "#346576");
global Beer as Color = Color("beer", "#FCAB29");
global BerriesNCream as Color = Color("berries_n_cream", "#F7BECF");
global BerryJam as Color = Color("berry_jam", "#605178");
global BimiGreen as Color = Color("bimi_green", "#4E692C");
global Brown as Color = Color("brown", "#835432");
global BruisedPlum as Color = Color("brused_plum", "#3F2226");
global Butterum as Color = Color("butterum", "#BD8A65");
global Cactus as Color = Color("cactus", "#546F5E");
global ClassyMauve as Color = Color("classy_mauve", "#BA969E");
global CreamPuff as Color = Color("cream_puff", "#F8B89A");
global Cyan as Color = Color("cyan", "#169C9C");
global Endo as Color = Color("endo", "#5CA46F");
global FadingNight as Color = Color("fading_night", "#3B78C3");
global Fluorescence as Color = Color("fluorescence", "#8CD873");
global GingerDough as Color = Color("ginger_dough", "#AB7141");
global Honey as Color = Color("honey", "#A7822A");
global ImperialPurple as Color = Color("imperial_purple", "#552E62");
global IndianSilk as Color = Color("indian_silk", "#845468");
global JapaneseBonsai as Color = Color("japanese_bonsai", "#87A599");
global JovialJade as Color = Color("jovial_jade", "#90DCA9");
global KissAFrog as Color = Color("kiss_a_frog", "#BDC685");
global Langoustine as Color = Color("langoustine", "#D44E22");
global LavaStone as Color = Color("lava_stone", "#3C4258");
global LightGray as Color = Color("light_gray", "#9D9D97");
global Lime as Color = Color("lime", "#80C71F");
global Lizard as Color = Color("lizard", "#7D6E49");
global LochNess as Color = Color("loch_ness", "#656AC7");
global LushBamboo as Color = Color("lush_bamboo", "#AFB526");
global LustyLavender as Color = Color("lusty_lavender", "#8E5FA8");
global Magenta as Color = Color("magenta", "#C74EBD");
global MossGardens as Color = Color("moss_gardens", "#7D8D5F");
global MysteriousBlue as Color = Color("mysterious_blue", "#487E8E");
global NoblePlum as Color = Color("noble_plum", "#7C296C");
global OverTheSky as Color = Color("over_the_sky", "#8ED6EF");
global PhoenixRed as Color = Color("phoenix_red", "#DF7665");
global PinkyPickle as Color = Color("pinky_pickle", "#B67294");
global PlasticLips as Color = Color("plastic_lips", "#9F3068");
global ReadingTeaLeaves as Color = Color("reading_tea_leaves", "#826968");
global RuthlessEmpress as Color = Color("ruthless_empress", "#5B378F");
global Siren as Color = Color("siren", "#693242");
global StrawberryMoon as Color = Color("strawberry_moon", "#D7536D");
global TotallyBroccoli as Color = Color("totally_broccoli", "#8C9C4D");
global TreetopCathedral as Color = Color("treetop_cathedral", "#334B18");
global VeryCoffee as Color = Color("very_coffee", "#684B1B");
global VinCuit as Color = Color("vin_cuit", "#B27563");
global WizardsBrew as Color = Color("wizards_brew", "#9890B9");
global YellowMana as Color = Color("yellow_mana", "#FAF6BE");

// Pinky Pickle
/*  0.00 */ PinkyPickle.addMix([White, ArcaneRed]);
/*  3.79 */ PinkyPickle.addMix([Magenta, MossGardens]);
/*  3.94 */ PinkyPickle.addMix([Magenta, Butterum]);
/*  3.94 */ PinkyPickle.addMix([Pink, IndianSilk]);
/*  4.00 */ PinkyPickle.addMix([Purple, CreamPuff]);
/*  4.39 */ PinkyPickle.addMix([Magenta, VinCuit]);
/*  4.40 */ PinkyPickle.addMix([Pink, LustyLavender]);
/*  4.79 */ PinkyPickle.addMix([Pink, BerryJam]);
/*  4.82 */ PinkyPickle.addMix([White, Siren]);
/*  5.24 */ PinkyPickle.addMix([Red, OverTheSky]);
/*  5.75 */ PinkyPickle.addMix([Pink, ReadingTeaLeaves]);
/*  6.06 */ PinkyPickle.addMix([LightGray, Magenta]);
/*  6.20 */ PinkyPickle.addMix([Purple, Apricot]);
/*  6.21 */ PinkyPickle.addMix([Purple, Butterum]);
/*  6.36 */ PinkyPickle.addMix([Magenta, ClassyMauve]);
/*  6.72 */ PinkyPickle.addMix([Magenta, Lizard]);
/*  6.80 */ PinkyPickle.addMix([Magenta, PhoenixRed]);
/*  6.90 */ PinkyPickle.addMix([Magenta, KissAFrog]);
/*  7.06 */ PinkyPickle.addMix([Pink, WizardsBrew]);
/*  7.09 */ PinkyPickle.addMix([Purple, PhoenixRed]);
/*  7.14 */ PinkyPickle.addMix([White, BruisedPlum]);
/*  7.27 */ PinkyPickle.addMix([Purple, KissAFrog]);
/*  7.28 */ PinkyPickle.addMix([LightGray, StrawberryMoon]);
/*  7.43 */ PinkyPickle.addMix([Pink, Gray]);
/*  7.48 */ PinkyPickle.addMix([White, PlasticLips]);
/*  7.62 */ PinkyPickle.addMix([Magenta, JapaneseBonsai]);
/*  7.69 */ PinkyPickle.addMix([Pink, PlasticLips]);
/*  8.04 */ PinkyPickle.addMix([White, NoblePlum]);
/*  8.07 */ PinkyPickle.addMix([Pink, MysteriousBlue]);
/*  8.27 */ PinkyPickle.addMix([LightGray, PlasticLips]);
/*  8.32 */ PinkyPickle.addMix([Magenta, Endo]);
/*  8.64 */ PinkyPickle.addMix([Magenta, ReadingTeaLeaves]);
/*  8.84 */ PinkyPickle.addMix([Pink, Cactus]);
/*  8.92 */ PinkyPickle.addMix([Magenta, StrawberryMoon]);
/*  8.94 */ PinkyPickle.addMix([Pink, Magenta]);
/*  9.06 */ PinkyPickle.addMix([Pink, NoblePlum]);
/*  9.09 */ PinkyPickle.addMix([Pink, LochNess]);
/*  9.34 */ PinkyPickle.addMix([Pink, Siren]);
/* 10.41 */ PinkyPickle.addMix([Pink, Atlantis]);

// Honey
/*  0.00 */ Honey.addMix([Orange, PestoDiRucola]);
/*  2.12 */ Honey.addMix([Green, Orange]);
/*  2.28 */ Honey.addMix([Green, PhoenixRed]);
/*  2.52 */ Honey.addMix([Orange, MossGardens]);
/*  3.05 */ Honey.addMix([Lime, Langoustine]);
/*  4.40 */ Honey.addMix([Orange, TotallyBroccoli]);
/*  4.49 */ Honey.addMix([Yellow, VeryCoffee]);
/*  4.63 */ Honey.addMix([Brown, LushBamboo]);
/*  5.22 */ Honey.addMix([Orange, ReadingTeaLeaves]);
/*  5.27 */ Honey.addMix([Orange, BimiGreen]);
/*  5.27 */ Honey.addMix([Orange, Lizard]);
/*  5.57 */ Honey.addMix([Lime, PlasticLips]);
/*  6.30 */ Honey.addMix([Yellow, Brown]);
/*  6.47 */ Honey.addMix([Pink, Green]);
/*  6.50 */ Honey.addMix([Orange, LustyLavender]);
/*  6.56 */ Honey.addMix([Lime, StrawberryMoon]);
/*  6.67 */ Honey.addMix([Yellow, Siren]);
/*  6.78 */ Honey.addMix([Orange, LochNess]);
/*  6.94 */ Honey.addMix([Brown, Beer]);
/*  7.17 */ Honey.addMix([Orange, WizardsBrew]);
/*  7.21 */ Honey.addMix([Green, PinkyPickle]);
/*  7.24 */ Honey.addMix([Orange, LightGray]);
/*  7.24 */ Honey.addMix([Green, VinCuit]);
/*  7.30 */ Honey.addMix([Orange, BerryJam]);
/*  8.09 */ Honey.addMix([Brown, KissAFrog]);
/*  8.23 */ Honey.addMix([Green, GingerDough]);
/*  8.34 */ Honey.addMix([Orange, JapaneseBonsai]);
/*  8.37 */ Honey.addMix([Lime, Magenta]);
/*  8.40 */ Honey.addMix([Orange, Cactus]);
/*  8.49 */ Honey.addMix([Purple, LushBamboo]);
/*  8.55 */ Honey.addMix([Yellow, ImperialPurple]);
/*  8.56 */ Honey.addMix([Yellow, IndianSilk]);
/*  9.46 */ Honey.addMix([Lime, PhoenixRed]);
/*  9.96 */ Honey.addMix([Brown, SpaetzleYellow]);

// Totally Broccoli
/*  0.00 */ TotallyBroccoli.addMix([Yellow, Gray]);
/*  0.97 */ TotallyBroccoli.addMix([Green, WizardsBrew]);
/*  1.98 */ TotallyBroccoli.addMix([Green, LightGray]);
/*  2.82 */ TotallyBroccoli.addMix([Lime, LustyLavender]);
/*  2.89 */ TotallyBroccoli.addMix([Yellow, LavaStone]);
/*  3.20 */ TotallyBroccoli.addMix([Lime, ReadingTeaLeaves]);
/*  3.75 */ TotallyBroccoli.addMix([Yellow, TreetopCathedral]);
/*  3.83 */ TotallyBroccoli.addMix([Lime, IndianSilk]);
/*  4.00 */ TotallyBroccoli.addMix([LightBlue, Orange]);
/*  4.03 */ TotallyBroccoli.addMix([Yellow, BerryJam]);
/*  4.10 */ TotallyBroccoli.addMix([LightGray, PestoDiRucola]);
/*  4.13 */ TotallyBroccoli.addMix([Lime, Lizard]);
/*  4.35 */ TotallyBroccoli.addMix([Green, JapaneseBonsai]);
/*  4.66 */ TotallyBroccoli.addMix([Green, ClassyMauve]);
/*  5.30 */ TotallyBroccoli.addMix([Yellow, Cactus]);
/*  5.64 */ TotallyBroccoli.addMix([Green, LushBamboo]);
/*  5.79 */ TotallyBroccoli.addMix([Green, TotallyBroccoli]);
/*  5.88 */ TotallyBroccoli.addMix([LightGray, TotallyBroccoli]);
/*  6.11 */ TotallyBroccoli.addMix([Lime, PinkyPickle]);
/*  6.25 */ TotallyBroccoli.addMix([Yellow, RuthlessEmpress]);
/*  6.29 */ TotallyBroccoli.addMix([Lime, VinCuit]);
/*  6.50 */ TotallyBroccoli.addMix([Lime, GingerDough]);
/*  6.73 */ TotallyBroccoli.addMix([Orange, Endo]);
/*  6.76 */ TotallyBroccoli.addMix([Lime, PestoDiRucola]);
/*  6.80 */ TotallyBroccoli.addMix([Gray, SpaetzleYellow]);
/*  7.63 */ TotallyBroccoli.addMix([Lime, MossGardens]);
/*  7.70 */ TotallyBroccoli.addMix([LightGray, Honey]);
/*  7.96 */ TotallyBroccoli.addMix([Green, Lime]);
/*  8.14 */ TotallyBroccoli.addMix([Yellow, Atlantis]);
/*  8.25 */ TotallyBroccoli.addMix([Lime, BimiGreen]);
/*  8.56 */ TotallyBroccoli.addMix([Green, Butterum]);
/*  8.63 */ TotallyBroccoli.addMix([Lime, Cactus]);
/*  8.89 */ TotallyBroccoli.addMix([Lime, LochNess]);

// Lizard
/*  0.00 */ Lizard.addMix([Green, Purple]);
/*  0.99 */ Lizard.addMix([Black, Apricot]);
/*  2.55 */ Lizard.addMix([Brown, MossGardens]);
/*  3.78 */ Lizard.addMix([Brown, PestoDiRucola]);
/*  4.68 */ Lizard.addMix([Brown, TotallyBroccoli]);
/*  4.77 */ Lizard.addMix([LightGray, VeryCoffee]);
/*  5.16 */ Lizard.addMix([Gray, GingerDough]);
/*  6.08 */ Lizard.addMix([Brown, JapaneseBonsai]);
/*  6.17 */ Lizard.addMix([Gray, Orange]);
/*  6.20 */ Lizard.addMix([Orange, LavaStone]);
/*  6.27 */ Lizard.addMix([Brown, Cactus]);
/*  6.40 */ Lizard.addMix([Lime, ArcaneRed]);
/*  6.65 */ Lizard.addMix([Orange, RuthlessEmpress]);
/*  6.87 */ Lizard.addMix([Gray, Butterum]);
/*  6.90 */ Lizard.addMix([Yellow, BruisedPlum]);
/*  7.09 */ Lizard.addMix([Brown, BimiGreen]);
/*  7.19 */ Lizard.addMix([Lime, NoblePlum]);
/*  7.38 */ Lizard.addMix([Blue, Orange]);
/*  7.60 */ Lizard.addMix([Brown, Endo]);
/*  7.76 */ Lizard.addMix([Green, IndianSilk]);
/*  7.80 */ Lizard.addMix([LightBlue, Langoustine]);
/*  7.85 */ Lizard.addMix([Orange, Galaxea]);
/*  7.97 */ Lizard.addMix([Green, Brown]);
/*  8.76 */ Lizard.addMix([Orange, TreetopCathedral]);
/*  9.44 */ Lizard.addMix([Gray, Apricot]);
/*  9.76 */ Lizard.addMix([Brown, MysteriousBlue]);
/* 10.24 */ Lizard.addMix([LightGray, Lizard]);
/* 10.43 */ Lizard.addMix([Green, VeryCoffee]);
/* 11.15 */ Lizard.addMix([Gray, Lizard]);
/* 11.22 */ Lizard.addMix([Black, Butterum]);

// Lush Bamboo
/*  0.00 */ LushBamboo.addMix([Yellow, Green]);
/*  2.28 */ LushBamboo.addMix([Yellow, PestoDiRucola]);
/*  2.81 */ LushBamboo.addMix([Lime, Beer]);
/*  3.75 */ LushBamboo.addMix([Yellow, TotallyBroccoli]);
/*  3.92 */ LushBamboo.addMix([Green, SpaetzleYellow]);
/*  3.93 */ LushBamboo.addMix([Yellow, MossGardens]);
/*  3.95 */ LushBamboo.addMix([Lime, Butterum]);
/*  4.00 */ LushBamboo.addMix([Yellow, BimiGreen]);
/*  4.95 */ LushBamboo.addMix([LightGray, LushBamboo]);
/*  5.00 */ LushBamboo.addMix([Lime, Apricot]);
/*  5.20 */ LushBamboo.addMix([Orange, JovialJade]);
/*  5.28 */ LushBamboo.addMix([Orange, OverTheSky]);
/*  5.63 */ LushBamboo.addMix([Lime, ClassyMauve]);
/*  5.78 */ LushBamboo.addMix([Lime, CreamPuff]);
/*  5.88 */ LushBamboo.addMix([Green, YellowMana]);
/*  6.14 */ LushBamboo.addMix([Orange, Fluorescence]);
/*  6.16 */ LushBamboo.addMix([Green, KissAFrog]);
/*  6.47 */ LushBamboo.addMix([Lime, Honey]);
/*  7.10 */ LushBamboo.addMix([Lime, BerriesNCream]);
/*  7.51 */ LushBamboo.addMix([Yellow, Lizard]);
/*  7.81 */ LushBamboo.addMix([Green, CreamPuff]);
/*  8.17 */ LushBamboo.addMix([Green, Apricot]);
/*  8.24 */ LushBamboo.addMix([Green, BerriesNCream]);
/*  8.28 */ LushBamboo.addMix([Yellow, ReadingTeaLeaves]);
/*  8.38 */ LushBamboo.addMix([LightGray, Beer]);
/*  8.46 */ LushBamboo.addMix([Yellow, Lime]);
/*  8.97 */ LushBamboo.addMix([Green, Beer]);
/*  9.03 */ LushBamboo.addMix([Orange, Lime]);
/* 11.49 */ LushBamboo.addMix([Pink, Lime]);

// Indian Silk
/*  0.00 */ IndianSilk.addMix([Black, Pink]);
/*  2.65 */ IndianSilk.addMix([LightGray, ArcaneRed]);
/*  2.71 */ IndianSilk.addMix([LightGray, Siren]);
/*  2.90 */ IndianSilk.addMix([Purple, Brown]);
/*  3.26 */ IndianSilk.addMix([Red, LightBlue]);
/*  4.10 */ IndianSilk.addMix([Purple, VeryCoffee]);
/*  4.19 */ IndianSilk.addMix([Magenta, TreetopCathedral]);
/*  4.37 */ IndianSilk.addMix([Purple, Lizard]);
/*  4.93 */ IndianSilk.addMix([Gray, StrawberryMoon]);
/*  5.35 */ IndianSilk.addMix([Purple, GingerDough]);
/*  5.51 */ IndianSilk.addMix([Red, MysteriousBlue]);
/*  5.78 */ IndianSilk.addMix([LightGray, BruisedPlum]);
/*  5.94 */ IndianSilk.addMix([Pink, BruisedPlum]);
/*  6.10 */ IndianSilk.addMix([Blue, PhoenixRed]);
/*  6.89 */ IndianSilk.addMix([Gray, PinkyPickle]);
/*  7.08 */ IndianSilk.addMix([Red, Cyan]);
/*  7.15 */ IndianSilk.addMix([Pink, LavaStone]);
/*  7.50 */ IndianSilk.addMix([LightGray, NoblePlum]);
/*  7.54 */ IndianSilk.addMix([Brown, RuthlessEmpress]);
/*  7.76 */ IndianSilk.addMix([Black, PinkyPickle]);
/*  8.24 */ IndianSilk.addMix([Magenta, VeryCoffee]);
/*  8.35 */ IndianSilk.addMix([Purple, TreetopCathedral]);
/*  8.59 */ IndianSilk.addMix([Purple, MossGardens]);
/*  8.84 */ IndianSilk.addMix([Purple, VinCuit]);
/*  9.23 */ IndianSilk.addMix([Magenta, Brown]);
/* 10.01 */ IndianSilk.addMix([Gray, IndianSilk]);

// Pesto di Rucola
/*  0.00 */ PestoDiRucola.addMix([Yellow, Black]);
/*  2.38 */ PestoDiRucola.addMix([Gray, LushBamboo]);
/*  3.29 */ PestoDiRucola.addMix([Orange, FadingNight]);
/*  3.76 */ PestoDiRucola.addMix([Green, MossGardens]);
/*  3.80 */ PestoDiRucola.addMix([Blue, Beer]);
/*  3.81 */ PestoDiRucola.addMix([Green, ReadingTeaLeaves]);
/*  3.93 */ PestoDiRucola.addMix([Orange, Atlantis]);
/*  3.97 */ PestoDiRucola.addMix([Lime, ImperialPurple]);
/*  4.19 */ PestoDiRucola.addMix([Lime, VeryCoffee]);
/*  4.49 */ PestoDiRucola.addMix([Green, LochNess]);
/*  4.52 */ PestoDiRucola.addMix([Green, LustyLavender]);
/*  4.53 */ PestoDiRucola.addMix([Lime, RuthlessEmpress]);
/*  4.60 */ PestoDiRucola.addMix([Green, Lizard]);
/*  5.02 */ PestoDiRucola.addMix([Orange, MysteriousBlue]);
/*  5.45 */ PestoDiRucola.addMix([Gray, Beer]);
/*  6.15 */ PestoDiRucola.addMix([Lime, Brown]);
/*  6.49 */ PestoDiRucola.addMix([Lime, BerryJam]);
/*  6.66 */ PestoDiRucola.addMix([Gray, Lime]);
/*  6.98 */ PestoDiRucola.addMix([Blue, LushBamboo]);
/*  7.08 */ PestoDiRucola.addMix([Green, Honey]);
/*  7.10 */ PestoDiRucola.addMix([Orange, Cyan]);
/*  7.21 */ PestoDiRucola.addMix([Green, MysteriousBlue]);
/*  7.55 */ PestoDiRucola.addMix([Lime, Siren]);
/*  8.17 */ PestoDiRucola.addMix([Green, Endo]);
/*  8.83 */ PestoDiRucola.addMix([Green, FadingNight]);

// Lusty Lavender
/*  0.00 */ LustyLavender.addMix([Blue, Pink]);
/*  1.80 */ LustyLavender.addMix([Magenta, MysteriousBlue]);
/*  3.05 */ LustyLavender.addMix([Purple, LightGray]);
/*  3.41 */ LustyLavender.addMix([Purple, WizardsBrew]);
/*  3.67 */ LustyLavender.addMix([Purple, JapaneseBonsai]);
/*  4.55 */ LustyLavender.addMix([Purple, ClassyMauve]);
/*  4.88 */ LustyLavender.addMix([Magenta, Atlantis]);
/*  5.03 */ LustyLavender.addMix([Purple, PinkyPickle]);
/*  5.27 */ LustyLavender.addMix([Magenta, LochNess]);
/*  5.29 */ LustyLavender.addMix([LightBlue, PlasticLips]);
/*  5.44 */ LustyLavender.addMix([Magenta, BerryJam]);
/*  6.20 */ LustyLavender.addMix([Pink, RuthlessEmpress]);
/*  6.34 */ LustyLavender.addMix([Blue, PinkyPickle]);
/*  6.73 */ LustyLavender.addMix([Purple, ReadingTeaLeaves]);
/*  6.87 */ LustyLavender.addMix([Magenta, FadingNight]);
/*  7.13 */ LustyLavender.addMix([Pink, Galaxea]);
/*  7.49 */ LustyLavender.addMix([Magenta, Cactus]);
/*  7.65 */ LustyLavender.addMix([Pink, FadingNight]);
/*  7.66 */ LustyLavender.addMix([Gray, Magenta]);
/*  7.70 */ LustyLavender.addMix([LightGray, RuthlessEmpress]);
/*  7.77 */ LustyLavender.addMix([Magenta, LavaStone]);
/*  8.66 */ LustyLavender.addMix([Purple, MysteriousBlue]);
/*  8.86 */ LustyLavender.addMix([Magenta, IndianSilk]);
/*  9.16 */ LustyLavender.addMix([LightBlue, StrawberryMoon]);

// Cactus
/*  0.00 */ Cactus.addMix([Blue, PestoDiRucola]);
/*  3.00 */ Cactus.addMix([Cyan, Brown]);
/*  3.31 */ Cactus.addMix([Gray, Endo]);
/*  4.55 */ Cactus.addMix([Black, JovialJade]);
/*  4.64 */ Cactus.addMix([Gray, MossGardens]);
/*  4.67 */ Cactus.addMix([Blue, BimiGreen]);
/*  4.73 */ Cactus.addMix([LightBlue, VeryCoffee]);
/*  5.17 */ Cactus.addMix([Blue, TotallyBroccoli]);
/*  5.83 */ Cactus.addMix([Black, KissAFrog]);
/*  6.05 */ Cactus.addMix([Cyan, VeryCoffee]);
/*  6.75 */ Cactus.addMix([LightBlue, Brown]);
/*  7.24 */ Cactus.addMix([Black, Fluorescence]);
/*  7.46 */ Cactus.addMix([Black, Endo]);
/*  8.12 */ Cactus.addMix([Gray, Cactus]);
/*  8.25 */ Cactus.addMix([Gray, TotallyBroccoli]);
/*  8.69 */ Cactus.addMix([Cyan, Lizard]);
/*  9.10 */ Cactus.addMix([Gray, JapaneseBonsai]);
/*  9.18 */ Cactus.addMix([Cyan, GingerDough]);
/*  9.33 */ Cactus.addMix([Cyan, VinCuit]);
/*  9.83 */ Cactus.addMix([Black, MossGardens]);
/*  9.84 */ Cactus.addMix([Cyan, TreetopCathedral]);
/* 10.19 */ Cactus.addMix([LightBlue, TreetopCathedral]);
/* 10.43 */ Cactus.addMix([Cyan, PhoenixRed]);
/* 13.12 */ Cactus.addMix([Gray, LightGray]);

// Butterum
/*  0.00 */ Butterum.addMix([Pink, PestoDiRucola]);
/*  3.25 */ Butterum.addMix([Brown, CreamPuff]);
/*  4.01 */ Butterum.addMix([Purple, Beer]);
/*  4.02 */ Butterum.addMix([Yellow, NoblePlum]);
/*  4.14 */ Butterum.addMix([Brown, Apricot]);
/*  4.18 */ Butterum.addMix([Pink, TotallyBroccoli]);
/*  4.23 */ Butterum.addMix([Magenta, LushBamboo]);
/*  4.40 */ Butterum.addMix([Pink, BimiGreen]);
/*  5.28 */ Butterum.addMix([Yellow, PlasticLips]);
/*  5.88 */ Butterum.addMix([Yellow, Purple]);
/*  6.96 */ Butterum.addMix([LightGray, GingerDough]);
/*  7.15 */ Butterum.addMix([Magenta, Beer]);
/*  7.35 */ Butterum.addMix([Pink, Honey]);
/*  7.51 */ Butterum.addMix([Yellow, Magenta]);
/*  7.61 */ Butterum.addMix([LightGray, Butterum]);
/*  7.81 */ Butterum.addMix([White, Brown]);
/*  7.82 */ Butterum.addMix([Orange, PinkyPickle]);
/*  7.99 */ Butterum.addMix([White, VeryCoffee]);
/*  8.54 */ Butterum.addMix([Brown, YellowMana]);
/*  9.14 */ Butterum.addMix([Pink, Fluorescence]);
/* 11.18 */ Butterum.addMix([LightGray, Apricot]);

// Wizard’s Brew
/*  0.00 */ WizardsBrew.addMix([LightBlue, Pink]);
/*  4.66 */ WizardsBrew.addMix([Purple, JovialJade]);
/*  4.75 */ WizardsBrew.addMix([White, RuthlessEmpress]);
/*  5.54 */ WizardsBrew.addMix([White, BerryJam]);
/*  6.14 */ WizardsBrew.addMix([Blue, CreamPuff]);
/*  6.48 */ WizardsBrew.addMix([LightGray, LochNess]);
/*  6.55 */ WizardsBrew.addMix([White, ImperialPurple]);
/*  7.60 */ WizardsBrew.addMix([White, Galaxea]);
/*  7.92 */ WizardsBrew.addMix([LightGray, LustyLavender]);
/*  8.17 */ WizardsBrew.addMix([Magenta, JovialJade]);
/*  8.78 */ WizardsBrew.addMix([LightGray, WizardsBrew]);
/*  8.78 */ WizardsBrew.addMix([Pink, Cyan]);
/*  8.85 */ WizardsBrew.addMix([Magenta, OverTheSky]);
/*  8.91 */ WizardsBrew.addMix([Blue, BerriesNCream]);
/*  9.23 */ WizardsBrew.addMix([LightBlue, PinkyPickle]);
/*  9.24 */ WizardsBrew.addMix([White, LustyLavender]);
/*  9.62 */ WizardsBrew.addMix([Purple, YellowMana]);
/* 10.51 */ WizardsBrew.addMix([White, LavaStone]);
/* 10.69 */ WizardsBrew.addMix([Purple, Fluorescence]);
/* 11.50 */ WizardsBrew.addMix([White, LochNess]);
/* 15.90 */ WizardsBrew.addMix([White, WizardsBrew]);

// Endo
/*  0.00 */ Endo.addMix([LightBlue, PestoDiRucola]);
/*  2.71 */ Endo.addMix([Cyan, TotallyBroccoli]);
/*  3.52 */ Endo.addMix([LightBlue, BimiGreen]);
/*  3.84 */ Endo.addMix([LightBlue, TotallyBroccoli]);
/*  4.97 */ Endo.addMix([Cyan, Apricot]);
/*  6.54 */ Endo.addMix([Cyan, PestoDiRucola]);
/*  7.26 */ Endo.addMix([LightBlue, Green]);
/*  7.30 */ Endo.addMix([Blue, Lime]);
/*  7.71 */ Endo.addMix([LightBlue, Honey]);
/*  7.92 */ Endo.addMix([Cyan, KissAFrog]);
/*  7.97 */ Endo.addMix([Lime, FadingNight]);
/*  8.06 */ Endo.addMix([Cyan, Fluorescence]);
/*  8.07 */ Endo.addMix([Cyan, Honey]);
/*  8.23 */ Endo.addMix([Lime, Atlantis]);
/*  8.44 */ Endo.addMix([Cyan, Endo]);
/*  8.76 */ Endo.addMix([Cyan, MossGardens]);
/*  8.97 */ Endo.addMix([Cyan, LushBamboo]);
/*  9.09 */ Endo.addMix([Cyan, Beer]);
/*  9.11 */ Endo.addMix([Lime, MysteriousBlue]);
/*  9.47 */ Endo.addMix([Green, Cyan]);
/* 10.74 */ Endo.addMix([Cyan, BimiGreen]);

// Berry Jam
/*  0.00 */ BerryJam.addMix([LightBlue, ArcaneRed]);
/*  2.55 */ BerryJam.addMix([Cyan, PlasticLips]);
/*  3.82 */ BerryJam.addMix([Gray, RuthlessEmpress]);
/*  4.54 */ BerryJam.addMix([Black, LustyLavender]);
/*  4.54 */ BerryJam.addMix([Gray, LustyLavender]);
/*  4.61 */ BerryJam.addMix([Blue, ReadingTeaLeaves]);
/*  4.90 */ BerryJam.addMix([Purple, Cactus]);
/*  5.14 */ BerryJam.addMix([Blue, IndianSilk]);
/*  5.86 */ BerryJam.addMix([Blue, VinCuit]);
/*  6.24 */ BerryJam.addMix([Gray, Purple]);
/*  6.35 */ BerryJam.addMix([LightBlue, Siren]);
/*  6.90 */ BerryJam.addMix([Cyan, NoblePlum]);
/*  7.11 */ BerryJam.addMix([LightGray, ImperialPurple]);
/*  7.72 */ BerryJam.addMix([Gray, ImperialPurple]);
/*  8.54 */ BerryJam.addMix([Gray, LochNess]);
/*  8.60 */ BerryJam.addMix([Black, WizardsBrew]);
/*  8.90 */ BerryJam.addMix([LightBlue, NoblePlum]);
/*  9.37 */ BerryJam.addMix([Cyan, StrawberryMoon]);
/*  9.72 */ BerryJam.addMix([Purple, Endo]);
/* 10.85 */ BerryJam.addMix([Blue, Brown]);
/* 11.96 */ BerryJam.addMix([LightGray, Galaxea]);

// Reading Tea Leaves
/*  0.00 */ ReadingTeaLeaves.addMix([Purple, PestoDiRucola]);
/*  2.97 */ ReadingTeaLeaves.addMix([Brown, LochNess]);
/*  4.93 */ ReadingTeaLeaves.addMix([Gray, VinCuit]);
/*  5.67 */ ReadingTeaLeaves.addMix([Purple, TotallyBroccoli]);
/*  6.15 */ ReadingTeaLeaves.addMix([Purple, BimiGreen]);
/*  6.24 */ ReadingTeaLeaves.addMix([Brown, LustyLavender]);
/*  6.34 */ ReadingTeaLeaves.addMix([Gray, PhoenixRed]);
/*  6.84 */ ReadingTeaLeaves.addMix([Black, CreamPuff]);
/*  7.29 */ ReadingTeaLeaves.addMix([Brown, WizardsBrew]);
/*  7.50 */ ReadingTeaLeaves.addMix([Gray, ClassyMauve]);
/*  7.80 */ ReadingTeaLeaves.addMix([LightGray, IndianSilk]);
/*  7.84 */ ReadingTeaLeaves.addMix([Blue, GingerDough]);
/*  8.15 */ ReadingTeaLeaves.addMix([Black, BerriesNCream]);
/*  8.18 */ ReadingTeaLeaves.addMix([Brown, BerryJam]);
/*  8.93 */ ReadingTeaLeaves.addMix([Black, ClassyMauve]);
/* 10.06 */ ReadingTeaLeaves.addMix([LightGray, ReadingTeaLeaves]);
/* 11.37 */ ReadingTeaLeaves.addMix([Blue, Butterum]);
/* 11.37 */ ReadingTeaLeaves.addMix([Black, VinCuit]);
/* 11.75 */ ReadingTeaLeaves.addMix([LightGray, BerryJam]);
/* 13.51 */ ReadingTeaLeaves.addMix([Gray, WizardsBrew]);

// Gray
/*  0.00 */ Gray.addMix([White, Black]);
/*  5.64 */ Gray.addMix([Gray, LavaStone]);
/*  5.71 */ Gray.addMix([Black, MysteriousBlue]);
/*  6.39 */ Gray.addMix([Black, LightGray]);
/*  6.74 */ Gray.addMix([Black, Cactus]);
/*  6.97 */ Gray.addMix([Blue, TreetopCathedral]);
/*  7.04 */ Gray.addMix([Black, JapaneseBonsai]);
/*  7.41 */ Gray.addMix([Cyan, BruisedPlum]);
/*  7.83 */ Gray.addMix([Black, Atlantis]);
/*  8.13 */ Gray.addMix([Blue, VeryCoffee]);
/*  8.79 */ Gray.addMix([Brown, FadingNight]);
/*  9.16 */ Gray.addMix([Black, ReadingTeaLeaves]);
/*  9.59 */ Gray.addMix([Blue, Lizard]);
/*  9.83 */ Gray.addMix([Brown, Atlantis]);
/*  9.99 */ Gray.addMix([Gray, ReadingTeaLeaves]);
/* 10.67 */ Gray.addMix([Black, Lizard]);
/* 11.21 */ Gray.addMix([Brown, Galaxea]);
/* 12.37 */ Gray.addMix([Brown, LavaStone]);
/* 13.37 */ Gray.addMix([LightGray, LavaStone]);

// Ginger Dough
/*  0.00 */ GingerDough.addMix([Yellow, ArcaneRed]);
/*  2.77 */ GingerDough.addMix([Green, StrawberryMoon]);
/*  3.26 */ GingerDough.addMix([Orange, Purple]);
/*  3.50 */ GingerDough.addMix([Brown, Butterum]);
/*  3.83 */ GingerDough.addMix([Orange, IndianSilk]);
/*  3.84 */ GingerDough.addMix([LightGray, Langoustine]);
/*  3.94 */ GingerDough.addMix([Red, Lime]);
/*  4.41 */ GingerDough.addMix([Orange, Brown]);
/*  4.76 */ GingerDough.addMix([Green, Magenta]);
/*  6.16 */ GingerDough.addMix([Purple, Honey]);
/*  6.34 */ GingerDough.addMix([Orange, NoblePlum]);
/*  6.60 */ GingerDough.addMix([Orange, VeryCoffee]);
/*  7.04 */ GingerDough.addMix([Brown, VinCuit]);
/*  7.32 */ GingerDough.addMix([Green, Langoustine]);
/*  8.02 */ GingerDough.addMix([Orange, GingerDough]);
/*  8.42 */ GingerDough.addMix([Brown, Honey]);
/*  8.55 */ GingerDough.addMix([LightGray, Brown]);
/*  8.66 */ GingerDough.addMix([Orange, VinCuit]);

// Bimi Green
/*  0.00 */ BimiGreen.addMix([Gray, Green]);
/*  1.08 */ BimiGreen.addMix([Black, LushBamboo]);
/*  2.66 */ BimiGreen.addMix([Green, LavaStone]);
/*  3.76 */ BimiGreen.addMix([Green, TreetopCathedral]);
/*  4.08 */ BimiGreen.addMix([Lime, BruisedPlum]);
/*  4.23 */ BimiGreen.addMix([Black, Lime]);
/*  4.58 */ BimiGreen.addMix([Green, BerryJam]);
/*  4.79 */ BimiGreen.addMix([Green, RuthlessEmpress]);
/*  5.45 */ BimiGreen.addMix([Green, Galaxea]);
/*  5.83 */ BimiGreen.addMix([Gray, PestoDiRucola]);
/*  5.95 */ BimiGreen.addMix([Gray, BimiGreen]);
/*  5.99 */ BimiGreen.addMix([Blue, Honey]);
/*  6.28 */ BimiGreen.addMix([Green, Atlantis]);
/*  6.44 */ BimiGreen.addMix([Gray, Honey]);
/*  7.17 */ BimiGreen.addMix([Cyan, Langoustine]);
/*  7.37 */ BimiGreen.addMix([Black, Beer]);
/*  7.99 */ BimiGreen.addMix([Green, ImperialPurple]);
/*  8.10 */ BimiGreen.addMix([Black, TotallyBroccoli]);

// Brown
/*  0.00 */ Brown.addMix([Black, Orange]);
/*  2.41 */ Brown.addMix([Gray, Langoustine]);
/*  5.12 */ Brown.addMix([Red, BimiGreen]);
/*  5.36 */ Brown.addMix([Green, PlasticLips]);
/*  5.45 */ Brown.addMix([Orange, BruisedPlum]);
/*  5.57 */ Brown.addMix([Brown, ReadingTeaLeaves]);
/*  5.97 */ Brown.addMix([Brown, GingerDough]);
/*  6.00 */ Brown.addMix([Brown, Lizard]);
/*  6.49 */ Brown.addMix([Red, Green]);
/*  6.51 */ Brown.addMix([Orange, Siren]);
/*  6.62 */ Brown.addMix([Blue, Langoustine]);
/*  6.69 */ Brown.addMix([Orange, ImperialPurple]);
/*  7.22 */ Brown.addMix([Orange, ArcaneRed]);
/*  7.25 */ Brown.addMix([Brown, IndianSilk]);
/*  7.26 */ Brown.addMix([Red, TreetopCathedral]);
/*  7.99 */ Brown.addMix([Red, PestoDiRucola]);
/*  8.77 */ Brown.addMix([Brown, Langoustine]);
/*  9.47 */ Brown.addMix([Black, PhoenixRed]);

// Vin Cuit
/*  3.66 */ VinCuit.addMix([Pink, VeryCoffee]);
/*  4.42 */ VinCuit.addMix([Brown, ClassyMauve]);
/*  4.73 */ VinCuit.addMix([Red, Fluorescence]);
/*  5.35 */ VinCuit.addMix([Pink, Lizard]);
/*  5.48 */ VinCuit.addMix([Magenta, PestoDiRucola]);
/*  5.75 */ VinCuit.addMix([Pink, Brown]);
/*  5.95 */ VinCuit.addMix([Brown, PinkyPickle]);
/*  5.99 */ VinCuit.addMix([Brown, BerriesNCream]);
/*  6.04 */ VinCuit.addMix([Magenta, Honey]);
/*  6.06 */ VinCuit.addMix([LightGray, PhoenixRed]);
/*  6.10 */ VinCuit.addMix([Brown, PhoenixRed]);
/*  6.25 */ VinCuit.addMix([Magenta, BimiGreen]);
/*  7.34 */ VinCuit.addMix([Pink, MossGardens]);
/*  7.39 */ VinCuit.addMix([Pink, TreetopCathedral]);
/*  7.58 */ VinCuit.addMix([Red, KissAFrog]);
/*  8.14 */ VinCuit.addMix([LightGray, VinCuit]);
/*  8.48 */ VinCuit.addMix([Red, JovialJade]);
/*  9.20 */ VinCuit.addMix([Magenta, TotallyBroccoli]);

// Japanese Bonsai
/*  0.00 */ JapaneseBonsai.addMix([Blue, SpaetzleYellow]);
/*  2.84 */ JapaneseBonsai.addMix([LightBlue, Butterum]);
/*  5.01 */ JapaneseBonsai.addMix([Cyan, CreamPuff]);
/*  5.17 */ JapaneseBonsai.addMix([LightGray, JapaneseBonsai]);
/*  5.92 */ JapaneseBonsai.addMix([LightBlue, CreamPuff]);
/*  6.52 */ JapaneseBonsai.addMix([White, Cactus]);
/*  7.10 */ JapaneseBonsai.addMix([LightGray, Endo]);
/*  7.62 */ JapaneseBonsai.addMix([Gray, YellowMana]);
/*  7.71 */ JapaneseBonsai.addMix([Gray, JovialJade]);
/*  7.91 */ JapaneseBonsai.addMix([LightGray, JovialJade]);
/*  8.33 */ JapaneseBonsai.addMix([LightBlue, MossGardens]);
/*  8.98 */ JapaneseBonsai.addMix([LightBlue, Lizard]);
/*  9.18 */ JapaneseBonsai.addMix([Cyan, Butterum]);
/*  9.45 */ JapaneseBonsai.addMix([LightBlue, Apricot]);
/*  9.92 */ JapaneseBonsai.addMix([LightGray, Cactus]);
/* 10.10 */ JapaneseBonsai.addMix([LightBlue, VinCuit]);
/* 13.96 */ JapaneseBonsai.addMix([LightBlue, JovialJade]);

// Lime
/*  0.00 */ Lime.addMix([White, Green]);
/*  3.70 */ Lime.addMix([Lime, Fluorescence]);
/*  4.27 */ Lime.addMix([Lime, JapaneseBonsai]);
/*  4.96 */ Lime.addMix([Lime, LushBamboo]);
/*  5.21 */ Lime.addMix([LightGray, Lime]);
/*  5.34 */ Lime.addMix([Lime, KissAFrog]);
/*  5.46 */ Lime.addMix([Yellow, Endo]);
/*  5.46 */ Lime.addMix([Green, JovialJade]);
/*  5.93 */ Lime.addMix([Lime, TotallyBroccoli]);
/*  6.16 */ Lime.addMix([Lime, WizardsBrew]);
/*  6.26 */ Lime.addMix([Lime, Endo]);
/*  6.50 */ Lime.addMix([LightBlue, Beer]);
/*  6.52 */ Lime.addMix([Green, OverTheSky]);
/*  6.78 */ Lime.addMix([Green, Fluorescence]);
/*  9.39 */ Lime.addMix([Yellow, Fluorescence]);
/* 11.15 */ Lime.addMix([Lime, SpaetzleYellow]);

// Red
/*  4.87 */ Red.addMix([Red, Brown]);
/*  5.56 */ Red.addMix([Red, GingerDough]);
/*  6.15 */ Red.addMix([Red, Lizard]);
/*  7.95 */ Red.addMix([Red, VinCuit]);
/*  8.21 */ Red.addMix([Red, MossGardens]);
/*  8.31 */ Red.addMix([Red, ArcaneRed]);
/*  8.66 */ Red.addMix([Brown, StrawberryMoon]);
/*  8.70 */ Red.addMix([Red, VeryCoffee]);
/*  9.14 */ Red.addMix([Red, TotallyBroccoli]);
/*  9.22 */ Red.addMix([Red, Butterum]);
/*  9.32 */ Red.addMix([Red, ReadingTeaLeaves]);
/*  9.43 */ Red.addMix([Brown, PlasticLips]);
/*  9.86 */ Red.addMix([Purple, Langoustine]);
/* 10.23 */ Red.addMix([Red, IndianSilk]);
/* 10.26 */ Red.addMix([Red, PlasticLips]);
/* 11.48 */ Red.addMix([Red, Endo]);

// Light Blue
/*  0.00 */ LightBlue.addMix([White, Blue]);
/*  5.38 */ LightBlue.addMix([LightBlue, OverTheSky]);
/*  7.50 */ LightBlue.addMix([LightBlue, Cyan]);
/*  8.15 */ LightBlue.addMix([Cyan, OverTheSky]);
/*  8.16 */ LightBlue.addMix([LightBlue, LightGray]);
/*  8.43 */ LightBlue.addMix([Cyan, BerriesNCream]);
/*  8.46 */ LightBlue.addMix([LightBlue, MysteriousBlue]);
/*  8.62 */ LightBlue.addMix([LightBlue, JapaneseBonsai]);
/*  8.80 */ LightBlue.addMix([White, Atlantis]);
/*  9.00 */ LightBlue.addMix([Cyan, WizardsBrew]);
/*  9.14 */ LightBlue.addMix([LightBlue, ClassyMauve]);
/*  9.32 */ LightBlue.addMix([LightBlue, WizardsBrew]);
/* 10.97 */ LightBlue.addMix([White, FadingNight]);
/* 12.54 */ LightBlue.addMix([Blue, YellowMana]);
/* 13.50 */ LightBlue.addMix([LightBlue, BerriesNCream]);

// Mysterious Blue
/*  0.00 */ MysteriousBlue.addMix([LightBlue, Gray]);
/*  3.21 */ MysteriousBlue.addMix([Blue, Endo]);
/*  4.87 */ MysteriousBlue.addMix([Black, OverTheSky]);
/*  5.43 */ MysteriousBlue.addMix([LightGray, Atlantis]);
/*  5.88 */ MysteriousBlue.addMix([LightBlue, ReadingTeaLeaves]);
/*  6.28 */ MysteriousBlue.addMix([LightBlue, Atlantis]);
/*  6.37 */ MysteriousBlue.addMix([Cyan, ReadingTeaLeaves]);
/*  6.56 */ MysteriousBlue.addMix([LightBlue, LavaStone]);
/*  6.79 */ MysteriousBlue.addMix([Cyan, Atlantis]);
/*  7.61 */ MysteriousBlue.addMix([Cyan, FadingNight]);
/*  8.10 */ MysteriousBlue.addMix([Cyan, PinkyPickle]);
/*  8.74 */ MysteriousBlue.addMix([Gray, OverTheSky]);
/*  8.98 */ MysteriousBlue.addMix([LightGray, MysteriousBlue]);
/*  9.07 */ MysteriousBlue.addMix([Blue, KissAFrog]);
/*  9.30 */ MysteriousBlue.addMix([Blue, JovialJade]);

// Classy Mauve
/*  0.00 */ ClassyMauve.addMix([Purple, SpaetzleYellow]);
/*  3.05 */ ClassyMauve.addMix([Magenta, Fluorescence]);
/*  3.90 */ ClassyMauve.addMix([Pink, JapaneseBonsai]);
/*  5.09 */ ClassyMauve.addMix([White, IndianSilk]);
/*  5.66 */ ClassyMauve.addMix([LightGray, PinkyPickle]);
/*  5.71 */ ClassyMauve.addMix([LightGray, BerriesNCream]);
/*  5.87 */ ClassyMauve.addMix([Pink, JovialJade]);
/*  6.41 */ ClassyMauve.addMix([Pink, LightGray]);
/*  6.59 */ ClassyMauve.addMix([LightGray, ClassyMauve]);
/*  7.99 */ ClassyMauve.addMix([Pink, Endo]);
/*  8.05 */ ClassyMauve.addMix([Gray, BerriesNCream]);
/*  8.55 */ ClassyMauve.addMix([Magenta, SpaetzleYellow]);
/*  9.11 */ ClassyMauve.addMix([White, ReadingTeaLeaves]);
/*  9.15 */ ClassyMauve.addMix([Pink, OverTheSky]);

// Kiss a Frog
/*  0.00 */ KissAFrog.addMix([White, PestoDiRucola]);
/*  2.87 */ KissAFrog.addMix([LightGray, SpaetzleYellow]);
/*  2.91 */ KissAFrog.addMix([White, BimiGreen]);
/*  3.16 */ KissAFrog.addMix([White, TotallyBroccoli]);
/*  5.02 */ KissAFrog.addMix([Yellow, WizardsBrew]);
/*  5.72 */ KissAFrog.addMix([Yellow, LochNess]);
/*  6.35 */ KissAFrog.addMix([Yellow, JapaneseBonsai]);
/*  6.74 */ KissAFrog.addMix([Yellow, LightGray]);
/*  8.27 */ KissAFrog.addMix([LightGray, KissAFrog]);
/*  8.42 */ KissAFrog.addMix([LightGray, YellowMana]);
/*  8.92 */ KissAFrog.addMix([LightGray, Fluorescence]);
/*  9.33 */ KissAFrog.addMix([White, MossGardens]);
/*  9.50 */ KissAFrog.addMix([White, TreetopCathedral]);
/*  9.72 */ KissAFrog.addMix([Yellow, LustyLavender]);

// Loch Ness
/*  0.00 */ LochNess.addMix([LightBlue, Purple]);
/*  2.76 */ LochNess.addMix([Blue, WizardsBrew]);
/*  4.77 */ LochNess.addMix([Magenta, Cyan]);
/*  5.60 */ LochNess.addMix([LightBlue, RuthlessEmpress]);
/*  5.70 */ LochNess.addMix([Purple, Cyan]);
/*  6.91 */ LochNess.addMix([Blue, LightGray]);
/*  6.94 */ LochNess.addMix([LightBlue, Magenta]);
/*  7.04 */ LochNess.addMix([Blue, JapaneseBonsai]);
/*  7.55 */ LochNess.addMix([Blue, ClassyMauve]);
/*  8.05 */ LochNess.addMix([LightBlue, ImperialPurple]);
/*  8.07 */ LochNess.addMix([Blue, FadingNight]);
/*  8.56 */ LochNess.addMix([LightBlue, IndianSilk]);
/*  9.31 */ LochNess.addMix([Blue, MysteriousBlue]);
/*  9.41 */ LochNess.addMix([Purple, OverTheSky]);

// Beer
/*  0.00 */ Beer.addMix([Yellow, Orange]);
/*  3.44 */ Beer.addMix([Orange, SpaetzleYellow]);
/*  4.93 */ Beer.addMix([Orange, YellowMana]);
/*  6.70 */ Beer.addMix([White, Orange]);
/*  7.16 */ Beer.addMix([Yellow, Apricot]);
/*  7.93 */ Beer.addMix([Orange, LushBamboo]);
/*  8.17 */ Beer.addMix([Orange, KissAFrog]);
/*  8.88 */ Beer.addMix([Yellow, CreamPuff]);
/*  9.02 */ Beer.addMix([Yellow, GingerDough]);
/*  9.30 */ Beer.addMix([Orange, ClassyMauve]);
/*  9.52 */ Beer.addMix([Yellow, VinCuit]);
/* 10.16 */ Beer.addMix([Yellow, Butterum]);
/* 10.64 */ Beer.addMix([Yellow, PinkyPickle]);

// Siren
/*  0.00 */ Siren.addMix([Red, Galaxea]);
/*  3.62 */ Siren.addMix([Black, StrawberryMoon]);
/*  3.67 */ Siren.addMix([Red, Atlantis]);
/*  4.14 */ Siren.addMix([Red, LavaStone]);
/*  5.20 */ Siren.addMix([Black, PlasticLips]);
/*  5.57 */ Siren.addMix([Red, ImperialPurple]);
/*  5.80 */ Siren.addMix([Gray, ArcaneRed]);
/*  7.05 */ Siren.addMix([Gray, PlasticLips]);
/*  7.35 */ Siren.addMix([Red, BerryJam]);
/*  8.01 */ Siren.addMix([Gray, Siren]);
/*  8.52 */ Siren.addMix([Brown, NoblePlum]);
/*  9.05 */ Siren.addMix([Brown, ImperialPurple]);
/*  9.75 */ Siren.addMix([Red, NoblePlum]);

// Pink
/*  0.00 */ Pink.addMix([White, Red]);
/*  3.85 */ Pink.addMix([White, StrawberryMoon]);
/*  4.73 */ Pink.addMix([Magenta, CreamPuff]);
/*  5.02 */ Pink.addMix([Pink, ClassyMauve]);
/*  5.61 */ Pink.addMix([Pink, BerriesNCream]);
/*  6.38 */ Pink.addMix([Magenta, Apricot]);
/*  6.50 */ Pink.addMix([Pink, PinkyPickle]);
/*  7.57 */ Pink.addMix([Magenta, YellowMana]);
/*  7.58 */ Pink.addMix([Pink, StrawberryMoon]);
/*  9.51 */ Pink.addMix([Pink, CreamPuff]);
/* 10.56 */ Pink.addMix([Magenta, BerriesNCream]);
/* 13.26 */ Pink.addMix([White, Magenta]);

// Fluorescence
/*  0.00 */ Fluorescence.addMix([Yellow, LightBlue]);
/*  4.13 */ Fluorescence.addMix([Lime, OverTheSky]);
/*  4.36 */ Fluorescence.addMix([Yellow, Cyan]);
/*  5.27 */ Fluorescence.addMix([LightBlue, Lime]);
/*  5.39 */ Fluorescence.addMix([Lime, JovialJade]);
/*  5.62 */ Fluorescence.addMix([LightBlue, LushBamboo]);
/*  7.01 */ Fluorescence.addMix([Yellow, FadingNight]);
/*  7.93 */ Fluorescence.addMix([Yellow, MysteriousBlue]);
/*  8.20 */ Fluorescence.addMix([Yellow, OverTheSky]);
/*  9.49 */ Fluorescence.addMix([Yellow, JovialJade]);
/* 10.31 */ Fluorescence.addMix([Lime, Cyan]);
/* 11.12 */ Fluorescence.addMix([White, Lime]);

// Moss Gardens
/*  0.00 */ MossGardens.addMix([Black, SpaetzleYellow]);
/*  4.21 */ MossGardens.addMix([LightGray, BimiGreen]);
/*  4.34 */ MossGardens.addMix([Yellow, Galaxea]);
/*  4.50 */ MossGardens.addMix([Purple, Lime]);
/*  5.24 */ MossGardens.addMix([Gray, KissAFrog]);
/*  6.40 */ MossGardens.addMix([LightGray, TreetopCathedral]);
/*  6.49 */ MossGardens.addMix([Brown, JovialJade]);
/*  6.52 */ MossGardens.addMix([Brown, Fluorescence]);
/*  6.56 */ MossGardens.addMix([LightGray, MossGardens]);
/*  6.78 */ MossGardens.addMix([Gray, Fluorescence]);
/*  6.99 */ MossGardens.addMix([LightBlue, GingerDough]);
/*  7.71 */ MossGardens.addMix([Black, YellowMana]);

// Fading Night
/*  0.00 */ FadingNight.addMix([Blue, LightBlue]);
/*  4.01 */ FadingNight.addMix([Cyan, LustyLavender]);
/*  4.19 */ FadingNight.addMix([LightBlue, BerryJam]);
/*  5.93 */ FadingNight.addMix([LightBlue, Galaxea]);
/*  6.12 */ FadingNight.addMix([Blue, Cyan]);
/*  7.00 */ FadingNight.addMix([Cyan, LochNess]);
/*  7.17 */ FadingNight.addMix([LightBlue, LustyLavender]);
/*  7.46 */ FadingNight.addMix([Blue, OverTheSky]);
/*  7.49 */ FadingNight.addMix([LightBlue, LochNess]);
/*  8.97 */ FadingNight.addMix([Cyan, RuthlessEmpress]);
/*  8.98 */ FadingNight.addMix([LightGray, FadingNight]);
/* 11.17 */ FadingNight.addMix([LightBlue, FadingNight]);

// Lava Stone
/*  0.00 */ LavaStone.addMix([Gray, Galaxea]);
/*  3.52 */ LavaStone.addMix([Cyan, ArcaneRed]);
/*  5.58 */ LavaStone.addMix([Black, BerryJam]);
/*  6.17 */ LavaStone.addMix([Black, FadingNight]);
/*  6.48 */ LavaStone.addMix([Black, LochNess]);
/*  7.00 */ LavaStone.addMix([Gray, BerryJam]);
/*  7.26 */ LavaStone.addMix([Black, LavaStone]);
/*  7.50 */ LavaStone.addMix([Cyan, Siren]);
/*  7.51 */ LavaStone.addMix([Blue, Gray]);
/*  7.83 */ LavaStone.addMix([Black, Galaxea]);
/*  8.27 */ LavaStone.addMix([LightBlue, BruisedPlum]);
/* 10.36 */ LavaStone.addMix([Blue, Cactus]);

// Cream Puff
/*  0.00 */ CreamPuff.addMix([Pink, SpaetzleYellow]);
/*  7.01 */ CreamPuff.addMix([White, PhoenixRed]);
/*  8.16 */ CreamPuff.addMix([Pink, YellowMana]);
/*  8.22 */ CreamPuff.addMix([Pink, Apricot]);
/*  8.86 */ CreamPuff.addMix([Pink, KissAFrog]);
/*  9.16 */ CreamPuff.addMix([White, GingerDough]);
/*  9.35 */ CreamPuff.addMix([White, VinCuit]);
/*  9.52 */ CreamPuff.addMix([White, Butterum]);
/*  9.98 */ CreamPuff.addMix([LightGray, CreamPuff]);
/* 10.23 */ CreamPuff.addMix([White, CreamPuff]);
/* 11.86 */ CreamPuff.addMix([White, Apricot]);

// Ruthless Empress
/*  0.00 */ RuthlessEmpress.addMix([Purple, Galaxea]);
/*  2.18 */ RuthlessEmpress.addMix([Blue, NoblePlum]);
/*  3.44 */ RuthlessEmpress.addMix([Purple, LavaStone]);
/*  3.48 */ RuthlessEmpress.addMix([Blue, ImperialPurple]);
/*  4.58 */ RuthlessEmpress.addMix([Blue, RuthlessEmpress]);
/*  5.10 */ RuthlessEmpress.addMix([Purple, ImperialPurple]);
/*  5.17 */ RuthlessEmpress.addMix([Blue, PlasticLips]);
/*  5.90 */ RuthlessEmpress.addMix([Blue, Purple]);
/*  6.06 */ RuthlessEmpress.addMix([Purple, BerryJam]);
/*  6.23 */ RuthlessEmpress.addMix([Magenta, Galaxea]);
/*  6.87 */ RuthlessEmpress.addMix([Purple, Atlantis]);

// Atlantis
/*  0.00 */ Atlantis.addMix([Black, LightBlue]);
/*  2.69 */ Atlantis.addMix([Cyan, LavaStone]);
/*  3.59 */ Atlantis.addMix([Cyan, Galaxea]);
/*  4.73 */ Atlantis.addMix([Gray, MysteriousBlue]);
/*  5.47 */ Atlantis.addMix([Cyan, BerryJam]);
/*  5.67 */ Atlantis.addMix([Gray, Atlantis]);
/*  5.74 */ Atlantis.addMix([Cyan, IndianSilk]);
/*  8.79 */ Atlantis.addMix([Blue, MossGardens]);
/*  8.82 */ Atlantis.addMix([Black, Cyan]);
/*  9.18 */ Atlantis.addMix([Gray, Cyan]);
/*  9.52 */ Atlantis.addMix([Gray, FadingNight]);

// Strawberry Moon
/*  0.00 */ StrawberryMoon.addMix([Red, Pink]);
/*  4.73 */ StrawberryMoon.addMix([Red, BerriesNCream]);
/*  5.12 */ StrawberryMoon.addMix([Red, ClassyMauve]);
/*  6.17 */ StrawberryMoon.addMix([Red, CreamPuff]);
/*  6.17 */ StrawberryMoon.addMix([Magenta, GingerDough]);
/*  7.03 */ StrawberryMoon.addMix([Magenta, Langoustine]);
/*  7.21 */ StrawberryMoon.addMix([Red, PinkyPickle]);
/*  7.97 */ StrawberryMoon.addMix([Red, LightGray]);
/*  8.55 */ StrawberryMoon.addMix([Red, StrawberryMoon]);
/*  9.19 */ StrawberryMoon.addMix([Red, PhoenixRed]);
/*  9.79 */ StrawberryMoon.addMix([Red, JapaneseBonsai]);

// Plastic Lips
/*  0.00 */ PlasticLips.addMix([Red, Purple]);
/*  3.22 */ PlasticLips.addMix([Magenta, ArcaneRed]);
/*  3.87 */ PlasticLips.addMix([Red, LochNess]);
/*  5.84 */ PlasticLips.addMix([Red, LustyLavender]);
/*  6.05 */ PlasticLips.addMix([Magenta, Siren]);
/*  6.37 */ PlasticLips.addMix([Red, RuthlessEmpress]);
/*  7.88 */ PlasticLips.addMix([Red, Magenta]);
/*  7.89 */ PlasticLips.addMix([Purple, StrawberryMoon]);
/*  8.14 */ PlasticLips.addMix([Pink, ArcaneRed]);
/*  9.12 */ PlasticLips.addMix([Pink, ImperialPurple]);
/*  9.30 */ PlasticLips.addMix([Red, WizardsBrew]);

// Very Coffee
/*  0.00 */ VeryCoffee.addMix([Green, ArcaneRed]);
/*  4.64 */ VeryCoffee.addMix([Brown, VeryCoffee]);
/*  6.03 */ VeryCoffee.addMix([Green, Siren]);
/*  6.28 */ VeryCoffee.addMix([Green, NoblePlum]);
/*  6.91 */ VeryCoffee.addMix([Black, Langoustine]);
/*  8.18 */ VeryCoffee.addMix([Black, GingerDough]);
/*  8.67 */ VeryCoffee.addMix([Brown, TreetopCathedral]);
/*  9.56 */ VeryCoffee.addMix([Gray, VeryCoffee]);
/*  9.85 */ VeryCoffee.addMix([Gray, Brown]);
/* 11.81 */ VeryCoffee.addMix([Black, Brown]);
/* 13.64 */ VeryCoffee.addMix([Black, VeryCoffee]);

// Jovial Jade
/*  0.00 */ JovialJade.addMix([LightBlue, SpaetzleYellow]);
/*  4.30 */ JovialJade.addMix([Cyan, SpaetzleYellow]);
/*  6.58 */ JovialJade.addMix([LightBlue, Fluorescence]);
/*  6.72 */ JovialJade.addMix([White, Endo]);
/*  6.98 */ JovialJade.addMix([Cyan, YellowMana]);
/*  8.19 */ JovialJade.addMix([White, Fluorescence]);
/*  9.70 */ JovialJade.addMix([LightBlue, KissAFrog]);
/* 10.04 */ JovialJade.addMix([White, JovialJade]);
/* 10.34 */ JovialJade.addMix([LightBlue, YellowMana]);
/* 12.25 */ JovialJade.addMix([Cyan, JovialJade]);

// Purple
/*  0.00 */ Purple.addMix([Blue, Red]);
/*  4.20 */ Purple.addMix([Blue, Magenta]);
/*  4.35 */ Purple.addMix([Magenta, RuthlessEmpress]);
/*  4.80 */ Purple.addMix([Purple, LustyLavender]);
/*  4.84 */ Purple.addMix([Purple, RuthlessEmpress]);
/*  6.37 */ Purple.addMix([Purple, LochNess]);
/*  6.51 */ Purple.addMix([Purple, NoblePlum]);
/*  7.07 */ Purple.addMix([Purple, Magenta]);
/*  7.52 */ Purple.addMix([Magenta, ImperialPurple]);
/*  9.49 */ Purple.addMix([Magenta, NoblePlum]);

// Cyan
/*  0.00 */ Cyan.addMix([Blue, Green]);
/*  3.95 */ Cyan.addMix([Cyan, JapaneseBonsai]);
/*  4.66 */ Cyan.addMix([LightGray, Cyan]);
/*  5.30 */ Cyan.addMix([LightBlue, Cactus]);
/*  6.28 */ Cyan.addMix([Cyan, MysteriousBlue]);
/*  7.56 */ Cyan.addMix([Blue, Fluorescence]);
/*  8.81 */ Cyan.addMix([Cyan, ClassyMauve]);
/*  9.20 */ Cyan.addMix([LightBlue, Endo]);
/*  9.44 */ Cyan.addMix([Cyan, Cactus]);

// Noble Plum
/*  0.00 */ NoblePlum.addMix([Purple, ArcaneRed]);
/*  3.22 */ NoblePlum.addMix([Purple, Siren]);
/*  3.35 */ NoblePlum.addMix([Magenta, BruisedPlum]);
/*  4.57 */ NoblePlum.addMix([Purple, BruisedPlum]);
/*  5.15 */ NoblePlum.addMix([Black, Magenta]);
/*  6.60 */ NoblePlum.addMix([Red, FadingNight]);
/*  7.17 */ NoblePlum.addMix([Blue, StrawberryMoon]);
/*  7.19 */ NoblePlum.addMix([Purple, PlasticLips]);
/*  8.31 */ NoblePlum.addMix([Purple, IndianSilk]);

// Phoenix Red
/*  0.00 */ PhoenixRed.addMix([Red, SpaetzleYellow]);
/*  3.10 */ PhoenixRed.addMix([Pink, GingerDough]);
/*  3.24 */ PhoenixRed.addMix([Pink, Langoustine]);
/*  4.98 */ PhoenixRed.addMix([Red, Apricot]);
/*  6.51 */ PhoenixRed.addMix([Red, YellowMana]);
/*  7.10 */ PhoenixRed.addMix([Pink, Butterum]);
/*  7.31 */ PhoenixRed.addMix([Orange, Magenta]);
/*  8.28 */ PhoenixRed.addMix([Pink, PhoenixRed]);
/*  9.37 */ PhoenixRed.addMix([Pink, VinCuit]);

// Apricot
/*  0.00 */ Apricot.addMix([Yellow, Pink]);
/*  3.92 */ Apricot.addMix([Orange, BerriesNCream]);
/*  4.26 */ Apricot.addMix([Yellow, PhoenixRed]);
/*  5.63 */ Apricot.addMix([Orange, CreamPuff]);
/*  5.63 */ Apricot.addMix([Pink, Beer]);
/*  6.93 */ Apricot.addMix([Pink, LushBamboo]);
/*  7.03 */ Apricot.addMix([Orange, Apricot]);
/*  7.11 */ Apricot.addMix([White, Langoustine]);

// Orange
/*  0.00 */ Orange.addMix([Yellow, Red]);
/*  4.07 */ Orange.addMix([Yellow, Langoustine]);
/*  4.14 */ Orange.addMix([Orange, PhoenixRed]);
/*  5.22 */ Orange.addMix([Pink, Orange]);
/*  6.76 */ Orange.addMix([Orange, Beer]);
/*  7.63 */ Orange.addMix([Yellow, StrawberryMoon]);
/*  8.79 */ Orange.addMix([Orange, Butterum]);
/*  9.76 */ Orange.addMix([Orange, Honey]);

// Arcane Red
/*  0.00 */ ArcaneRed.addMix([Red, Black]);
/*  4.45 */ ArcaneRed.addMix([Red, BruisedPlum]);
/*  7.09 */ ArcaneRed.addMix([Brown, ArcaneRed]);
/*  7.19 */ ArcaneRed.addMix([Red, Gray]);
/*  8.59 */ ArcaneRed.addMix([Brown, Siren]);
/*  8.71 */ ArcaneRed.addMix([Brown, BruisedPlum]);
/*  8.84 */ ArcaneRed.addMix([Red, Siren]);
/* 10.19 */ ArcaneRed.addMix([Red, Cactus]);

// Langoustine
/*  0.00 */ Langoustine.addMix([Red, Orange]);
/*  3.97 */ Langoustine.addMix([Red, Beer]);
/*  5.37 */ Langoustine.addMix([Orange, PlasticLips]);
/*  6.08 */ Langoustine.addMix([Red, Honey]);
/*  6.33 */ Langoustine.addMix([Red, LushBamboo]);
/*  6.40 */ Langoustine.addMix([Red, Langoustine]);
/*  7.69 */ Langoustine.addMix([Orange, Langoustine]);
/*  8.23 */ Langoustine.addMix([Orange, StrawberryMoon]);

// Magenta
/*  0.00 */ Magenta.addMix([White, Purple]);
/*  3.92 */ Magenta.addMix([Pink, Purple]);
/*  5.32 */ Magenta.addMix([Magenta, LustyLavender]);
/*  5.73 */ Magenta.addMix([Magenta, PinkyPickle]);
/*  6.74 */ Magenta.addMix([Magenta, WizardsBrew]);
/*  8.02 */ Magenta.addMix([Purple, BerriesNCream]);
/*  8.92 */ Magenta.addMix([Magenta, PlasticLips]);

// Yellow
/*  3.85 */ Yellow.addMix([Yellow, SpaetzleYellow]);
/*  5.35 */ Yellow.addMix([White, Beer]);
/*  6.88 */ Yellow.addMix([Yellow, LushBamboo]);
/*  7.62 */ Yellow.addMix([Yellow, Beer]);
/*  9.87 */ Yellow.addMix([Yellow, Honey]);
/*  9.94 */ Yellow.addMix([Yellow, BerriesNCream]);
/* 10.06 */ Yellow.addMix([Yellow, ClassyMauve]);

// Green
/*  0.00 */ Green.addMix([Yellow, Blue]);
/*  2.77 */ Green.addMix([Green, PestoDiRucola]);
/*  4.51 */ Green.addMix([Green, BimiGreen]);
/*  4.68 */ Green.addMix([Green, Cactus]);
/*  5.37 */ Green.addMix([Lime, TreetopCathedral]);
/*  7.40 */ Green.addMix([Lime, LavaStone]);
/*  8.44 */ Green.addMix([Lime, Galaxea]);

// Imperial Purple
/*  0.00 */ ImperialPurple.addMix([Blue, ArcaneRed]);
/*  2.50 */ ImperialPurple.addMix([Black, Purple]);
/*  3.89 */ ImperialPurple.addMix([Blue, Siren]);
/*  4.67 */ ImperialPurple.addMix([Blue, BruisedPlum]);
/*  7.03 */ ImperialPurple.addMix([Black, NoblePlum]);
/*  7.23 */ ImperialPurple.addMix([Gray, NoblePlum]);
/*  9.74 */ ImperialPurple.addMix([Black, ImperialPurple]);

// Blue
/*  6.27 */ Blue.addMix([Blue, BerryJam]);
/*  6.36 */ Blue.addMix([Blue, LochNess]);
/*  6.47 */ Blue.addMix([Blue, Galaxea]);
/*  6.97 */ Blue.addMix([Blue, LustyLavender]);
/*  7.34 */ Blue.addMix([Purple, FadingNight]);
/*  8.58 */ Blue.addMix([Blue, Atlantis]);
/*  9.51 */ Blue.addMix([Cyan, ImperialPurple]);

// Treetop Cathedral
/*  0.00 */ TreetopCathedral.addMix([Black, Green]);
/*  5.66 */ TreetopCathedral.addMix([Black, PestoDiRucola]);
/*  5.66 */ TreetopCathedral.addMix([Black, BimiGreen]);
/*  5.90 */ TreetopCathedral.addMix([Black, Honey]);
/*  6.82 */ TreetopCathedral.addMix([Gray, TreetopCathedral]);
/*  9.36 */ TreetopCathedral.addMix([Green, BruisedPlum]);
/*  9.67 */ TreetopCathedral.addMix([Black, TreetopCathedral]);

// Spätzle Yellow
/*  0.00 */ SpaetzleYellow.addMix([White, Yellow]);
/*  3.05 */ SpaetzleYellow.addMix([Yellow, YellowMana]);
/*  5.93 */ SpaetzleYellow.addMix([White, LushBamboo]);
/*  6.97 */ SpaetzleYellow.addMix([Yellow, KissAFrog]);
/*  8.40 */ SpaetzleYellow.addMix([White, Honey]);
/* 11.48 */ SpaetzleYellow.addMix([Lime, YellowMana]);

// Light Gray
/*  0.00 */ LightGray.addMix([White, Gray]);
/*  5.50 */ LightGray.addMix([LightBlue, PhoenixRed]);
/*  7.46 */ LightGray.addMix([Brown, OverTheSky]);
/*  8.47 */ LightGray.addMix([Blue, Apricot]);
/* 10.65 */ LightGray.addMix([White, Lizard]);
/* 11.25 */ LightGray.addMix([Gray, CreamPuff]);

// Over the Sky
/*  0.00 */ OverTheSky.addMix([White, LightBlue]);
/*  7.45 */ OverTheSky.addMix([White, Cyan]);
/*  7.60 */ OverTheSky.addMix([White, MysteriousBlue]);
/*  7.87 */ OverTheSky.addMix([White, OverTheSky]);
/* 10.06 */ OverTheSky.addMix([LightGray, OverTheSky]);

// Bruised Plum
/*  0.00 */ BruisedPlum.addMix([Black, ArcaneRed]);
/*  4.51 */ BruisedPlum.addMix([Black, Siren]);
/*  6.37 */ BruisedPlum.addMix([Black, BruisedPlum]);
/*  7.96 */ BruisedPlum.addMix([Gray, BruisedPlum]);
/* 10.12 */ BruisedPlum.addMix([Black, IndianSilk]);

// Berries N’ Cream
/*  0.00 */ BerriesNCream.addMix([White, Pink]);
/*  6.87 */ BerriesNCream.addMix([White, PinkyPickle]);
/*  9.84 */ BerriesNCream.addMix([White, BerriesNCream]);
/* 11.77 */ BerriesNCream.addMix([White, ClassyMauve]);

// Yellow Mana
/*  0.00 */ YellowMana.addMix([White, SpaetzleYellow]);
/*  7.02 */ YellowMana.addMix([White, YellowMana]);
/*  7.64 */ YellowMana.addMix([White, KissAFrog]);

// Galaxea
/*  0.00 */ Galaxea.addMix([Blue, Black]);
/*  5.58 */ Galaxea.addMix([Black, RuthlessEmpress]);
/*  6.72 */ Galaxea.addMix([Blue, LavaStone]);

// White
/* 11.62 */ White.addMix([White, LightGray]);
/* 12.57 */ White.addMix([White, JapaneseBonsai]);

// Black
/*  8.09 */ Black.addMix([Black, Gray]);

global COLORS as Color[string] = Color.colors;

for id, color in COLORS {
    info(`Color ${id} can be mixed from ${color._mixed.length} color combinations.`);
}
