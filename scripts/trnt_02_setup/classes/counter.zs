#loader setup

zenClass Counter {
    val id as string;
    var count as int = 0;

    zenConstructor(_id as string) {
        id = _id;
        LOG.debug(`🧮 Counter ${id} created.`);
    }

    function increment() as void {
        count += 1;
    }

    function add(amount as int) as void {
        count += amount;
    }

    function reset() as void {
        count = 0;
    }

    function getCount() as int {
        return count;
    }

    function eq(amount as int) as bool {
        return count == amount;
    }

    function gt(amount as int) as bool {
        return count > amount;
    }

    function lt(amount as int) as bool {
        return count < amount;
    }

    function ge(amount as int) as bool {
        return count >= amount;
    }

    function le(amount as int) as bool {
        return count <= amount;
    }
}

global BLOCK_COUNTER as Counter = Counter("block");
global ITEM_COUNTER as Counter = Counter("item");
global FLUID_COUNTER as Counter = Counter("fluid");
