#loader contentcreator

import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;

val gourd = Mat.gourd();

val gourds as string[] = [
    "acornsquash",
    "australianbluepumpkin",
    "buttercupsquash",
    "butternutsquash",
    "canarymelon",
    "cantaloupemelon",
    "casabamelon",
    "delicatasquash",
    "hamimelon",
    "honeydewmelon",
    "hornedmelon",
    "hubbardsquash",
    "jarrahdalepumpkin",
    "lakotasquash",
    "naramelon",
    "orangewatermelon",
    "pattypansquash",
    "pepinomelon",
    "rougedetampespumpkin",
    "spaghettisquash",
    "sweetdumplingsquash",
    "whitepumpkin",
    "wintermelon",
    "yellowpumpkin",
    "yellowwatermelon",
];

for name in gourds {
    GenericBlock.createHorizontal(gourd, name).register();
    BLOCK_COUNTER.increment();
}
