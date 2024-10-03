@runAll @reg1
Feature: Check My Account Module Feature

  @checkMyAccountModule
  Scenario Outline: Check My Account Module
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

    * "OZELGUNHATIRLATICIM-IKON" objesine tikla
    * "2" saniye bekle
    * "GERIBUTON-IKON" objesine tikla

    * "DAVETETKAZAN-IKON" objesine tikla
    * Asagi Kaydir
    * "GERIBUTON-IKON" objesine tikla
    * Asagi Kaydir

    * "TALEPLERIM-IKON" objesine tikla
    * "2" saniye bekle
    * "GERIBUTON-IKON2" objesine tikla

    * "HEDIYEKARTLARIM-IKON" objesine tikla
    * "GERIBUTON-IKON" objesine tikla

    * "INDIRIMKUPONLARIM-IKON" objesine tikla
    * "GERIBUTON-IKON" objesine tikla

    * "DEGERLENDIRMELERIM-IKON" objesine tikla
    * "GERIBUTON-IKON" objesine tikla

    * "YARDIMDESTEK-IKON" objesine tikla
    * Asagi Kaydir
    * "GERIBUTON-IKON" objesine tikla

    #PASS (A)


    Examples:
      | Mail                         | Sifre     |
      | ozturkaysegul.1998@gmail.com | 16.3.98aB |