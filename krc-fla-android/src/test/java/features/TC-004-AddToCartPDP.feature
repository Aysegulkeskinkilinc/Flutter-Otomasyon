@runAll @reg1
Feature: Add To Cart PDP Feature

  @addToCartPDP
  Scenario Outline: Add To Cart PDP
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
   # * "HESABIM-IKON" objesine tikla
   # * "EMAIL-TEXTBOX" alanina "<Mail>" yaz
   # * "SIFRE-TEXTBOX" alanina "<Sifre>" yaz
   # * Klavyeyi kapat
   # * "GIRISYAP-BUTON" objesine tikla
   # * "2" saniye bekle
   # * Sayfa uzerinde "Çıkış Yap" text degerinin goruntulendigi gorulur

    * "ANASAYFA" objesine tikla
    * "SEARCH-BAR" objesine tikla
    * "SEARCH-BAR-2" alanina "<urun>" yaz
    * Klavyeyi kapat
    * "URUN-1" objesine tikla
    * "PDP-SEPETE-EKLE" objesine tikla
    * "SEPETE-GIT" objesine tikla
    * Sepette 1 urun oldugu kontrol edilir
    * "1" saniye bekle
    * "SEPET-COP-KUTUSU" objesine tikla
    * "1" saniye bekle
    * "SIL-BUTTON" objesine tikla
    * "2" saniye bekle
    * Sayfa uzerinde "Sepetiniz Şimdilik Boş" text degerinin goruntulendigi gorulur
    * "2" saniye bekle

#Hesabım sayfasında gidilmediği sürece xpath ve resource id leri görmektedir. (A)

    Examples:
      | Mail                          | Sifre  | urun           |
      | test+email+1010@testemail.com | 123456 | 153.01.06.4890 |