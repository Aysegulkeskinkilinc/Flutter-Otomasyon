package core;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.android.AndroidDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import steps.CommonSteps;

import java.net.MalformedURLException;
import java.net.URL;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Objects;


public class Driver {

    boolean remote = true;

    public void initializeTest() throws MalformedURLException {

        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setCapability("autoGrantPermissions", "true");

        try {
            if (!Objects.equals(Utils.getParameter("remote"), "true")){
                capabilities.setCapability("deviceName", "emulator-5554");
                capabilities.setCapability("platformName","Android" );
                capabilities.setCapability("platformVersion", "13.0");
                capabilities.setCapability("automationName", "UiAutomator2");
              // capabilities.setCapability("app", System.getProperty("user.dir") + "app/app-release-5.apk");
                capabilities.setCapability("app", "/Users/aysegulozturk/Desktop/OTOMASYON/krc-fla-android/app/app.apk");


                Action.androidDriver = new AndroidDriver(new URL("http://localhost:4723/wd/hub"), capabilities);
            }
            else{

            }
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }


    private static String getFormattedDateTime() {
        String dateTimePattern = "dd.MM.yyyy HH:mm";
        LocalDateTime dateTime = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(dateTimePattern);
        return dateTime.format(formatter);
    }

    public void tearDownTest() {
        if (null != Action.androidDriver) {
            Action.androidDriver.quit();
        }
    }
}