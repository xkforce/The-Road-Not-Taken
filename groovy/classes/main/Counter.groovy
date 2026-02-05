import classes.main.Logger

class Counter {
    private String id
    private int count

    Counter(String id) {
        this.id = id
        Logger.debug("🧮 Counter ${id} created.")
    }

    public void increment() {
        count++
    }

    public void add(int amount) {
        count += amount
    }

    public void reset() {
        count = 0
    }

    public int getCount() {
        return count
    }

    public boolean eq(int amount) {
        return count == amount
    }

    public boolean gt(int amount) {
        return count > amount
    }

    public boolean lt(int amount) {
        return count < amount
    }

    public boolean ge(int amount) {
        return count >= amount
    }

    public boolean le(int amount) {
        return count <= amount
    }
}
