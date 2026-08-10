#loader preinit
#modloaded contentcreator
#priority 110

import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;

val gourd = Mat.gourd();

val gourds as string[] = [
    "canarymelon",
    "greencantaloupemelon",
    "orangecantaloupemelon",
    "pinkcantaloupemelon",
    "redcantaloupemelon",
    "yellowcantaloupemelon",
    "whitecantaloupemelon",
    "casabamelon",
    "honeydewmelon",
    "santaclausmelon",
    "amberpumpkin",
    "blackpumpkin",
    "creampumpkin",
    "darkgreenpumpkin",
    "greenpumpkin",
    "lavenderpumpkin",
    "lightgraypumpkin",
    "palegreenpumpkin",
    "peachpumpkin",
    "pinkpumpkin",
    "redpumpkin",
    "tanpumpkin",
    "vermilionpumpkin",
    "whitepumpkin",
    "wineredpumpkin",
    "yellowpumpkin",
    "blackwatermelon",
    "greenwatermelon",
    "lavenderwatermelon",
    "lightbluewatermelon",
    "palegreenwatermelon",
    "orangewatermelon",
    "redvioletwatermelon",
    "whitewatermelon",
    "yellowwatermelon",
    "wintermelon",
];

for name in gourds {
    GenericBlock.createHorizontal(gourd, name).register();
}
