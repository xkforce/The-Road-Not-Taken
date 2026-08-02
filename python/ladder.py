import os
import json
from pathlib import Path
import shutil
from string import Template

itemModel = Template("""{
  "parent": "item/generated",
  "textures": {
    "layer0": "trnt:blocks/${rail}rail${rung}rungladder"
  }
}
""")

blockModel = Template("""{
  "parent": "trnt:block/base/ladder",
  "textures": {
    "particle": "blocks/ladder",
    "siderail": "${railBlock}",
    "rung": "${rungBlock}"
  }
}
""")

blockState = Template("""{
    "variants": {
        "facing=north": { "model": "trnt:${rail}rail${rung}rungladder" },
        "facing=east":  { "model": "trnt:${rail}rail${rung}rungladder", "y": 90 },
        "facing=south": { "model": "trnt:${rail}rail${rung}rungladder", "y": 180 },
        "facing=west":  { "model": "trnt:${rail}rail${rung}rungladder", "y": 270 }
    }
}
""")

DIRECTORY = Path(__file__).parent.parent
ADDITIONS = DIRECTORY / "addons" / "Additions" / "ladders" / "assets" / "additions"
GROOVY = DIRECTORY / "groovy" / "assets" / "trnt"

def main() -> None:
    copyTextures()

    for file in os.listdir(ADDITIONS / "models" / "block"):
        if not file.endswith(".json"):
            continue
        if file.endswith("ladder.json"):
            print(f"Skipping {file}")
            continue
        with open(ADDITIONS / "models" / "block" / file, "r") as f:
            data = json.load(f)

        railBlock = data["textures"]["siderail"]
        rungBlock = data["textures"]["rung"]


        rail = file.split("-")[1].split("rail")[0]
        rung = file.split("rail")[1].split("rung")[0]

        ladderModel = blockModel.substitute(railBlock=railBlock, rungBlock=rungBlock)
        ladderState = blockState.substitute(rail=rail, rung=rung)
        ladderItem = itemModel.substitute(rail=rail, rung=rung)

        file_name = f"{rail}rail{rung}rungladder.json"

        with open(GROOVY / "models" / "block" / file_name, "w") as f:
            f.write(ladderModel)

        with open(GROOVY / "models" / "item" / file_name, "w") as f:
            f.write(ladderItem)

        with open(GROOVY / "blockstates" / file_name, "w") as f:
            f.write(ladderState)

def copyTextures() -> None:
    for file in os.listdir(ADDITIONS / "textures" / "blocks"):
        if not file.endswith(".png"):
            continue
        file_name = file.split(".")[0].removeprefix("ladders-").removesuffix("ladder") + "ladder.png"
        shutil.copy(ADDITIONS / "textures" / "blocks" / file, GROOVY / "textures" / "blocks" / file_name)

if __name__ == "__main__":
    main()
