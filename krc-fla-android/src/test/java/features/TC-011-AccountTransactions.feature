@runAll @reg1
Feature: Account Transactions Feature

 @accountTransctions
  Scenario Outline: Account Transactions

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
   * "KISISEL-BILGILERIM-BUTON" objesine tikla
   * "KISISEL-BILGILERIM-AD-TEXTBOX" alanina "<Ad>" yaz
   * Klavyeyi kapat
   * "KADIN-RADIO-BUTON" objesine tikla
   * Asagi Kaydir
   * "GUNCELLE-BUTON" objesine tikla
   * "2" saniye bekle

  #PASS(A)



   Examples:
    | Mail                         | Sifre     | Ad        |
    | ozturkaysegul.1998@gmail.com | 16.3.98aB | Aysegulll |