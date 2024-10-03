@runAll @reg1
Feature: Guest Create Order Feature

  @guestCreateOrder
  Scenario Outline: Guest Create Order
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "KATEGORILER" objesine tikla
    * "2" saniye bekle
    * "SOFRA" objesine tikla
    * "KAHVE-CAY-SETLERI" objesine tikla
    * "KAHVE-FINCAN-TAKIMI" objesine tikla
    * "1" saniye bekle
    * "SEPETE-EKLE" objesine tikla
    * "1" saniye bekle
    * "SEPETE-GIT" objesine tikla
    * "1" saniye bekle
    * "ODEME-ADIMINA-GEC" objesine tikla
    * "UYE-OLMADAN-DEVAM-ET" objesine tikla
    * "GUEST-E-POSTA" alanina "<E-Posta>" yaz
    * Klavyeyi kapat
    * "GUEST-DEVAM-ET" objesine tikla
    * "ODEME-ADIMINA-GEC" objesine tikla
    * "GUEST-YENI-ADRES-EKLE" objesine tikla
    * "ADRESS-BASLIGI-TEXTBOX" alanina "<Adres Basligi>" yaz
    * "CEP-TELEFONU-ADRES-TEXTBOX" alanina "<Cep Telefonu>" yaz
    * "YENI-ADRES-AD" alanina "<Misafir Ad>" yaz
    * "YENI-ADRES-SOYAD" alanina "<Misafir Soyad>" yaz
    * "IL-DROPDOWN" objesine tikla
    * "TAMAM-ADRES-BUTON" objesine tikla
    * "ILCE-DROPDOWN" objesine tikla
    * "TAMAM-ADRES-BUTON" objesine tikla
    * "MAHALLE-DROPDOWN" objesine tikla
    * "TAMAM-MAHALLE-BUTON" objesine tikla
    * "2" saniye bekle
    * "ADRES-BILGILERI-TEXTBOX" alanina "<Adres Bilgileri>" yaz
    * Klavyeyi kapat
    * "BINA-NO-TEXTBOX" alanina "<Bina No>" yaz
    * "DAIRE-NO-TEXTBOX" alanina "<Daire No>" yaz
    * Klavyeyi kapat
    * "KAYDET-VE-DEVAM-ET-BUTON" objesine tikla
    * "PAYMENT-DEVAM-ET" objesine tikla
    * "KART-NUMARASI" alanina "<Card No>" yaz
    * "KART-İSMİ" alanina "<Card Name>" yaz
    * "EXPIRATION-DATE" objesine tikla
    * "TAMAM" objesine tikla
    * "CVV" alanina "<CVV>" yaz
    * "3D-SECURE" objesine tikla
    * "SATİS-SOZLESMESİ" objesine tikla
    * "GUVENLI-ODE" objesine tikla
    * Sayfa uzerinde "<Mesaj>" text degerinin goruntulendigi gorulur

    #Her çalıştımada girilen mail değiştirilmek gerekiyor? Hata olarak ilettim (A)- Tekrar bakılacak

    Examples:
      | E-Posta                    | Adres Basligi | Cep Telefonu | Misafir Ad | Misafir Soyad | Adres Bilgileri    | Bina No | Daire No | Card No             | Card Name   | CVV  | Mesaj                        |
      | ozturkaysegul636@gmail.com | Misafir       | 5555555555   | Misafir    | DENEME        | Misafir TEST ADRES | 5       | 6        | 5555 5555 5555 4444 | Test DENEME | 1234 | Kart güvenlik kodu geçersiz. |



