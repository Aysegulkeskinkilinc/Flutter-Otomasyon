@runAll @reg1
Feature: Logout Feature

  @logout
  Scenario Outline: Logout Control
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
    * "CIKIS-YAP" objesine tikla
    * "CIKISYAP-EVET" objesine tikla


    #CIKIS-YAP OBJESİNİ İÇİN AYRI BİR XPATH YOK FAIL (A)

    Examples:
      | Mail                         | Sifre     |
      | ozturkaysegul.1998@gmail.com | 16.3.98aB |