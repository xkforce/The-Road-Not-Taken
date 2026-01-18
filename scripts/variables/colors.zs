#loader preinit contenttweaker crafttweaker
#priority 1000

import scripts.classes.color.Color;

// Generation 0 (5 colors)
global White as Color = Color('white', '#F9FFFE');
White.vanilla();
global Yellow as Color = Color('yellow', '#FED83D');
Yellow.vanilla();
global Blue as Color = Color('blue', '#3C44AA');
Blue.vanilla();
global Red as Color = Color('red', '#B02E26');
Red.vanilla();
global Black as Color = Color('black', '#1D1D21');
Black.vanilla();

// Generation 1 (9 colors)
global Orange as Color = Color('orange', '#F9801D');
Orange.vanilla();
global LightBlue as Color = Color('light_blue', '#3AB3DA');
LightBlue.vanilla();
global Pink as Color = Color('pink', '#F38BAA');
Pink.vanilla();
global Gray as Color = Color('gray', '#474F52');
Gray.vanilla();
global Purple as Color = Color('purple', '#8932B8');
Purple.vanilla();
global Green as Color = Color('green', '#5E7C16');
Green.vanilla();
global ArcaneRed as Color = Color('arcane_red', '#612925');
global Galaxea as Color = Color('galaxea', '#32355E');
global SpaetzleYellow as Color = Color('spaetzle_yellow', '#FBEC89');

// Generation 2 (23 colors)
global Magenta as Color = Color('magenta', '#C74EBD');
Magenta.vanilla();
global Lime as Color = Color('lime', '#80C71F');
Lime.vanilla();
global LightGray as Color = Color('light_gray', '#9D9D97');
LightGray.vanilla();
global Cyan as Color = Color('cyan', '#169C9C');
Cyan.vanilla();
global Brown as Color = Color('brown', '#835432');
Brown.vanilla();
global WizardsBrew as Color = Color('wizards_brew', '#9890B9');
global IndianSilk as Color = Color('indian_silk', '#845468');
global RichGold as Color = Color('rich_gold', '#A38019');
global FadingNight as Color = Color('fading_night', '#3B78C3');
global TreetopCathedral as Color = Color('treetop_cathedral', '#334B18');
global PurpleProtege as Color = Color('purple_protege', '#55316C');
global Beer as Color = Color('beer', '#FCAB29');
global Lizard as Color = Color('lizard', '#7D6E49');
global TotallyBroccoli as Color = Color('totally_broccoli', '#8C9C4D');
global MysteriousBlue as Color = Color('mysterious_blue', '#487E8E');
global Langoustine as Color = Color('langoustine', '#D44E22');
global BerriesNCream as Color = Color('berries_n_cream', '#F7BECF');
global StrawberryMoon as Color = Color('strawberry_moon', '#D7536D');
global Apricot as Color = Color('apricot', '#FAB06F');
global Fluorescence as Color = Color('fluorescence', '#8CD873');
global BimiGreen as Color = Color('bimi_green', '#4E692C');
global Atlantis as Color = Color('atlantis', '#346576');
global NeverForget as Color = Color('never_forget', '#9B6A7D');

// Generation 3 (27 colors)
global Morocco as Color = Color('morocco', '#C26E65');
global ToadKing as Color = Color('toad_king', '#4D715B');
global Frappe as Color = Color('frappe', '#C5A188');
global DarkRum as Color = Color('dark_rum', '#483B2A');
global VolcanicAsh as Color = Color('volcanic_ash', '#717777');
global CandyFloss as Color = Color('candy_floss', '#DE9FDC');
global SpicyPurple as Color = Color('spicy_purple', '#C03B71');
global LightBrown as Color = Color('light_brown', '#B16927');
global SalsaVerde as Color = Color('salsa_verde', '#C5C462');
global TwinkleNight as Color = Color('twinkle_night', '#6D6DB0');
global DeepSeaDiver as Color = Color('deep_sea_diver', '#20565A');
global PinotNoir as Color = Color('pinot_noir', '#5E525C');
global KryptoniteGreen as Color = Color('kryptonite_green', '#37933E');
global SummerOf82 as Color = Color('summer_of82', '#76CED7');
global IronFist as Color = Color('iron_fist', '#C8CAC9');
global Greenfinch as Color = Color('greenfinch', '#B9A11D');
global VenomousSting as Color = Color('venomous_sting', '#CBED6B');
global CrownJewels as Color = Color('crown_jewels', '#9367A7');
global GreenWithEnvy as Color = Color('green_with_envy', '#3FBA4A');
global WhiskyBarrel as Color = Color('whisky_barrel', '#95775D');
global SuperPink as Color = Color('super_pink', '#DD6CB2');
global Jaffa as Color = Color('jaffa', '#D9764E');
global Kathmandu as Color = Color('kathmandu', '#B0975A');
global Ming as Color = Color('ming', '#327173');
global Tempest as Color = Color('tempest', '#8088A2');
global GrapeCandy as Color = Color('grape_candy', '#885187');
global Seaside as Color = Color('seaside', '#6BA7B5');

// Blue
/*  7.25 */ Blue.addMix([Purple, Blue]);

// Red
/*  4.87 */ Red.addMix([Brown, Red]);

// Black
/*  8.09 */ Black.addMix([Gray, Black]);

// Orange
/*  0.00 */ Orange.addMix([Yellow, Red]);
/*  5.22 */ Orange.addMix([Orange, Pink]);

// Light Blue
/*  0.00 */ LightBlue.addMix([White, Blue]);

// Pink
/*  0.00 */ Pink.addMix([White, Red]);
/*  7.94 */ Pink.addMix([Pink, LightGray]);

// Gray
/*  0.00 */ Gray.addMix([White, Black]);
/*  6.39 */ Gray.addMix([LightGray, Black]);

// Purple
/*  0.00 */ Purple.addMix([Blue, Red]);
/*  4.20 */ Purple.addMix([Magenta, Blue]);
/*  7.07 */ Purple.addMix([Magenta, Purple]);

// Green
/*  0.00 */ Green.addMix([Yellow, Blue]);
/*  5.80 */ Green.addMix([Yellow, Black]);

//  Arcane Red
/*  0.00 */ ArcaneRed.addMix([Red, Black]);
/*  7.19 */ ArcaneRed.addMix([Gray, Red]);

//  Galaxea
/*  0.00 */ Galaxea.addMix([Blue, Black]);
/*  7.91 */ Galaxea.addMix([Gray, Blue]);

//  Spätzle Yellow
/*  0.00 */ SpaetzleYellow.addMix([White, Yellow]);

// Magenta
/*  0.00 */ Magenta.addMix([White, Purple]);
/*  3.92 */ Magenta.addMix([Pink, Purple]);

// Lime
/*  0.00 */ Lime.addMix([White, Green]);
/*  5.21 */ Lime.addMix([Lime, LightGray]);

// Light Gray
/*  0.00 */ LightGray.addMix([White, Gray]);

// Cyan
/*  0.00 */ Cyan.addMix([Blue, Green]);
/*  4.66 */ Cyan.addMix([LightGray, Cyan]);

// Brown
/*  0.00 */ Brown.addMix([Orange, Black]);
/*  6.49 */ Brown.addMix([Green, Red]);

//  Wizard’s Brew
/*  0.00 */ WizardsBrew.addMix([LightBlue, Pink]);

//  Indian Silk
/*  0.00 */ IndianSilk.addMix([Pink, Black]);
/*  2.90 */ IndianSilk.addMix([Purple, Brown]);
/*  3.26 */ IndianSilk.addMix([LightBlue, Red]);

//  Rich Gold
/*  0.00 */ RichGold.addMix([Orange, Green]);

//  Fading Night
/*  0.00 */ FadingNight.addMix([LightBlue, Blue]);
/*  6.12 */ FadingNight.addMix([Cyan, Blue]);

//  Treetop Cathedral
/*  0.00 */ TreetopCathedral.addMix([Green, Black]);

//  Purple Protégé
/*  0.00 */ PurpleProtege.addMix([Purple, Black]);
/*  7.02 */ PurpleProtege.addMix([Magenta, Black]);
/*  7.15 */ PurpleProtege.addMix([Gray, Purple]);

//  Beer
/*  0.00 */ Beer.addMix([Orange, Yellow]);
/*  6.70 */ Beer.addMix([White, Orange]);

//  Lizard
/*  0.00 */ Lizard.addMix([Purple, Green]);
/*  6.17 */ Lizard.addMix([Orange, Gray]);
/*  7.38 */ Lizard.addMix([Orange, Blue]);
/*  7.97 */ Lizard.addMix([Brown, Green]);

//  Totally Broccoli
/*  0.00 */ TotallyBroccoli.addMix([Yellow, Gray]);
/*  1.98 */ TotallyBroccoli.addMix([LightGray, Green]);
/*  4.00 */ TotallyBroccoli.addMix([Orange, LightBlue]);
/*  5.88 */ TotallyBroccoli.addMix([Lime, Purple]);
/*  7.86 */ TotallyBroccoli.addMix([Lime, Brown]);
/*  7.96 */ TotallyBroccoli.addMix([Lime, Green]);

//  Mysterious Blue
/*  0.00 */ MysteriousBlue.addMix([LightBlue, Gray]);

//  Langoustine
/*  0.00 */ Langoustine.addMix([Orange, Red]);

//  Berries N’ Cream
/*  0.00 */ BerriesNCream.addMix([White, Pink]);

//  Strawberry Moon
/*  0.00 */ StrawberryMoon.addMix([Pink, Red]);
/*  7.97 */ StrawberryMoon.addMix([LightGray, Red]);

//  Apricot
/*  0.00 */ Apricot.addMix([Yellow, Pink]);

//  Fluorescence
/*  0.00 */ Fluorescence.addMix([LightBlue, Yellow]);
/*  4.36 */ Fluorescence.addMix([Yellow, Cyan]);
/*  5.27 */ Fluorescence.addMix([LightBlue, Lime]);

//  Bimi Green
/*  0.00 */ BimiGreen.addMix([Gray, Green]);
/*  4.23 */ BimiGreen.addMix([Lime, Black]);

//  Atlantis
/*  0.00 */ Atlantis.addMix([LightBlue, Black]);

//  Never Forget
/*  0.00 */ NeverForget.addMix([Pink, Gray]);

//  Morocco
/*  0.00 */ Morocco.addMix([Pink, Brown]);

//  Toad King
/*  0.00 */ ToadKing.addMix([Cyan, Brown]);
/*  7.86 */ ToadKing.addMix([LightBlue, Brown]);

//  Frappé
/*  0.00 */ Frappe.addMix([White, Brown]);
/*  6.40 */ Frappe.addMix([Yellow, Purple]);
/*  7.45 */ Frappe.addMix([Magenta, Yellow]);

//  Dark Rum
/*  0.00 */ DarkRum.addMix([Brown, Black]);
/*  7.90 */ DarkRum.addMix([Gray, Brown]);

//  Volcanic Ash
/*  0.00 */ VolcanicAsh.addMix([Gray, LightGray]);

//  Candy Floss
/*  0.00 */ CandyFloss.addMix([White, Magenta]);

//  Spicy Purple
/*  0.00 */ SpicyPurple.addMix([Magenta, Red]);
/*  7.06 */ SpicyPurple.addMix([Magenta, Brown]);
/*  7.88 */ SpicyPurple.addMix([Purple, Red]);

//  Light Brown
/*  0.00 */ LightBrown.addMix([Orange, Brown]);
/*  1.71 */ LightBrown.addMix([Lime, Red]);
/*  5.93 */ LightBrown.addMix([Orange, Purple]);

//  Salsa Verde
/*  0.00 */ SalsaVerde.addMix([Yellow, LightGray]);
/*  6.74 */ SalsaVerde.addMix([Yellow, Green]);

//  Twinkle Night
/*  0.00 */ TwinkleNight.addMix([Magenta, Cyan]);
/*  3.91 */ TwinkleNight.addMix([LightGray, Blue]);
/*  4.77 */ TwinkleNight.addMix([LightBlue, Purple]);
/*  6.02 */ TwinkleNight.addMix([Magenta, LightBlue]);
/*  6.52 */ TwinkleNight.addMix([Cyan, Purple]);

//  Deep Sea Diver
/*  0.00 */ DeepSeaDiver.addMix([Cyan, Black]);

//  Pinot Noir
/*  0.00 */ PinotNoir.addMix([Blue, Brown]);
/*  6.38 */ PinotNoir.addMix([Cyan, Red]);

//  Kryptonite Green
/*  0.00 */ KryptoniteGreen.addMix([Cyan, Green]);
/*  3.61 */ KryptoniteGreen.addMix([Lime, Blue]);
/*  5.64 */ KryptoniteGreen.addMix([Lime, Gray]);
/*  6.75 */ KryptoniteGreen.addMix([Orange, Cyan]);

//  Summer of ’82
/*  0.00 */ SummerOf82.addMix([White, Cyan]);
/*  7.45 */ SummerOf82.addMix([White, LightBlue]);

//  Iron Fist
/*  0.00 */ IronFist.addMix([White, LightGray]);

//  Greenfinch
/*  0.00 */ Greenfinch.addMix([Orange, Lime]);
/*  6.27 */ Greenfinch.addMix([Lime, Pink]);

//  Venomous Sting
/*  0.00 */ VenomousSting.addMix([White, Lime]);
/*  7.36 */ VenomousSting.addMix([Yellow, Lime]);

//  Crown Jewels
/*  0.00 */ CrownJewels.addMix([LightGray, Purple]);
/*  3.05 */ CrownJewels.addMix([Pink, Blue]);

//  Green With Envy
/*  0.00 */ GreenWithEnvy.addMix([Lime, Cyan]);
/*  5.35 */ GreenWithEnvy.addMix([LightBlue, Green]);

//  Whisky Barrel
/*  0.00 */ WhiskyBarrel.addMix([LightGray, Brown]);
/*  5.33 */ WhiskyBarrel.addMix([Magenta, Green]);

//  Super Pink
/*  0.00 */ SuperPink.addMix([Magenta, Pink]);
/*  7.72 */ SuperPink.addMix([Magenta, LightGray]);

//  Jaffa
/*  0.00 */ Jaffa.addMix([Orange, Magenta]);

//  Kathmandu
/*  0.00 */ Kathmandu.addMix([Magenta, Lime]);
/*  5.45 */ Kathmandu.addMix([Yellow, Brown]);
/*  6.09 */ Kathmandu.addMix([Orange, LightGray]);
/*  6.21 */ Kathmandu.addMix([Pink, Green]);

//  Ming
/*  0.00 */ Ming.addMix([Gray, Cyan]);

//  Tempest
/*  0.00 */ Tempest.addMix([Pink, Cyan]);

//  Grape Candy
/*  0.00 */ GrapeCandy.addMix([Magenta, Gray]);

//  Seaside
/*  0.00 */ Seaside.addMix([LightBlue, LightGray]);
/*  6.21 */ Seaside.addMix([LightBlue, Cyan]);

global COLORS_VANILLA as string[] = [];
for key, color in COLORS {
    if (color.vanilla) {
        COLORS_VANILLA.add(key);
    }
}

// these come directly from the old scripts and may be translated into the new format as needed

// two colors
static c101 as string[] = [
    "black", "blackblue", "blackbrown", "blackcyan", "blackgray", "blackgreen", "blacklightblue", "blacklightgray", "blacklime", "blackmagenta", "blackorange", "blackpink", "blackpurple", "blackred", "blackwhite", "blackyellow", "blueblack", "blue", "bluebrown", "bluecyan", "bluegray", "bluegreen", "bluelightblue", "bluelightgray", "bluelime", "bluemagenta", "blueorange", "bluepink", "bluepurple", "bluered", "bluewhite", "blueyellow", "brownblack", "brownblue", "brown", "browncyan", "browngray", "browngreen", "brownlightblue", "brownlightgray", "brownlime", "brownmagenta", "brownorange", "brownpink", "brownpurple", "brownred", "brownwhite", "brownyellow", "cyanblack", "cyanblue", "cyanbrown", "cyan", "cyangray", "cyangreen", "cyanlightblue", "cyanlightgray", "cyanlime", "cyanmagenta", "cyanorange", "cyanpink", "cyanpurple", "cyanred", "cyanwhite", "cyanyellow", "grayblack", "grayblue", "graybrown", "graycyan", "gray", "graygreen", "graylightblue", "graylightgray", "graylime", "graymagenta", "grayorange", "graypink", "graypurple", "grayred", "graywhite", "grayyellow", "greenblack", "greenblue", "greenbrown", "greencyan", "greengray", "green", "greenlightblue", "greenlightgray", "greenlime", "greenmagenta", "greenorange", "greenpink", "greenpurple", "greenred", "greenwhite", "greenyellow", "lightblueblack", "lightblueblue", "lightbluebrown", "lightbluecyan", "lightbluegray", "lightbluegreen", "lightblue", "lightbluelightgray", "lightbluelime", "lightbluemagenta", "lightblueorange", "lightbluepink", "lightbluepurple", "lightbluered", "lightbluewhite", "lightblueyellow", "lightgrayblack", "lightgrayblue", "lightgraybrown", "lightgraycyan", "lightgraygray", "lightgraygreen", "lightgraylightblue", "lightgray", "lightgraylime", "lightgraymagenta", "lightgrayorange", "lightgraypink", "lightgraypurple", "lightgrayred", "lightgraywhite", "lightgrayyellow", "limeblack", "limeblue", "limebrown", "limecyan", "limegray", "limegreen", "limelightblue", "limelightgray", "lime", "limemagenta", "limeorange", "limepink", "limepurple", "limered", "limewhite", "limeyellow", "magentablack", "magentablue", "magentabrown", "magentacyan", "magentagray", "magentagreen", "magentalightblue", "magentalightgray", "magentalime", "magenta", "magentaorange", "magentapink", "magentapurple", "magentared", "magentawhite", "magentayellow", "orangeblack", "orangeblue", "orangebrown", "orangecyan", "orangegray", "orangegreen", "orangelightblue", "orangelightgray", "orangelime", "orangemagenta", "orange", "orangepink", "orangepurple", "orangered", "orangewhite", "orangeyellow", "pinkblack", "pinkblue", "pinkbrown", "pinkcyan", "pinkgray", "pinkgreen", "pinklightblue", "pinklightgray", "pinklime", "pinkmagenta", "pinkorange", "pink", "pinkpurple", "pinkred", "pinkwhite", "pinkyellow", "purpleblack", "purpleblue", "purplebrown", "purplecyan", "purplegray", "purplegreen", "purplelightblue", "purplelightgray", "purplelime", "purplemagenta", "purpleorange", "purplepink", "purple", "purplered", "purplewhite", "purpleyellow", "redblack", "redblue", "redbrown", "redcyan", "redgray", "redgreen", "redlightblue", "redlightgray", "redlime", "redmagenta", "redorange", "redpink", "redpurple", "red", "redwhite", "redyellow", "whiteblack", "whiteblue", "whitebrown", "whitecyan", "whitegray", "whitegreen", "whitelightblue", "whitelightgray", "whitelime", "whitemagenta", "whiteorange", "whitepink", "whitepurple", "whitered", "white", "whiteyellow", "yellowblack", "yellowblue", "yellowbrown", "yellowcyan", "yellowgray", "yellowgreen", "yellowlightblue", "yellowlightgray", "yellowlime", "yellowmagenta", "yelloworange", "yellowpink", "yellowpurple", "yellowred", "yellowwhite", "yellow",
];
