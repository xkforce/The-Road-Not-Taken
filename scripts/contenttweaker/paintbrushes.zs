val yellowbrush = <contenttweaker:yellowpaintbrush>;
val whitebrush = <contenttweaker:whitepaintbrush>;
val emptypaintbrush = <contenttweaker:emptypaintbrush>;
val lightgraybrush = <contenttweaker:lightgraypaintbrush>;
val redbrush = <contenttweaker:redpaintbrush>;
val purplebrush = <contenttweaker:purplepaintbrush>;
val pinkbrush = <contenttweaker:pinkpaintbrush>;
val orangebrush = <contenttweaker:orangepaintbrush>;
val magentabrush = <contenttweaker:magentapaintbrush>;
val limebrush = <contenttweaker:limepaintbrush>;
val lightbluebrush = <contenttweaker:lightbluepaintbrush>;
val greenbrush = <contenttweaker:greenpaintbrush>;
val graybrush = <contenttweaker:graypaintbrush>;
val cyanbrush = <contenttweaker:cyanpaintbrush>;
val bluebrush = <contenttweaker:bluepaintbrush>;
val blackbrush = <contenttweaker:blackpaintbrush>;
val brownbrush = <contenttweaker:brownpaintbrush>;
var dyeBlack = <ore:dyeBlack>;
var dyeRed = <ore:dyeRed>;
var dyeGreen = <ore:dyeGreen>;
var dyeBrown = <ore:dyeBrown>;
var dyeBlue = <ore:dyeBlue>;
var dyePurple = <ore:dyePurple>;
var dyeCyan = <ore:dyeCyan>;
var dyeLightGray = <ore:dyeLightGray>;
var dyeGray = <ore:dyeGray>;
var dyePink = <ore:dyePink>;
var dyeLime = <ore:dyeLime>;
var dyeYellow = <ore:dyeYellow>;
var dyeLightBlue = <ore:dyeLightBlue>;
var dyeMagenta = <ore:dyeMagenta>;
var dyeOrange = <ore:dyeOrange>;
var dyeWhite = <ore:dyeWhite>;
var dyeblockBlack = <ore:dyeblockBlack>;
var dyeblockRed = <ore:dyeblockRed>;
var dyeblockGreen = <ore:dyeblockGreen>;
var dyeblockBrown = <ore:dyeblockBrown>;
var dyeblockBlue = <ore:dyeblockBlue>;
var dyeblockPurple = <ore:dyeblockPurple>;
var dyeblockCyan = <ore:dyeblockCyan>;
var dyeblockLightGray = <ore:dyeblockLightGray>;
var dyeblockGray = <ore:dyeblockGray>;
var dyeblockPink = <ore:dyeblockPink>;
var dyeblockLime = <ore:dyeblockLime>;
var dyeblockYellow = <ore:dyeblockYellow>;
var dyeblockLightBlue = <ore:dyeblockLightBlue>;
var dyeblockMagenta = <ore:dyeblockMagenta>;
var dyeblockOrange = <ore:dyeblockOrange>;
var dyeblockWhite = <ore:dyeblockWhite>;
var purpledyenugget = <ore:purpledyenugget>;
var reddyenugget = <ore:reddyenugget>;
var graydyenugget = <ore:graydyenugget>;
var yellowdyenugget = <ore:yellowdyenugget>;
var lightgraydyenugget = <ore:lightgraydyenugget>;
var pinkdyenugget = <ore:pinkdyenugget>;
var greendyenugget = <ore:greendyenugget>;
var blackdyenugget = <ore:blackdyenugget>;
var whitedyenugget = <ore:whitedyenugget>;
var bluedyenugget = <ore:bluedyenugget>;
var lightbluedyenugget = <ore:lightbluedyenugget>;
var limedyenugget = <ore:limedyenugget>;
var cyandyenugget = <ore:cyandyenugget>;
var browndyenugget = <ore:browndyenugget>;
var magentadyenugget = <ore:magentadyenugget>;
var orangedyenugget = <ore:orangedyenugget>;

recipes.addShapeless(<contenttweaker:yellowpaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockYellow]);
recipes.addShapeless(<contenttweaker:yellowpaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeYellow]);
recipes.addShapeless(<contenttweaker:yellowpaintbrush:647>, [<contenttweaker:emptypaintbrush>,yellowdyenugget]);
recipes.addShapeless("yellowbrushrepair72",yellowbrush, [yellowbrush.anyDamage().marked("mark"),dyeblockYellow], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("yellowbrushrepair8",yellowbrush, [yellowbrush.anyDamage().marked("mark"),dyeYellow], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("yellowbrushrepair1",yellowbrush, [yellowbrush.anyDamage().marked("mark"),yellowdyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 

recipes.addShapeless(<contenttweaker:lightgraypaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockLightGray]);
recipes.addShapeless(<contenttweaker:lightgraypaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeLightGray]);
recipes.addShapeless(<contenttweaker:lightgraypaintbrush:647>, [<contenttweaker:emptypaintbrush>,lightgraydyenugget]);
recipes.addShapeless("lightgraybrushrepair72",lightgraybrush, [lightgraybrush.anyDamage().marked("mark"),dyeblockLightGray], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("lightgraybrushrepair8",lightgraybrush, [lightgraybrush.anyDamage().marked("mark"),dyeLightGray], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("lightgraybrushrepair1",lightgraybrush, [lightgraybrush.anyDamage().marked("mark"),lightgraydyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 

recipes.addShapeless(<contenttweaker:redpaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockRed]);
recipes.addShapeless(<contenttweaker:redpaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeRed]);
recipes.addShapeless(<contenttweaker:redpaintbrush:647>, [<contenttweaker:emptypaintbrush>,reddyenugget]);
recipes.addShapeless("redbrushrepair72",redbrush, [redbrush.anyDamage().marked("mark"),dyeblockRed], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("redbrushrepair8",redbrush, [redbrush.anyDamage().marked("mark"),dyeRed], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("redbrushrepair1",redbrush, [redbrush.anyDamage().marked("mark"),reddyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 

recipes.addShapeless(<contenttweaker:purplepaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockPurple]);
recipes.addShapeless(<contenttweaker:purplepaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyePurple]);
recipes.addShapeless(<contenttweaker:purplepaintbrush:647>, [<contenttweaker:emptypaintbrush>,purpledyenugget]);
recipes.addShapeless("purplebrushrepair72",purplebrush, [purplebrush.anyDamage().marked("mark"),dyeblockPurple], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("purplebrushrepair8",purplebrush, [purplebrush.anyDamage().marked("mark"),dyePurple], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("purplebrushrepair1",purplebrush, [purplebrush.anyDamage().marked("mark"),purpledyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 

recipes.addShapeless(<contenttweaker:pinkpaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockPink]);
recipes.addShapeless(<contenttweaker:pinkpaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyePink]);
recipes.addShapeless(<contenttweaker:pinkpaintbrush:647>, [<contenttweaker:emptypaintbrush>,pinkdyenugget]);
recipes.addShapeless("pinkbrushrepair72",pinkbrush, [pinkbrush.anyDamage().marked("mark"),dyeblockPink], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("pinkbrushrepair8",pinkbrush, [pinkbrush.anyDamage().marked("mark"),dyePink], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("pinkbrushrepair1",pinkbrush, [pinkbrush.anyDamage().marked("mark"),pinkdyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 

recipes.addShapeless(<contenttweaker:orangepaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockOrange]);
recipes.addShapeless(<contenttweaker:orangepaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeOrange]);
recipes.addShapeless(<contenttweaker:orangepaintbrush:647>, [<contenttweaker:emptypaintbrush>,orangedyenugget]);
recipes.addShapeless("orangebrushrepair72",orangebrush, [orangebrush.anyDamage().marked("mark"),dyeblockOrange], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("orangebrushrepair8",orangebrush, [orangebrush.anyDamage().marked("mark"),dyeOrange], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("orangebrushrepair1",orangebrush, [orangebrush.anyDamage().marked("mark"),orangedyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 

recipes.addShapeless(<contenttweaker:magentapaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockMagenta]);
recipes.addShapeless(<contenttweaker:magentapaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeMagenta]);
recipes.addShapeless(<contenttweaker:magentapaintbrush:647>, [<contenttweaker:emptypaintbrush>,magentadyenugget]);
recipes.addShapeless("magentabrushrepair72",magentabrush, [magentabrush.anyDamage().marked("mark"),dyeblockMagenta], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("magentabrushrepair8",magentabrush, [magentabrush.anyDamage().marked("mark"),dyeMagenta], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("magentabrushrepair1",magentabrush, [magentabrush.anyDamage().marked("mark"),magentadyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 

recipes.addShapeless(<contenttweaker:limepaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockLime]);
recipes.addShapeless(<contenttweaker:limepaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeLime]);
recipes.addShapeless(<contenttweaker:limepaintbrush:647>, [<contenttweaker:emptypaintbrush>,limedyenugget]);
recipes.addShapeless("limebrushrepair72",limebrush, [limebrush.anyDamage().marked("mark"),dyeblockLime], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("limebrushrepair8",limebrush, [limebrush.anyDamage().marked("mark"),dyeLime], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("limebrushrepair1",limebrush, [limebrush.anyDamage().marked("mark"),limedyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 

recipes.addShapeless(<contenttweaker:lightbluepaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockLightBlue]);
recipes.addShapeless(<contenttweaker:lightbluepaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeLightBlue]);
recipes.addShapeless(<contenttweaker:lightbluepaintbrush:647>, [<contenttweaker:emptypaintbrush>,lightbluedyenugget]);
recipes.addShapeless("lightbluebrushrepair72",lightbluebrush, [lightbluebrush.anyDamage().marked("mark"),dyeblockLightBlue], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("lightbluebrushrepair8",lightbluebrush, [lightbluebrush.anyDamage().marked("mark"),dyeLightBlue], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("lightbluebrushrepair1",lightbluebrush, [lightbluebrush.anyDamage().marked("mark"),lightbluedyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 

recipes.addShapeless(<contenttweaker:greenpaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockGreen]);
recipes.addShapeless(<contenttweaker:greenpaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeGreen]);
recipes.addShapeless(<contenttweaker:greenpaintbrush:647>, [<contenttweaker:emptypaintbrush>,greendyenugget]);
recipes.addShapeless("greenbrushrepair72",greenbrush, [greenbrush.anyDamage().marked("mark"),dyeblockGreen], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("greenbrushrepair8",greenbrush, [greenbrush.anyDamage().marked("mark"),dyeGreen], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("greenbrushrepair1",greenbrush, [greenbrush.anyDamage().marked("mark"),greendyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 

recipes.addShapeless(<contenttweaker:graypaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockGray]);
recipes.addShapeless(<contenttweaker:graypaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeGray]);
recipes.addShapeless(<contenttweaker:graypaintbrush:647>, [<contenttweaker:emptypaintbrush>,graydyenugget]);
recipes.addShapeless("graybrushrepair72",graybrush, [graybrush.anyDamage().marked("mark"),dyeblockGray], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("graybrushrepair8",graybrush, [graybrush.anyDamage().marked("mark"),dyeGray], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("graybrushrepair1",graybrush, [graybrush.anyDamage().marked("mark"),graydyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 

recipes.addShapeless(<contenttweaker:cyanpaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockCyan]);
recipes.addShapeless(<contenttweaker:cyanpaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeCyan]);
recipes.addShapeless(<contenttweaker:cyanpaintbrush:647>, [<contenttweaker:emptypaintbrush>,cyandyenugget]);
recipes.addShapeless("cyanbrushrepair72",cyanbrush, [cyanbrush.anyDamage().marked("mark"),dyeblockCyan], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("cyanbrushrepair8",cyanbrush, [cyanbrush.anyDamage().marked("mark"),dyeCyan], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("cyanbrushrepair1",cyanbrush, [cyanbrush.anyDamage().marked("mark"),cyandyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 

recipes.addShapeless(<contenttweaker:whitepaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockWhite]);
recipes.addShapeless(<contenttweaker:whitepaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeWhite]);
recipes.addShapeless(<contenttweaker:whitepaintbrush:647>, [<contenttweaker:emptypaintbrush>,whitedyenugget]);
recipes.addShapeless("whitebrushrepair72",whitebrush, [whitebrush.anyDamage().marked("mark"),dyeblockWhite], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("whitebrushrepair8",whitebrush, [whitebrush.anyDamage().marked("mark"),dyeWhite], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("whitebrushrepair1",whitebrush, [whitebrush.anyDamage().marked("mark"),whitedyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 

recipes.addShapeless(<contenttweaker:bluepaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockBlue]);
recipes.addShapeless(<contenttweaker:bluepaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeBlue]);
recipes.addShapeless(<contenttweaker:bluepaintbrush:647>, [<contenttweaker:emptypaintbrush>,bluedyenugget]);
recipes.addShapeless("bluebrushrepair72",bluebrush, [bluebrush.anyDamage().marked("mark"),dyeblockBlue], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("bluebrushrepair8",bluebrush, [bluebrush.anyDamage().marked("mark"),dyeBlue], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("bluebrushrepair1",bluebrush, [bluebrush.anyDamage().marked("mark"),bluedyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 

recipes.addShapeless(<contenttweaker:blackpaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockBlack]);
recipes.addShapeless(<contenttweaker:blackpaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeBlack]);
recipes.addShapeless(<contenttweaker:blackpaintbrush:647>, [<contenttweaker:emptypaintbrush>,blackdyenugget]);
recipes.addShapeless("blackbrushrepair72",blackbrush, [blackbrush.anyDamage().marked("mark"),dyeblockBlack], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("blackbrushrepair8",blackbrush, [blackbrush.anyDamage().marked("mark"),dyeBlack], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("blackbrushrepair1",blackbrush, [blackbrush.anyDamage().marked("mark"),blackdyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 

recipes.addShapeless(<contenttweaker:brownpaintbrush:576>, [<contenttweaker:emptypaintbrush>,dyeblockBrown]);
recipes.addShapeless(<contenttweaker:brownpaintbrush:640>, [<contenttweaker:emptypaintbrush>,dyeBrown]);
recipes.addShapeless(<contenttweaker:brownpaintbrush:647>, [<contenttweaker:emptypaintbrush>,browndyenugget]);
recipes.addShapeless("brownbrushrepair72",brownbrush, [brownbrush.anyDamage().marked("mark"),dyeblockBrown], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 72));
}, null); 
recipes.addShapeless("brownbrushrepair8",brownbrush, [brownbrush.anyDamage().marked("mark"),dyeBrown], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 8));
}, null); 
recipes.addShapeless("brownbrushrepair1",brownbrush, [brownbrush.anyDamage().marked("mark"),browndyenugget], function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));
}, null); 






























