#loader setup
#priority 1

zenClass McColor {
    zenConstructor() {
        LOG.info(`🧑‍🎨 Loading Minecraft colors...`);
    }

    val ore as string[] = [
        "Black",
        "Red",
        "Green",
        "Brown",
        "Blue",
        "Purple",
        "Cyan",
        "LightGray",
        "Gray",
        "Pink",
        "Lime",
        "Yellow",
        "LightBlue",
        "Magenta",
        "Orange",
        "White",
    ];

    val oreLower as string[] = StringArray.lower(ore);

    val colors as string[] = [
        "white",
        "orange",
        "magenta",
        "light_blue",
        "yellow",
        "lime",
        "pink",
        "gray",
        "light_gray",
        "cyan",
        "purple",
        "blue",
        "brown",
        "green",
        "red",
        "black",
    ];
}

global MC_COLOR as McColor = McColor();
