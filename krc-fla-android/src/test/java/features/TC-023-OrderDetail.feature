@runAll @reg1
Feature: Order Detail Feature

  @orderdetail
  Scenario Outline: Order Detail Control
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

    * "SIPARISLERIM" objesine tikla
    * "SIPARIS-DETAY" objesine tikla
    * "2" saniye bekle

                      #SİPARİŞ DETAY BUTONUNDA XPATH YOK BU NEDENLE SENARYONUN DEVAMI YAZILMADI(A)

    Examples:
      | Mail                     | Sifre     |
      | aysegulozturk@karaca.com | 16.3.98Ab |

