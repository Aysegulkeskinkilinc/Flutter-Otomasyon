@runAll @reg1
Feature: Create Order Feature

  @createOrder
  Scenario Outline: Create Order
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "HAMBURGER-MENU" objesine tikla
    * "2" saniye bekle
    * Asagi Kaydir
    * "GIRISYAPPROFILIM" objesine tikla
    * "EMAIL-TEXTBOX" alanina "<Mail>" yaz
    * "SIFRE-TEXTBOX" alanina "<Sifre>" yaz
    * Klavyeyi kapat
    * "GIRISYAP-BUTON" objesine tikla
    * "2" saniye bekle
    * Sayfa uzerinde "Çıkış Yap" text degerinin goruntulendigi gorulur

    * "ANASAYFA" objesine tikla
    * "1" saniye bekle
    * Asagi Kaydir
    * "1" saniye bekle
    * "SEPETE-EKLE" objesine tikla
    * "1" saniye bekle
    * "TAMAM-BUTON" objesine tikla
    * "SEPETIM" objesine tikla
    * "3" saniye bekle
    * Sepette 1 urun oldugu kontrol edilir
    * "ODEME-ADIMINA-GEC" objesine tikla
    * "2" saniye bekle
    * "DEVAMET-ODEME-BUTON" objesine tikla
    * "KART-NUMARASI" alanina "<Card No>" yaz
    * "KART-ISMI" alanina "<Card Name>" yaz
    * Klavyeyi kapat
    * "EXPIRATION-DATE" objesine tikla
    * "TAMAM" objesine tikla
    * "CVV" alanina "<CVV>" yaz
    * Klavyeyi kapat
    * "SATİS-SOZLESMESİ" objesine tikla
    * "GUVENLI-ODE" objesine tikla
    * "KAPAT-BUTON" objesine tikla
    * "2" saniye bekle

    #son kullanma tarihi yanlış olduğunda çıkan mesaj kontrol edildi. Son kullanma tarihinde yıl aşağı kaydırılmalı bu method oluşturulmalı
    #PASS (A)



    Examples:
      | Mail                     | Sifre     | Card No             | Card Name   | CVV  |
      | aysegulozturk@karaca.com | 16.3.98Ab | 5555 5555 5555 4444 | Test DENEME | 1234 |