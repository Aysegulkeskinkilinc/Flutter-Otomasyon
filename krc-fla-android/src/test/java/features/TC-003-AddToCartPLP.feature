@runAll @reg1
Feature: Add To Cart PLP Feature

  @addToCartPLP
  Scenario: Add To Cart PLP
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla

    * "KATEGORILER" objesine tikla
    * "EV-TEKSTILI" objesine tikla
    * "YATAK-ODASI" objesine tikla
    * "TUM-YATAK-ODASI" objesine tikla
    * "1" saniye bekle
    * "SEPETE-EKLE" objesine tikla
    * "1" saniye bekle
    * "SEPETE-GIT" objesine tikla
    * "1" saniye bekle
    * Sepette 1 urun oldugu kontrol edilir
    * "1" saniye bekle
    * "SEPET-COP-KUTUSU" objesine tikla
    * "1" saniye bekle
    * "SIL-BUTTON" objesine tikla
    * "2" saniye bekle
    * Sayfa uzerinde "Sepetiniz Şimdilik Boş" text degerinin goruntulendigi gorulur
    * "2" saniye bekle

    #PASS (A)


