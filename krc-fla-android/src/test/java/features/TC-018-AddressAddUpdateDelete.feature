@runAll @reg1
Feature: Address Add-Update-Delete Feature

  @adressAddUpdateDelete
  Scenario Outline: Address Add-Update-Delete
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
    * "ADRESLERİM-BUTON" objesine tikla
    * "YENI-TESLIMAT-ADRES-BUTON" objesine tikla
    * "ADRESS-BASLIGI-TEXTBOX" alanina "<Adres Basligi>" yaz
    * "IL-DROPDOWN" objesine tikla
    * "TAMAM-ADRES-BUTON" objesine tikla
    * "ILCE-DROPDOWN" objesine tikla
    * "TAMAM-ADRES-BUTON" objesine tikla
    * "MAHALLE-DROPDOWN" objesine tikla
    * "TAMAM-MAHALLE-BUTON" objesine tikla
    * "ADRES-BILGILERI-TEXTBOX" alanina "<Adres Bilgileri>" yaz
    #YAZI YAZMIYORR


    * Klavyeyi kapat
    * "BINA-NO-TEXTBOX" alanina "<Bina No>" yaz
    * Klavyeyi kapat
    * "DAIRE-NO-TEXTBOX" alanina "<Daire No>" yaz
    * Klavyeyi kapat
    * "KAYDET-VE-DEVAM-ET-BUTON" objesine tikla
    # Adresin kaydedildiğinin asserti eklenecek
    * "DUZENLE-ADRES-BUTON" objesine tikla
    * "ADRESS-BASLIGI-TEXTBOX" alanina "<AdresBasligi2>" yaz
    * "KAYDET-VE-DEVAM-ET-BUTON" objesine tikla
    # Adresin düzenlendiğinin asserti eklenecek
    * "SIL-ADRES-BUTON" objesine tikla
    # Adresin silindiğinin asserti eklenecek

    #ADRES BİLGİLERİNDE SORUN VAR YAZIYI GÖRMÜYOR BU SEBEPLE TAMAMI ÇALIŞTIRILAMADI (A)



    Examples:
      | Mail                         | Sifre     | Adres Basligi | Adres Bilgileri  | Bina No | Daire No | AdresBasligi2 |
      | ozturkaysegul.1998@gmail.com | 16.3.98aB | Test          | Test test Test   | 1       | 1        | Testt2        |




