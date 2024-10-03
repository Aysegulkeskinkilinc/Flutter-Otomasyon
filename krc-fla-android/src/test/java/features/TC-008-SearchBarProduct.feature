@runAll @reg1
Feature: Search Bar Product Feature

  @searchBarProduct
  Scenario Outline: Search Bar Product
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
   # * "HESABIM-IKON" objesine tikla
   # * "EMAIL-TEXTBOX" alanina "<Mail>" yaz
   # * "SIFRE-TEXTBOX" alanina "<Sifre>" yaz
   # * Klavyeyi kapat
   # * "GIRISYAP-BUTON" objesine tikla

    * "ANASAYFA" objesine tikla
    * "SEARCH-BAR" objesine tikla
    * "SEARCH-BAR-2" alanina "<Ürün>" yaz
    * Klavyeyi kapat
    * "URUN-3" objesine tikla
    * Sayfa uzerinde "<Ürün>" text degerinin goruntulendigi gorulur
    * "3" saniye bekle

    #Loginsiz PASS (A)

     Examples:
       | Ürün |
       | Pike |


