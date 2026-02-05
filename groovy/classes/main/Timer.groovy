import java.text.SimpleDateFormat
import classes.main.Logger

class Timer {

    private long startTime
    private long lastTime

    private Calendar calendar

    Timer() {
        startTime = System.currentTimeMillis()
        lastTime = startTime
        calendar = Calendar.getInstance()
        Logger.info("It is now ${now()}. Starting to load the modpack...")
    }

    private String format(String format) {
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        return sdf.format(calendar.getTime());
    }

    public String now() {
        calendar.setTimeInMillis(System.currentTimeMillis())
        return format("HH:mm:ss");
    }

    public String timePassed() {
        long currentTime = System.currentTimeMillis()
        calendar.setTimeInMillis(currentTime - lastTime)
        lastTime = currentTime
        return format("mm:ss:SS")
    }

    public String timeTotal() {
        long currentTime = System.currentTimeMillis()
        calendar.setTimeInMillis(currentTime - startTime)
        return format("HH:mm:ss")
    }
}
