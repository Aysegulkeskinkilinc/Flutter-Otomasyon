package steps;

import core.Action;
import io.cucumber.java.en.And;
import io.cucumber.java.en.When;


import java.time.Duration;

public class Steps {
    Action action = new Action();

    @And("{string} objesine tikla")
    public void clickTheElement(String key) {
        action.click(key, "Element tiklandi.");
    }

    @And("{string} alanina {string} yaz")
    public void sendKey(String key, String value) {
        action.enter(key, value, "Alan dolduruldu.");
    }

    @And("{string} alanina {string} datasini yaz")
    public void sendKeyData(String key, String value) {
        action.enterData(key, value, "Alan dolduruldu.");
    }

    @And("{string} saniye bekle")
    public void waitSecond(String arg0) {
        action.waitSecond(Integer.parseInt(arg0), "Yeni aksiyon beklendi.");
    }

    @And("{string} objesi gorunene kadar bekle")
    public void waitUntilVisible(String key) {
        action.waitVisible(key, Duration.ofSeconds(25));
    }

    @And("{string} objesi kaybolana kadar bekle")
    public void waitUntilInVisible(String key) {
        action.waitInVisible(key, Duration.ofSeconds(4));
    }

    @And("{string} objesi gorunene kadar kaydir")
    public void scrollToElement(String key) {
        action.scrollUntilElementVisible(key);
    }

    @And("{string} elementine tiklanir")
    public void clickCoordinate(String key) {
        action.clickByElementCoordinate(key, "Elemente tiklandi");
    }

    @And("Sayfa uzerinde {string} objesinin goruntulendigi gorulur")
    public void containsObject(String key) {
        action.appearObjectOnTheScreen(key, 10);
    }

    @And("Sayfa uzerinde {string} data objesinin goruntulendigi gorulur")
    public void containsObjectData(String key) { action.appearObjectOnTheScreenData(key, 10); }

    @And("Sayfa uzerinde {string} text degerinin goruntulendigi gorulur")
    public void containsText(String key) {
        action.appearTextOnTheScreen(key, 10);
    }

    @And("Sayfa uzerinde {string} text data degerinin goruntulendigi gorulur")
    public void containsTextData(String key) {
        action.appearTextOnTheScreenData(key, 10);
    }

    @And("{string} objesi gorunurse {string} elementine tiklanir")
    public void containsClickElement(String key, String key1) {
        action.containsClickElement(key, key1, "Element tiklandi", Duration.ofSeconds(20));
    }

    @And("{string} objesine {string} kere tiklanir")
    public void clickManyTimes(String key, String count) {
        action.clickByTimes(key, Integer.parseInt(count));
    }

    @And("{string} yazan objeye tikla")
    public void clickText(String key) {
        action.clickWithText(key, "Element tiklandi");
    }

    @And("{int} kere ortaya scroll yap")
    public void scrollToHalf(int num){
        action.halfScrollCount(num);
    }

    @And("{string} yazan objeye tikla ve {string} yaz")
    public void sendKeyByText(String key, String mesaj) {
        action.sendkeyByText(key,mesaj);
    }

    @And("Back tusuna tikla")
    public void clickBackButton(){action.clickBack();}


    @And("{string} yazan objeye teker teker {string} yaz")
    public void sendKeySlowly(String key, String mesaj){action.slowlySendKeys(key,mesaj);}

    @And("Yukarı kaydır")
    public void scrollUp(){action.scrollUp();}

    @And("Asagi Kaydir")
    public void scrollDown(){action.scrollDown();}

    @And("{string} alanini temizle")
    public void sendKeyClear(String key) { action.clearField(key,"Alan temizlendi"); }

    @And("x {int} y {int} koordinatlarindan x {int} y {int} swipe yap")
    public void swipe(int fromX, int fromY, int toX, int toY){action.swipe(fromX, fromY, toX, toY);}

    @And("Datasi {string} title'a sahip olan objeye tikla")
    public void clickByTitle(String title){action.clickByTitleData(title);}

    @When("Klavyeyi kapat")
    public void klavyeyiKapat() {
        action.hideKeyboard();
    }

    @When("Sepette {int} urun oldugu kontrol edilir")
    public void sepetteUrunOlduguKontrolEdilir(int number) {action.checkProductsNumberInCart(number);}

    @When("{string} yazili kategori secilir")
    public void yaziliKategoriSecilir(String name) {action.selectCategory(name);}


}
