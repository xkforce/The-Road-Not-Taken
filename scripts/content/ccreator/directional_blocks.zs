#loader preinit
#modloaded contentcreator
#priority 110

import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;

val gourd = Mat.gourd();

val gourds as string[] = [
    "amberpumpkin",
    "blackpumpkin",
    "canarymelon",
    "cantaloupemelon",
    "casabamelon",
    "creampumpkin",
    "darkgreenpumpkin",
    "greenpumpkin",
    "hamimelon",
    "honeydewmelon",
    "hornedmelon",
    "lavenderpumpkin",
    "lightgraypumpkin",
    "naramelon",
    "orangewatermelon",
    "palegreenpumpkin",
    "peachpumpkin",
    "pepinomelon",
    "pinkpumpkin",
    "redpumpkin",
    "tanpumpkin",
    "vermilionpumpkin",
    "whitepumpkin",
    "wineredpumpkin",
    "wintermelon",
    "yellowpumpkin",
    "yellowwatermelon",
];

for name in gourds {
    GenericBlock.createHorizontal(gourd, name).register();
}
