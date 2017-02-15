# Restart app on Crash 👎

Never restart the app after an uncaught exception. Let the app crash instead. If the exception appears on startup you create a bootloop for your app which cannot be stopped unless you press and hold the power button of your device for 10 seconds. Your crash reporter will also explode with crash reports.
Also, System.exit(0) and Process.killProcess are extremely dirty, it's like a force close with a task manager. If you do this, something was seriously wrong. This will also force stop other threads, including those which are doing database management causing a corrupt database.

Add a crash logger and fix the issue for a next version.

```java
public class ApplicationContextProvider extends Application {

    static final String TAG = "AppContextProvider";

    /**
     * Keeps a reference of the application context.
     */
    private static Context sContext;

    @Override
    public void onCreate() {
        super.onCreate();

        sContext = getApplicationContext();

        // install default uncaught exception handler. If an exception is not caught, the app should always restart. By default, the activity will
        // be restarted, bypassing the necessary bootstrap phase.
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
            @Override
            public void uncaughtException(Thread thread, Throwable throwable) {

                // Re-launch from root activity with cleared stack.
                Log.e(TAG, "Uncaught exception occurred, restarting app");
                Intent intent = new Intent(sContext, BootScreenActivity.class );
                intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK | Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity( intent );

                //for restarting the Activity
                android.os.Process.killProcess(android.os.Process.myPid());
                System.exit(0);
            }
        });
    }
  }
```
