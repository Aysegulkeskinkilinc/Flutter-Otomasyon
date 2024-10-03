@runAll @reg1
Feature: My Orders Feature

  @myOrders
  Scenario Outline: My Orders
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "HESABIM-IKON" objesine tikla
    * "EMAIL-TEXTBOX" alanina "<Mail>" yaz
    * "SIFRE-TEXTBOX" alanina "<Sifre>" yaz
    * Klavyeyi kapat
    * "GIRISYAP-BUTON" objesine tikla
    * "2" saniye bekle
    * Sayfa uzerinde "Çıkış Yap" text degerinin goruntulendigi gorulur
    * "2" saniye bekle
    * "SIPARISLERIM" objesine tikla
    * "1" saniye bekle

    #PASS (A)

    Examples:
      | Mail                      | Sifre    |
      | aysegulozturk@karaca.com | 16.3.98aB |