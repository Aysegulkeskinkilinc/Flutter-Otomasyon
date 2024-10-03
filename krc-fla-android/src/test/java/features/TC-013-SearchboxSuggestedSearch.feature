@runAll @reg1
Feature: Searchbox Suggested Search Feature

  @searchSuggestedSearch
  Scenario Outline: Searchbox Suggested Search
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "ANASAYFA" objesine tikla
    * "HAMBURGER-MENU" objesine tikla
    * Asagi Kaydir
    * "KARACAHEDIYEKARTI-IKON" objesine tikla
    * "EMAIL-TEXTBOX" alanina "<Mail>" yaz
    * "SIFRE-TEXTBOX" alanina "<Sifre>" yaz
    * Klavyeyi kapat
    * "GIRISYAP-BUTON" objesine tikla
    * "2" saniye bekle
    * "GERIBUTON-IKON2" objesine tikla
    * "KATEGORILER" objesine tikla
    * "2" saniye bekle
    * "SEARCHBAR-KATEGORILER" objesine tikla
    * "DAHA-FAZLA-SEARCH" objesine tikla
    * "DAHA-AZ-SEARCH" objesine tikla
    * "POPULER-ARAMALAR-BUTON" objesine tikla
    * "POPULER-ARAMALAR-MARKA" objesine tikla
    * "SEPETE-EKLE" objesine tikla
    * "1" saniye bekle
    * "SEPETE-GIT" objesine tikla
    * "2" saniye bekle
    * Sepette 1 urun oldugu kontrol edilir
    * "1" saniye bekle
    * "SEPET-COP-KUTUSU" objesine tikla
    * "1" saniye bekle
    * "SIL-BUTTON" objesine tikla
    * "2" saniye bekle
    * Sayfa uzerinde "Sepetiniz Şimdilik Boş" text degerinin goruntulendigi gorulur
    * "2" saniye bekle

    #PASS (A)



    Examples:
      | Mail                         | Sifre     |
      | ozturkaysegul.1998@gmail.com | 16.3.98aB |



