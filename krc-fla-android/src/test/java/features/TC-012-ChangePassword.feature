@runAll @reg1
Feature: Change Password Feature

  @changePassword
  Scenario Outline: Change Password
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
    * Asagi Kaydir
    * Asagi Kaydir
    * "SIFRE-DEGISTIR" objesine tikla
    * "MEVCUT-SIFRE-TEXTBOX" alanina "<Sifre>" yaz
    * "YENI-SIFRE-TEXTBOX" alanina "<Yeni Sifre>" yaz
    * "YENI-SIFRE-TEKRAR-TEXTBOX" alanina "<Yeni Sifre>" yaz
    * Klavyeyi kapat
    * "SIFRE-DEGISTIR-BUTON" objesine tikla
    * "2" saniye bekle
#PASS HER ÇALIŞTIRMADA ŞİFRE DEĞİŞMİŞ OLACAK (A)

    Examples:
      | Mail                         | Sifre     | Yeni Sifre |
      | ozturkaysegul.1998@gmail.com | 16.3.98aB | 16.3.98aB  |


