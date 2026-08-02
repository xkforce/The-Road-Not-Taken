import classes.ZenColor
import core.Modpack

Modpack.LOGGER.info("🎨 Creating colors...")

// Generation 0 (5 colors)
def White = new ZenColor('white', '#F9FFFE')
White.setVanilla()

def Yellow = new ZenColor('yellow', '#FED83D')
Yellow.setVanilla()

def Blue = new ZenColor('blue', '#3C44AA')
Blue.setVanilla()

def Red = new ZenColor('red', '#B02E26')
Red.setVanilla()

def Black = new ZenColor('black', '#1D1D21')
Black.setVanilla()

// Generation 1 (9 colors)
def Orange = new ZenColor('orange', '#F9801D')
Orange.setVanilla()

def LightBlue = new ZenColor('light_blue', '#3AB3DA')
LightBlue.setVanilla()

def Pink = new ZenColor('pink', '#F38BAA')
Pink.setVanilla()

def Gray = new ZenColor('gray', '#474F52')
Gray.setVanilla()

def Purple = new ZenColor('purple', '#8932B8')
Purple.setVanilla()

def Green = new ZenColor('green', '#5E7C16')
Green.setVanilla()

def ArcaneRed = new ZenColor('arcane_red', '#612925')

def Galaxea = new ZenColor('galaxea', '#32355E')

def SpaetzleYellow = new ZenColor('spaetzle_yellow', '#FBEC89')

// Generation 2 (23 colors)
def Magenta = new ZenColor('magenta', '#C74EBD')
Magenta.setVanilla()

def Lime = new ZenColor('lime', '#80C71F')
Lime.setVanilla()

def LightGray = new ZenColor('light_gray', '#9D9D97')
LightGray.setVanilla()

def Cyan = new ZenColor('cyan', '#169C9C')
Cyan.setVanilla()

def Brown = new ZenColor('brown', '#835432')
Brown.setVanilla()

def WizardsBrew = new ZenColor('wizards_brew', '#9890B9')

def IndianSilk = new ZenColor('indian_silk', '#845468')

def RichGold = new ZenColor('rich_gold', '#A38019')

def FadingNight = new ZenColor('fading_night', '#3B78C3')

def TreetopCathedral = new ZenColor('treetop_cathedral', '#334B18')

def PurpleProtege = new ZenColor('purple_protege', '#55316C')

def Beer = new ZenColor('beer', '#FCAB29')

def Lizard = new ZenColor('lizard', '#7D6E49')

def TotallyBroccoli = new ZenColor('totally_broccoli', '#8C9C4D')

def MysteriousBlue = new ZenColor('mysterious_blue', '#487E8E')

def Langoustine = new ZenColor('langoustine', '#D44E22')

def BerriesNCream = new ZenColor('berries_n_cream', '#F7BECF')

def StrawberryMoon = new ZenColor('strawberry_moon', '#D7536D')

def Apricot = new ZenColor('apricot', '#FAB06F')

def Fluorescence = new ZenColor('fluorescence', '#8CD873')

def BimiGreen = new ZenColor('bimi_green', '#4E692C')

def Atlantis = new ZenColor('atlantis', '#346576')

def NeverForget = new ZenColor('never_forget', '#9B6A7D')

// Generation 3 (27 colors)
def Morocco = new ZenColor('morocco', '#C26E65')

def ToadKing = new ZenColor('toad_king', '#4D715B')

def Frappe = new ZenColor('frappe', '#C5A188')

def DarkRum = new ZenColor('dark_rum', '#483B2A')

def VolcanicAsh = new ZenColor('volcanic_ash', '#717777')

def CandyFloss = new ZenColor('candy_floss', '#DE9FDC')

def SpicyPurple = new ZenColor('spicy_purple', '#C03B71')

def LightBrown = new ZenColor('light_brown', '#B16927')

def SalsaVerde = new ZenColor('salsa_verde', '#C5C462')

def TwinkleNight = new ZenColor('twinkle_night', '#6D6DB0')

def DeepSeaDiver = new ZenColor('deep_sea_diver', '#20565A')

def PinotNoir = new ZenColor('pinot_noir', '#5E525C')

def KryptoniteGreen = new ZenColor('kryptonite_green', '#37933E')

def SummerOf82 = new ZenColor('summer_of82', '#76CED7')

def IronFist = new ZenColor('iron_fist', '#C8CAC9')

def Greenfinch = new ZenColor('greenfinch', '#B9A11D')

def VenomousSting = new ZenColor('venomous_sting', '#CBED6B')

def CrownJewels = new ZenColor('crown_jewels', '#9367A7')

def GreenWithEnvy = new ZenColor('green_with_envy', '#3FBA4A')

def WhiskyBarrel = new ZenColor('whisky_barrel', '#95775D')

def SuperPink = new ZenColor('super_pink', '#DD6CB2')

def Jaffa = new ZenColor('jaffa', '#D9764E')

def Kathmandu = new ZenColor('kathmandu', '#B0975A')

def Ming = new ZenColor('ming', '#327173')

def Tempest = new ZenColor('tempest', '#8088A2')

def GrapeCandy = new ZenColor('grape_candy', '#885187')

def Seaside = new ZenColor('seaside', '#6BA7B5')


// Blue
/*  7.25 */ Blue.addMix([Purple, Blue])

// Red
/*  4.87 */ Red.addMix([Brown, Red])

// Black
/*  8.09 */ Black.addMix([Gray, Black])

// Orange
/*  0.00 */ Orange.addMix([Yellow, Red])
/*  5.22 */ Orange.addMix([Orange, Pink])

// Light Blue
/*  0.00 */ LightBlue.addMix([White, Blue])

// Pink
/*  0.00 */ Pink.addMix([White, Red])
/*  7.94 */ Pink.addMix([Pink, LightGray])

// Gray
/*  0.00 */ Gray.addMix([White, Black])
/*  6.39 */ Gray.addMix([LightGray, Black])

// Purple
/*  0.00 */ Purple.addMix([Blue, Red])
/*  4.20 */ Purple.addMix([Magenta, Blue])
/*  7.07 */ Purple.addMix([Magenta, Purple])

// Green
/*  0.00 */ Green.addMix([Yellow, Blue])
/*  5.80 */ Green.addMix([Yellow, Black])

//  Arcane Red
/*  0.00 */ ArcaneRed.addMix([Red, Black])
/*  7.19 */ ArcaneRed.addMix([Gray, Red])

//  Galaxea
/*  0.00 */ Galaxea.addMix([Blue, Black])
/*  7.91 */ Galaxea.addMix([Gray, Blue])

//  Spätzle Yellow
/*  0.00 */ SpaetzleYellow.addMix([White, Yellow])

// Magenta
/*  0.00 */ Magenta.addMix([White, Purple])
/*  3.92 */ Magenta.addMix([Pink, Purple])

// Lime
/*  0.00 */ Lime.addMix([White, Green])
/*  5.21 */ Lime.addMix([Lime, LightGray])

// Light Gray
/*  0.00 */ LightGray.addMix([White, Gray])

// Cyan
/*  0.00 */ Cyan.addMix([Blue, Green])
/*  4.66 */ Cyan.addMix([LightGray, Cyan])

// Brown
/*  0.00 */ Brown.addMix([Orange, Black])
/*  6.49 */ Brown.addMix([Green, Red])

//  Wizard’s Brew
/*  0.00 */ WizardsBrew.addMix([LightBlue, Pink])

//  Indian Silk
/*  0.00 */ IndianSilk.addMix([Pink, Black])
/*  2.90 */ IndianSilk.addMix([Purple, Brown])
/*  3.26 */ IndianSilk.addMix([LightBlue, Red])

//  Rich Gold
/*  0.00 */ RichGold.addMix([Orange, Green])

//  Fading Night
/*  0.00 */ FadingNight.addMix([LightBlue, Blue])
/*  6.12 */ FadingNight.addMix([Cyan, Blue])

//  Treetop Cathedral
/*  0.00 */ TreetopCathedral.addMix([Green, Black])

//  Purple Protégé
/*  0.00 */ PurpleProtege.addMix([Purple, Black])
/*  7.02 */ PurpleProtege.addMix([Magenta, Black])
/*  7.15 */ PurpleProtege.addMix([Gray, Purple])

//  Beer
/*  0.00 */ Beer.addMix([Orange, Yellow])
/*  6.70 */ Beer.addMix([White, Orange])

//  Lizard
/*  0.00 */ Lizard.addMix([Purple, Green])
/*  6.17 */ Lizard.addMix([Orange, Gray])
/*  7.38 */ Lizard.addMix([Orange, Blue])
/*  7.97 */ Lizard.addMix([Brown, Green])

//  Totally Broccoli
/*  0.00 */ TotallyBroccoli.addMix([Yellow, Gray])
/*  1.98 */ TotallyBroccoli.addMix([LightGray, Green])
/*  4.00 */ TotallyBroccoli.addMix([Orange, LightBlue])
/*  5.88 */ TotallyBroccoli.addMix([Lime, Purple])
/*  7.86 */ TotallyBroccoli.addMix([Lime, Brown])
/*  7.96 */ TotallyBroccoli.addMix([Lime, Green])

//  Mysterious Blue
/*  0.00 */ MysteriousBlue.addMix([LightBlue, Gray])

//  Langoustine
/*  0.00 */ Langoustine.addMix([Orange, Red])

//  Berries N’ Cream
/*  0.00 */ BerriesNCream.addMix([White, Pink])

//  Strawberry Moon
/*  0.00 */ StrawberryMoon.addMix([Pink, Red])
/*  7.97 */ StrawberryMoon.addMix([LightGray, Red])

//  Apricot
/*  0.00 */ Apricot.addMix([Yellow, Pink])

//  Fluorescence
/*  0.00 */ Fluorescence.addMix([LightBlue, Yellow])
/*  4.36 */ Fluorescence.addMix([Yellow, Cyan])
/*  5.27 */ Fluorescence.addMix([LightBlue, Lime])

//  Bimi Green
/*  0.00 */ BimiGreen.addMix([Gray, Green])
/*  4.23 */ BimiGreen.addMix([Lime, Black])

//  Atlantis
/*  0.00 */ Atlantis.addMix([LightBlue, Black])

//  Never Forget
/*  0.00 */ NeverForget.addMix([Pink, Gray])

//  Morocco
/*  0.00 */ Morocco.addMix([Pink, Brown])

//  Toad King
/*  0.00 */ ToadKing.addMix([Cyan, Brown])
/*  7.86 */ ToadKing.addMix([LightBlue, Brown])

//  Frappé
/*  0.00 */ Frappe.addMix([White, Brown])
/*  6.40 */ Frappe.addMix([Yellow, Purple])
/*  7.45 */ Frappe.addMix([Magenta, Yellow])

//  Dark Rum
/*  0.00 */ DarkRum.addMix([Brown, Black])
/*  7.90 */ DarkRum.addMix([Gray, Brown])

//  Volcanic Ash
/*  0.00 */ VolcanicAsh.addMix([Gray, LightGray])

//  Candy Floss
/*  0.00 */ CandyFloss.addMix([White, Magenta])

//  Spicy Purple
/*  0.00 */ SpicyPurple.addMix([Magenta, Red])
/*  7.06 */ SpicyPurple.addMix([Magenta, Brown])
/*  7.88 */ SpicyPurple.addMix([Purple, Red])

//  Light Brown
/*  0.00 */ LightBrown.addMix([Orange, Brown])
/*  1.71 */ LightBrown.addMix([Lime, Red])
/*  5.93 */ LightBrown.addMix([Orange, Purple])

//  Salsa Verde
/*  0.00 */ SalsaVerde.addMix([Yellow, LightGray])
/*  6.74 */ SalsaVerde.addMix([Yellow, Green])

//  Twinkle Night
/*  0.00 */ TwinkleNight.addMix([Magenta, Cyan])
/*  3.91 */ TwinkleNight.addMix([LightGray, Blue])
/*  4.77 */ TwinkleNight.addMix([LightBlue, Purple])
/*  6.02 */ TwinkleNight.addMix([Magenta, LightBlue])
/*  6.52 */ TwinkleNight.addMix([Cyan, Purple])

//  Deep Sea Diver
/*  0.00 */ DeepSeaDiver.addMix([Cyan, Black])

//  Pinot Noir
/*  0.00 */ PinotNoir.addMix([Blue, Brown])
/*  6.38 */ PinotNoir.addMix([Cyan, Red])

//  Kryptonite Green
/*  0.00 */ KryptoniteGreen.addMix([Cyan, Green])
/*  3.61 */ KryptoniteGreen.addMix([Lime, Blue])
/*  5.64 */ KryptoniteGreen.addMix([Lime, Gray])
/*  6.75 */ KryptoniteGreen.addMix([Orange, Cyan])

//  Summer of ’82
/*  0.00 */ SummerOf82.addMix([White, Cyan])
/*  7.45 */ SummerOf82.addMix([White, LightBlue])

//  Iron Fist
/*  0.00 */ IronFist.addMix([White, LightGray])

//  Greenfinch
/*  0.00 */ Greenfinch.addMix([Orange, Lime])
/*  6.27 */ Greenfinch.addMix([Lime, Pink])

//  Venomous Sting
/*  0.00 */ VenomousSting.addMix([White, Lime])
/*  7.36 */ VenomousSting.addMix([Yellow, Lime])

//  Crown Jewels
/*  0.00 */ CrownJewels.addMix([LightGray, Purple])
/*  3.05 */ CrownJewels.addMix([Pink, Blue])

//  Green With Envy
/*  0.00 */ GreenWithEnvy.addMix([Lime, Cyan])
/*  5.35 */ GreenWithEnvy.addMix([LightBlue, Green])

//  Whisky Barrel
/*  0.00 */ WhiskyBarrel.addMix([LightGray, Brown])
/*  5.33 */ WhiskyBarrel.addMix([Magenta, Green])

//  Super Pink
/*  0.00 */ SuperPink.addMix([Magenta, Pink])
/*  7.72 */ SuperPink.addMix([Magenta, LightGray])

//  Jaffa
/*  0.00 */ Jaffa.addMix([Orange, Magenta])

//  Kathmandu
/*  0.00 */ Kathmandu.addMix([Magenta, Lime])
/*  5.45 */ Kathmandu.addMix([Yellow, Brown])
/*  6.09 */ Kathmandu.addMix([Orange, LightGray])
/*  6.21 */ Kathmandu.addMix([Pink, Green])

//  Ming
/*  0.00 */ Ming.addMix([Gray, Cyan])

//  Tempest
/*  0.00 */ Tempest.addMix([Pink, Cyan])

//  Grape Candy
/*  0.00 */ GrapeCandy.addMix([Magenta, Gray])

//  Seaside
/*  0.00 */ Seaside.addMix([LightBlue, LightGray])
/*  6.21 */ Seaside.addMix([LightBlue, Cyan])

Modpack.LOGGER.info("🎨 Created ${ZenColor.size()} colors!")
