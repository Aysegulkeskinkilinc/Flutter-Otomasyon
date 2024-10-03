package core;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.appium.java_client.PerformsTouchActions;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidTouchAction;
import io.appium.java_client.android.nativekey.AndroidKey;
import io.appium.java_client.android.nativekey.KeyEvent;
import io.appium.java_client.touch.WaitOptions;
import io.appium.java_client.touch.offset.PointOption;
import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.PointerInput;
import org.openqa.selenium.interactions.Sequence;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.time.Duration;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;


import static io.appium.java_client.touch.offset.PointOption.point;
import static java.time.Duration.ofMillis;
import static org.openqa.selenium.interactions.PointerInput.Kind.TOUCH;
import static org.openqa.selenium.interactions.PointerInput.MouseButton.LEFT;
import static org.openqa.selenium.interactions.PointerInput.Origin.viewport;

public class Action {
    public static final Logger LOGGER = Logger.getLogger(String.valueOf(Action.class));
    private static HashMap<String, By> Keys = new HashMap<>();
    private int defaultTimeoutInSecond = 30;
    public static int minTime = 10;

    public static AndroidDriver androidDriver;

    public Driver driver = new Driver();
    public AndroidTouchAction actions;

    public static int totalStaticWait = 0;

    public void waitUntilReadyForDocumentObjectModel() {

        new WebDriverWait(androidDriver, Duration.ofSeconds(defaultTimeoutInSecond)).until((ExpectedCondition<Boolean>) wd -> ((JavascriptExecutor) wd).executeScript("return document.readyState").equals("complete"));
    }

    public void startDriver() throws MalformedURLException {
        initKeys();
        driver.initializeTest();
    }

    private static void initKeys() {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            File jsonFile = new File(System.getProperty("user.dir") + "/data/key.json");
            JsonNode rootNode = objectMapper.readTree(jsonFile);
            traverseJsonNode(rootNode);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void traverseJsonNode(JsonNode jsonNode) {
        Iterator<String> fieldNames = jsonNode.fieldNames();
        while (fieldNames.hasNext()) {
            String fieldName = fieldNames.next();
            JsonNode fieldValue = jsonNode.get(fieldName);

            if (fieldValue.isObject()) {
                traverseJsonNode(fieldValue);
            } else {
                String selector = fieldValue.asText();
                Keys.put(fieldName, By.xpath(selector));
            }
        }
    }

    public void endDriver() {
        driver.tearDownTest();
    }

    public void staticWait(int waitInMSeconds) {
        try {
            Thread.sleep(waitInMSeconds);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void scrollDown() {

        Dimension dimension = androidDriver.manage().window().getSize();
        int scrollStart = (int) (dimension.getHeight() * 0.8);
        int scrollEnd = (int) (dimension.getHeight() * 0.1);

        actions = new AndroidTouchAction(androidDriver)
                .press(PointOption.point(0, scrollStart))
                .waitAction(WaitOptions.waitOptions(Duration.ofSeconds(3)))
                .moveTo(PointOption.point(0, scrollEnd))
                .release()
                .perform();
    }

    public void scrollUp() {

        Dimension dimension = androidDriver.manage().window().getSize();
        int scrollStart = (int) (dimension.getHeight() * 0.5);
        int scrollEnd = dimension.getHeight();

        actions = new AndroidTouchAction(androidDriver)
                .press(PointOption.point(0, scrollStart))
                .waitAction(WaitOptions.waitOptions(Duration.ofSeconds(3)))
                .moveTo(PointOption.point(0, scrollEnd))
                .release()
                .perform();
    }

    public void scroll() {
        Dimension dimension = androidDriver.manage().window().getSize();
        Point start = new Point((int) (dimension.width * 0.5), (int) (dimension.height * 0.9));
        useScroll(dimension, start);
    }

    public void halfScrollStartBottom() {
        Dimension dimension = androidDriver.manage().window().getSize();
        Point start = new Point((int) (dimension.width * 0.5), (int) (dimension.height * 0.9));
        Point endPoint = new Point((int) (dimension.width * 0.5), (int) (dimension.height * 0.6));
        actions = new AndroidTouchAction(androidDriver)
                .press(PointOption.point(start))
                .waitAction(WaitOptions.waitOptions(Duration.ofMillis(500)))
                .moveTo(PointOption.point(endPoint))
                .release()
                .perform();
    }

    public void halfScroll() {
        Dimension dimension = androidDriver.manage().window().getSize();
        Point start = new Point((int) (dimension.width * 0.5), (int) (dimension.height * 0.5));
        useScroll(dimension, start);
    }

    public void halfScrollCount(int number) {
        for (int i = 0; i < number; i++) {
            halfScroll();
        }
    }

    private void useScroll(Dimension dimension, Point start) {
        Point end = new Point((int) (dimension.width * 0.5), (int) (dimension.height * 0.1));
        PointerInput FINGER = new PointerInput(TOUCH, "finger");
        Sequence swipe = new Sequence(FINGER, 1)
                .addAction(FINGER.createPointerMove(ofMillis(0), viewport(), start.getX(), start.getY()))
                .addAction(FINGER.createPointerDown(LEFT.asArg()))
                .addAction(FINGER.createPointerMove(ofMillis(1000), viewport(), end.getX(), end.getY()))
                .addAction(FINGER.createPointerUp(LEFT.asArg()));
        androidDriver.perform(Arrays.asList(swipe));
    }

    private void useScrollEndHalf(Dimension dimension, Point start) {
        Point end = new Point((int) (dimension.width * 0.5), (int) (dimension.height * 0.5));
        PointerInput FINGER = new PointerInput(TOUCH, "finger");
        Sequence swipe = new Sequence(FINGER, 1)
                .addAction(FINGER.createPointerMove(ofMillis(0), viewport(), start.getX(), start.getY()))
                .addAction(FINGER.createPointerDown(LEFT.asArg()))
                .addAction(FINGER.createPointerMove(ofMillis(1000), viewport(), end.getX(), end.getY()))
                .addAction(FINGER.createPointerUp(LEFT.asArg()));
        androidDriver.perform(Arrays.asList(swipe));

    }

    public void swipeWithElement(By element) {
        int leftX = androidDriver.findElement(element).getLocation().getX();
        int leftY = androidDriver.findElement(element).getLocation().getY();
        Dimension dimension = androidDriver.manage().window().getSize();
        int scrollEnd = (dimension.getWidth()) / (-2);

        actions = new AndroidTouchAction(androidDriver)
                .press(PointOption.point(leftX, leftY))
                .waitAction(WaitOptions.waitOptions(Duration.ofSeconds(3)))
                .moveTo(PointOption.point(scrollEnd, leftY))
                .release()
                .perform();
    }

    public void enter(String elementKey, String value, String log) {
        By element = Keys.get(elementKey);
        try {
            if (isElementPresent(element, minTime)) {
                androidDriver.findElement(element).click();
                androidDriver.findElement(element).clear();
                androidDriver.findElement(element).sendKeys(value);
            } else {
                Assert.fail();
            }
        } catch (Exception e) {
            LOGGER.info(e.getMessage());
            Assert.fail();

        }
    }

    public void enterData(String elementKey, String value, String log) {
        By element = Keys.get(elementKey);
        String valueData = Keys.get(value).toString();
        String valueLast = valueData
                .replaceAll("By.xpath: ", "");
        try {
            if (isElementPresent(element, minTime)) {
                androidDriver.findElement(element).clear();
                androidDriver.findElement(element).click();
                androidDriver.findElement(element).sendKeys(valueLast);

            } else {
                Assert.fail();
            }
        } catch (Exception e) {
            Assert.fail();
            LOGGER.info(log);
        }
    }

    public void slowlySendKeys(String key, String value) {
        try {
            if (isElementPresent(By.xpath("(//*[contains(@text, '" + key + "')])[1]"), minTime)) {
            for (char c : value.toCharArray()) {
                AndroidKey androidKey = getAndroidKey(c);
                androidDriver.findElement(By.xpath("(//*[contains(@text, '" + key + "')])[1]")).click();
                androidDriver.pressKey(new KeyEvent(AndroidKey.valueOf(String.valueOf(androidKey))));
                Thread.sleep(30);
            } }
        } catch (Exception e) {
            Assert.fail("Exception occurred: " + e.getMessage());
            LOGGER.info(value + " yazdırıldı");
        }
    }

    private AndroidKey getAndroidKey(char c) {
        switch (c) {
            case '0':
                return AndroidKey.DIGIT_0;
            case '1':
                return AndroidKey.DIGIT_1;
            case '2':
                return AndroidKey.DIGIT_2;
            case '3':
                return AndroidKey.DIGIT_3;
            case '4':
                return AndroidKey.DIGIT_4;
            case '5':
                return AndroidKey.DIGIT_5;
            case '6':
                return AndroidKey.DIGIT_6;
            case '7':
                return AndroidKey.DIGIT_7;
            case '8':
                return AndroidKey.DIGIT_8;
            case '9':
                return AndroidKey.DIGIT_9;
            default:
                throw new IllegalArgumentException("Geçersiz karakter: " + c);
        }
    }

    public void sendkeyByText(String key, String message) {
        try {
            if (isElementPresent(By.xpath("(//*[contains(@text, '" + key + "')])[1]"), minTime)) {
                androidDriver.findElement(By.xpath("(//*[contains(@text, '" + key + "')])[1]")).click();
                androidDriver.findElement(By.xpath("(//*[contains(@text, '" + key + "')])[1]")).sendKeys(message);
                LOGGER.info(message + "yazıldı");
            } else {
                Assert.fail();
            }
        } catch (Exception e) {
            Assert.fail();
        }
    }


    public void waitSecond(int second, String log) {
        try {
            Thread.sleep(second * (long) 1000);
            totalStaticWait += second;
            LOGGER.info(log);
        } catch (Exception e) {
            Assert.fail();
            LOGGER.info(log);
        }
    }

    public void clearField(By element, String log) {
        try {
            if (isElementPresent(element, minTime)) {
                androidDriver.findElement(element).clear();
                LOGGER.info(log);
            } else {
                Assert.fail();
            }
        } catch (Exception e) {
            Assert.fail();
        }
    }

    public void clickBack() {
        androidDriver.pressKey(new KeyEvent(AndroidKey.BACK));
    }

    public void click(String elementKey, String log) {
        By element = Keys.get(elementKey);
        try {
            if (isElementPresent(element, minTime)) {
                androidDriver.findElement(element).click();
                LOGGER.info(log);
            } else {
                Assert.fail();
            }
        } catch (Exception e) {
            System.out.println("DEneme" + e);
            Assert.fail();

        }
    }

    public void clearField(String key, String log) {
        By element = Keys.get(key);
        try {
            if (isElementPresent(element, minTime)) {
                androidDriver.findElement(element).clear();
                LOGGER.info(log);
            } else {
                Assert.fail();
            }
        } catch (Exception e) {
            Assert.fail();
        }
    }

    public void clickByElementCoordinate(String elementKey, String log) {
        By by = Keys.get(elementKey);
        TouchAction action = new TouchAction(androidDriver);

        try {
            if (isElementPresent(by, minTime)) {
                WebElement element = androidDriver.findElement(by);
                Dimension dimension = element.getSize();
                Point point = element.getLocation();

                int width = dimension.getWidth();
                int height = dimension.getHeight();
                int x = point.getX();
                int y = point.getY();

                int targetElementX = x + width / 2;
                double targetElementY = y + height / 1.3;

                action.press(point(targetElementX, (int) targetElementY))
                        .release()
                        .perform();

                LOGGER.info(log);
            } else {
                Assert.fail();
                LOGGER.info(log);
            }
        } catch (Throwable e) {
            Assert.fail();
            LOGGER.info("Hata oluştu: " + e.getMessage());
        }
    }

    public void clickByCoordinates(String log) {
        int X = 726;
        int Y = 2243;
        TouchAction action = new TouchAction(androidDriver);
        action.press(point(X, Y))
                .release()
                .perform();
        LOGGER.info(log);
    }

    public boolean isElementPresent(By by, int waitInSeconds) {
        try {
            LOGGER.info("Checking is element present");
            androidDriver.manage().timeouts()
                    .implicitlyWait(waitInSeconds, TimeUnit.SECONDS);
            androidDriver.findElement(by);
            androidDriver.manage().timeouts().implicitlyWait(waitInSeconds, TimeUnit.SECONDS);
            return true;
        } catch (NoSuchElementException var4) {
            return false;
        }
    }

    public boolean isElementPresentWithKey(String key, int waitInSeconds) {
        By element = Keys.get(key);
        return isElementPresent(element, waitInSeconds);
    }

    public void waitVisible(String key, Duration waitInSeconds) {
        By element = Keys.get(key);

        try {
            LOGGER.info("Checking is element present");
            WebDriverWait wait = new WebDriverWait(androidDriver, waitInSeconds);
            wait.until(ExpectedConditions.visibilityOfElementLocated(element));
        } catch (NoSuchElementException var4) {
            String errorMessage = String.format("'%s' elementi sayfa üzerinde görünür olması beklenirken sorun oluştu! Hata kodu: %s", element, var4.getMessage());
            LOGGER.info(errorMessage);

        }
    }

    public void waitInVisible(String key, Duration second) {
        By element = Keys.get(key);

        try {
            WebDriverWait wait = new WebDriverWait(androidDriver, second);
            wait.until(ExpectedConditions.invisibilityOfElementLocated(element));
        } catch (NoSuchElementException var4) {
            String errorMessage = String.format("'%s' elementi sayfa üzerinde kaybolması beklenirken sorun oluştu! ", element, var4.getMessage());
            LOGGER.info(errorMessage);
        } catch (Exception ex) {
            String errorMessage = String.format("'%s' elementi sayfa üzerinde kaybolması beklenirken sorun oluştu! Hata kodu: %s", element, ex.getMessage());
            LOGGER.info(errorMessage);
        }
    }

    public void swipe(int fromX, int fromY, int toX, int toY) {
        TouchAction action = new TouchAction((PerformsTouchActions) androidDriver);
        action.press(point(fromX, fromY))
                .waitAction(new WaitOptions().withDuration(
                        ofMillis(1500))) //you can change wait durations as per your requirement
                .moveTo(point(toX, toY)).release().perform();
    }

    public boolean isElementNotPresentBoolean(By by, int waitInSeconds) {
        try {
            LOGGER.info("Checking element is not present");
            androidDriver.manage().timeouts()
                    .implicitlyWait(waitInSeconds, TimeUnit.SECONDS);
            androidDriver.findElement(by);
            androidDriver.manage().timeouts().implicitlyWait(35L, TimeUnit.SECONDS);
            return false;
        } catch (Exception e) {
            return true;
        }
    }

    public void checkTextsNotEqual(String textFirst, String textSecond, String log) {
        LOGGER.info(log);
        Assert.assertNotEquals(textFirst, textSecond);
    }

    public void checkTextsEqual(String textFirst, String textSecond, String log) {
        LOGGER.info(log);
        Assert.assertEquals(textFirst, textSecond);
    }

    public String getText(By xpath, String log) {
        LOGGER.info(log);
        return androidDriver.findElement(xpath).getText();
    }

    public void checkItIsTrue(boolean flag, String log) {
        if (flag) {
            LOGGER.info(log);
        } else {
            Assert.fail();
        }
    }

    public boolean fluentWaitForVisibility2(By by, int waitInSeconds) {
        FluentWait<AndroidDriver> wait = new FluentWait<AndroidDriver>(androidDriver);
        wait.withTimeout(Duration.ofSeconds(waitInSeconds))
                .pollingEvery(Duration.ofMillis(3))
                .ignoring(NoSuchElementException.class)
                .ignoring(TimeoutException.class)
                .until(ExpectedConditions.visibilityOfElementLocated(by));
        try {
            wait.withTimeout(Duration.ofSeconds(waitInSeconds))
                    .pollingEvery(Duration.ofMillis(3))
                    .ignoring(NoSuchElementException.class)
                    .ignoring(TimeoutException.class)
                    .until(ExpectedConditions.visibilityOfElementLocated(by));
            return true;
        } catch (Exception var4) {
            return false;
        }
    }

    public boolean isElementPresentBoolean(String key) {
        By element = Keys.get(key);

        try {
            LOGGER.info("Checking is element present");
            androidDriver.manage().timeouts()
                    .implicitlyWait(minTime, TimeUnit.SECONDS);
            androidDriver.findElement(element);
            androidDriver.manage().timeouts().implicitlyWait(35L, TimeUnit.SECONDS);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public void scrollUntilElementVisible(String elementKey) {
        int i = 0;
        boolean flag = isElementPresentBoolean(elementKey);
        while (!flag) {
            halfScrollStartBottom();
            flag = isElementPresentBoolean(elementKey);
            i++;
            if (i == 12) {
                LOGGER.info("Element bulunamadı.");
                Assert.fail();
            }
        }
        LOGGER.info("Element bulundu.");
    }

    public void infoLog(String msg) {
        LOGGER.info(msg);
    }

    public void checkElementTextIsEqual(By element, String text, String info) {
        String elementText = getText(element, "Elementin texti alındı.");
        checkTextsEqual(text, elementText, info);
    }

    public void assertElementTextEquals(String elementKey, String expectedText, String log) {
        By element = Keys.get(elementKey);
        LOGGER.info(log);
        String actualText = androidDriver.findElement(element).getText();
        //Assert.assertEquals(expectedText, actualText);
        assert actualText.contains(expectedText) : "Metin içermiyor: " + expectedText;
    }

    public void appearTextOnTheScreen(String key, int waitInSeconds) {

        try {
            LOGGER.info("Checking is element present");
            androidDriver.manage().timeouts()
                    .implicitlyWait(waitInSeconds, TimeUnit.SECONDS);
            androidDriver.findElement(By.xpath("//*[contains(@content-desc, '" + key + "')]"));
            androidDriver.manage().timeouts().implicitlyWait(35L, TimeUnit.SECONDS);
        } catch (NoSuchElementException var4) {
        }
    }

    public void appearTextOnTheScreenData(String elementKey, int waitInSeconds) {

        By element = Keys.get(elementKey);
        String keyXpath = element.toString();
        String textLast = keyXpath
                .replaceAll("By.xpath: ", "");
        try {
            LOGGER.info("Checking is element present");
            androidDriver.manage().timeouts()
                    .implicitlyWait(waitInSeconds, TimeUnit.SECONDS);
            androidDriver.findElement(By.xpath("//*[contains(@text, '" + textLast + "')]"));
            androidDriver.manage().timeouts().implicitlyWait(35L, TimeUnit.SECONDS);
        } catch (NoSuchElementException var4) {
        }
    }

    public void appearObjectOnTheScreen(String key, int waitInSeconds) {

        try {
            LOGGER.info("Checking is element present");
            androidDriver.manage().timeouts()
                    .implicitlyWait(waitInSeconds, TimeUnit.SECONDS);
            androidDriver.findElement(By.xpath(key));
            androidDriver.manage().timeouts().implicitlyWait(35L, TimeUnit.SECONDS);
        } catch (NoSuchElementException var4) {
        }
    }

    public void appearObjectOnTheScreenData(String elementKey, int waitInSeconds) {

        By element = Keys.get(elementKey);
        try {
            LOGGER.info("Checking is element present");
            androidDriver.manage().timeouts()
                    .implicitlyWait(waitInSeconds, TimeUnit.SECONDS);
            androidDriver.findElement(By.xpath(String.valueOf(element).replace("By.xpath: ","")));
            androidDriver.manage().timeouts().implicitlyWait(35L, TimeUnit.SECONDS);
        } catch (NoSuchElementException var4) {
        }
    }

    public void containsClickElement(String waitKey, String clickKey, String log, Duration waitInSeconds) {
        By element = Keys.get(waitKey);
        WebDriverWait wait = new WebDriverWait(androidDriver, waitInSeconds);
        WebElement object = wait.until(ExpectedConditions.visibilityOfElementLocated(element));
        if (object != null) {
            click(clickKey, "Element tiklandi");
            LOGGER.info(log);
        } else {
            LOGGER.info("Element bulunamadi");

        }
    }

    public void clickByTimes(String elementKey, int count) {
        By element = Keys.get(elementKey);
        for (int i = 0; i < count; i++) {
            androidDriver.findElement(element).click();
        }
        LOGGER.info(String.format("'%s' kere tıklama yapıldı.", count));
    }

    public void clickWithText(String key, String log) {

        try {
            if (isElementPresent(By.xpath("(//*[contains(@text, '" + key + "')])[1]"), minTime)) {
                androidDriver.findElement(By.xpath("(//*[contains(@text, '" + key + "')])[1]")).click();
                LOGGER.info(log);
            } else {
                Assert.fail();
            }
        } catch (Exception e) {
            Assert.fail();
        }
    }

    public void clickByTitleData(String text) {
        String valueData = Keys.get(text).toString();
        String valueLast = valueData
                .replaceAll("By.xpath: ", "");
        String xpath = "//android.widget.TextView[@text='"+valueLast+"']";
        try {
            if (isElementPresent(By.xpath(xpath), minTime)) {
                androidDriver.findElement(By.xpath(xpath)).click();
                LOGGER.info(text + " Title'a sahip");
            } else {
                Assert.fail();
            }
        } catch (Exception e) {
            Assert.fail();
        }
    }

    public void hideKeyboard() {
            androidDriver.hideKeyboard();
    }

    public void checkProductsNumberInCart(int number) {
        By def = By.xpath("//android.view.View[contains(@content-desc,'" + number + "')]");
        if (fluentWaitForVisibility2(def, 30)) {
            if (isElementPresent(def, 1)) {
                LOGGER.info("Cart contains the expected number of products: " + number);
            } else {
                LOGGER.warning("Element is not present despite waiting for visibility: " + def);
                Assert.fail("Element is not present after waiting for visibility.");
            }
        } else {
            LOGGER.warning("Element is not visible: " + def);
            Assert.fail("Element did not become visible.");
        }
    }

        public void selectCategory(String name) {
            if (!name.equals("-")) {
                By def = By.xpath("//*[@resource-id = 'net.btpro.client.karacaeu:id/tv_category_name' and @text = '" + name + "']");
                staticWait(3000);
                if (isElementPresent(def, minTime)) {
                    androidDriver.findElement(def).click();
                    LOGGER.info("Kategori seçildi: " + name);
                } else {
                    LOGGER.info("Kategori bulunamadı: " + name);
                    Assert.fail("Kategori bulunamadı.");
                }
            } else {
                infoLog("Kategori girilmediği için tıklanmadı.");
            }
        }

    }
