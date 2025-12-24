#loader preinit contenttweaker crafttweaker
#priority 10000

static edible_crops as string[] = [
    "purplecarrot", "redcarrot", "yellowcarrot", "whitecarrot", "blackcarrot", "greenbokchoy", "redbokchoy", "greencabbage",
    "redcabbage", "whitecabbage", "blackcabbage", "greenchinesecabbage", "purplechinesecabbage", "orangechinesecabbage",
    "yellowchinesecabbage", "cassava", "broccoli", "greenbrusselsprouts", "purplebrusselsprouts", "greencelery", "redcelery",
    "yellowcelery", "chickpea", "cilantro", "collards", "whiteeggplant", "purpleeggplant", "yelloweggplant", "redeggplant",
    "orangeeggplant", "greeneggplant", "purplewhitestripedeggplant", "greenlentil", "redlentil", "blacklentil", "yellowlentil",
    "whitegarlic", "purplegarlic", "ginger", "jicama", "greenkale", "redkale", "kholrabi", "fennel", "greenlettuce", "redlettuce",
    "mustard", "okra", "yellowonion", "redonion", "whiteonion", "arrowroot", "cowpea", "drumstick", "parsley", "parsnip", "peanut",
    "redpotato", "russetpotato", "purpleradish", "blackradish", "daikonradish", "rutabaga", "greenspinach", "redspinach", "taro",
    "turnip", "winterradish", "brownyam", "purpleyam", "whitecauliflower", "orangecauliflower", "purplecauliflower", "yellowcauliflower",
    "broccoflower", "sugarbeet", "alfalfa", "arugala", "whitebeet", "yellowbeet", "orangebeet", "blackbeet", "candystripebeet",
    "celeriac", "greenchard", "redchard", "orangechard", "yellowchard", "chives", "galangal", "greenkohlrabi", "redkohlrabi", "leek",
    "yellowpineapple", "pinkpineapple", "shallot", "redcherrytomatoes", "orangecherrytomatoes", "yellowcherrytomatoes",
    "purplecherrytomatoes", "whitecherrytomatoes", "pinkcherrytomatoes", "blackcherrytomatoes", "blackeyedpea", "waxbeans", 
    "anaheimpepper", "bananapepper", "greenbellpepper", "redbellpepper", "orangebellpepper", "yellowbellpepper", "blackbellpepper", 
    "purplebellpepper", "whitebellpepper", "brownbellpepper", "chilipepper", "blackhungarianpepper", "birdseyepepper", "cayennepepper", 
    "paprika", "szechuanpepper", "tobascopepper", "pigeonpea", "fishpepper", "fresnopepper", "ghostpepper", "habaneropepper",
    "greenjalapenopepper", "redjalapenopepper", "papricapepper", "bananasquash", "greencucumbers", "yellowcucumbers", "pimentopepper",
    "greensnappeas", "purplesnappeas", "piripiripepper", "poblanopepper", "serranopepper", "tabascopepper", "scotchbonnetpepper",
    "adzukibean", "blackeyedpeas", "garbanzobean", "favabean", "greensoybean", "yellowsoybean", "blacksoybean", "greenbean", "longbean",
    "mungbean", "greensplitpeas", "yellowsplitpeas", "yardlongbean", "wingedbean", "greengrapes", "redgrapes", "pinkgrapes", "orangegrapes",
    "blackgrapes", "yellowgrapes", "redtomatoes", "greentomatoes", "orangetomatoes", "yellowtomatoes", "purpletomatoes", "whitetomatoes",
    "pinktomatoes", "blacktomatoes", "tomatillos", "japanesesweetpotato", "naramelon", "sweetpeatuber", "greenartichoke", "purpleartichoke",
    "greenasparagus", "purpleasparagus", "whiteasparagus", "cookedbambooshoots", "greenbasil", "purplebasil", "brakenfern", "burdock",
    "horseradish", "lambsquarters", "pinkmelocactusfruit", "whitemelocactusfruit", "redmelocactusfruit", "sunchoke", "morobloodorange",
    "purslane", "sealettuce", "pitpit", "cookedfiddleheads",
    // Squashes
    "acornsquash", "buttercupsquash", "butternutsquash", "delicatasquash", "hubbardsquash", "lakotasquash", "pattypansquash", 
    "spaghettisquash", "sweetdumplingsquash", "australianbluepumpkin", "jarrahdalepumpkin", "rougedetampespumpkin", "whitepumpkin", 
    "yellowpumpkin", "spaghettisquash", "sweetdumplingsquash",
    // Melons
    "canarymelon", "cantaloupemelon", "casabamelon", "hamimelon", "honeydewmelon", "hornedmelon", "pepinomelon", "orangewatermelon", 
    "yellowwatermelon", "wintermelon",
];

static inedible_crops as string[] = [
    "agave", "amaranth", "barley", "blackbean", "blackkidneybean", "broadbean", "buckwheat", "butterbean", "cannellinibean", "caraway",
    "cardamom", "chia", "cotton", "cranberrybean", "cumin", "dill", "fenugreek", "fingermillet", "foxtailmillet", "gentianroot",
    "grainsofparadise", "greatnorthernbean", "greensplitpea", "hops", "japanesemillet", "kaniwa", "kodomillet", "limabean", "lymegrass",
    "navybean", "oats", "pearlmillet", "peppercorns", "pinkbean", "pintobean", "poppyseed", "quinoa", "redkidneybean", "rye", "seasame",
    "sesameseed", "sorghum", "spelt", "teff", "wasabi", "whitekidneybean", "yellowsplitpea", "flax"
];
