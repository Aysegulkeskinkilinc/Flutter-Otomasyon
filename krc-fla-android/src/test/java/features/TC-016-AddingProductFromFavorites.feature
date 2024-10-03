@runAll @reg1
Feature: Adding Product From Favorites Feature

  @addingProductFromFavorites
  Scenario Outline: Adding Product From Favorites
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "KATEGORILER" objesine tikla
    * "1" saniye bekle
    * "MUTFAK" objesine tikla
    * Asagi Kaydir
    * "MUTFAKSEVER" objesine tikla
    * "KALP-IKON" objesine tikla
    * "EMAIL-TEXTBOX" alanina "<Mail>" yaz
    * "SIFRE-TEXTBOX" alanina "<Sifre>" yaz
    * "1" saniye bekle
    * Klavyeyi kapat
    * "1" saniye bekle
    * "GIRISYAP-FAVORILERİM" objesine tikla
    * "1" saniye bekle
    * "HESABIM-IKON" objesine tikla
    * Sayfa uzerinde "Çıkış Yap" text degerinin goruntulendigi gorulur
    * "FAVORİLERİM" objesine tikla
    * "SEPETE-EKLE" objesine tikla
    * "SEPETE-GIT" objesine tikla
   # * Sepette 1 urun oldugu kontrol edilir
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


