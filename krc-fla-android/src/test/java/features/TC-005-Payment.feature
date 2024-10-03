@runAll @reg1
Feature: Payment Feature

  @payment
  Scenario Outline: Payment
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

    * "KATEGORILER" objesine tikla
    * "2" saniye bekle
    * "SOFRA" objesine tikla
    * "YEMEK-TAKIMLARI" objesine tikla
    * "TUM-YEMEK-TAKIMLARI" objesine tikla
    * "1" saniye bekle
    * "SEPETE-EKLE" objesine tikla
    * "1" saniye bekle
    * "SEPETE-GIT" objesine tikla
    * Sepette 1 urun oldugu kontrol edilir
    * "ODEME-ADIMINA-GEC" objesine tikla

     * "EMAIL-TEXTBOX" alanina "<Mail>" yaz
    * "SIFRE-TEXTBOX" alanina "<Sifre>" yaz
    * Klavyeyi kapat
    * "GIRISYAP-BUTON" objesine tikla
    * "2" saniye bekle
    * "DEVAMET-ODEME-BUTON" objesine tikla
    * "2" saniye bekle


    #login adımlarını gerçekleştirince sofrayı görmüyor yoruma aldım gerçekleştirdi (A)

    Examples:
      | Mail                     | Sifre     |
      | aysegulozturk@karaca.com | 16.3.98Ab |