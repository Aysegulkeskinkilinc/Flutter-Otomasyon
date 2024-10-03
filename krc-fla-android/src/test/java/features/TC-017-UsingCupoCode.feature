@runAll @reg1
Feature: Using Cupon Code Feature

  @usingCupoCode
  Scenario Outline: Using Cupon Code
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla

    * "KATEGORILER" objesine tikla
    * "KUCUK-EV-ALETLERI" objesine tikla
    * "TUM-KUCUK-EV-ALETLERI" objesine tikla
    * "SEPETE-EKLE" objesine tikla
    * "1" saniye bekle
    * "SEPETE-GIT" objesine tikla
    * "2" saniye bekle
   * Sepette 1 urun oldugu kontrol edilir
    * "ARTI-BUTON" objesine tikla
    * "2" saniye bekle
    * "KUPON-KODU" objesine tikla
    * "KUPON-KODU-GİRİNİZ-TEXTBOX" alanina "<kod>" yaz
    * "KULLAN-BUTON" objesine tikla
    * Klavyeyi kapat
    * Sayfa uzerinde "Uyarı: Kupon kodunuz geçersiz, süresi yada kullanım limiti dolmuş." text degerinin goruntulendigi gorulur
    * "KUPON-KAPAT-BUTON" objesine tikla
    * "2" saniye bekle
    * "SEPET-COP-KUTUSU" objesine tikla
    * "1" saniye bekle
    * "SIL-BUTTON" objesine tikla
    * "2" saniye bekle
    * Sayfa uzerinde "Sepetiniz Şimdilik Boş" text degerinin goruntulendigi gorulur
    * "2" saniye bekle

    #PASS (A)
    #GEÇERSİZ KUPON İLE YAPILMIŞ SENARYO. BUNUN GEÇERLİ KUPON İÇİNDE OLAN SENARYOSU YAZILABİLİR (A)

    Examples:
      | kod        |
      | OYN0ZKGCV5 |



