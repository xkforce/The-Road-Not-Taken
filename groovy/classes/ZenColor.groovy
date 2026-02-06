import classes.Utils

class ZenColor {
    def static colors = [:]

    def static getColor(String id) {
        return colors[id]
    }

    def id = ""
    def hex = ""
    def mixed = [:]
    def vanilla = false

    ZenColor(String id, String hex) {
        this.id = id
        this.hex = hex.substring(1)
        colors[id] = this
    }

    def rgb() {
        return Integer.parseInt(hex, 16)
    }

    def langKey() {
        return "trnt.palette.${id}.name"
    }

    def getName() {
        return Utils.translate(langKey())
    }

    def addMix(List<ZenColor> mixed) {
        if (mixed.size() != 2) {
            LOG.error("Color ${id} can only be mixed with 2 colors!")
            return
        }
        this.mixed[mixed.size()] = [mixed[0].id, mixed[1].id]
    }

    def setVanilla() {
        this.vanilla = true
    }

    def vanilla() {
        return colors.values().findAll { it.vanilla }.collect { it.id }
    }
}
