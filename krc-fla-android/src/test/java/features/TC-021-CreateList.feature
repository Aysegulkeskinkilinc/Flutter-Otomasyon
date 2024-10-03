@runAll @reg1
Feature: Create a List  Feature

  @createListe
  Scenario Outline: Create List Control
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla

    * "KATEGORILER" objesine tikla
    * "2" saniye bekle
    * "HALI" objesine tikla
    * "SALON-HALISI" objesine tikla
    * "HALI-ILK-URUN" objesine tikla
    * "LISTEYE-EKLE" objesine tikla
    * "EMAIL-TEXTBOX" alanina "<Mail>" yaz
    * "SIFRE-TEXTBOX" alanina "<Sifre>" yaz
    * Klavyeyi kapat
    * "GIRISYAP-BUTON" objesine tikla
    * "2" saniye bekle

    * "LISTEOLUSTUR-BUTON" objesine tikla
    * "LISTEADI-TEXTBOX" alanina "<ListeAdi>" yaz
    * Klavyeyi kapat
    * "LISTEOLUSTUR-BUTON2" objesine tikla
    * "LISTELERIM" objesine tikla
    * "LISTELERIM-BILGILENDIRME" objesine tikla
    #XPATH GÖRMÜYOR
    * "LISTELERIM-UCNOKTA" objesine tikla
    * "LISTELERIM-LISTEYI-SIL" objesine tikla
    * "ILKLISTE-IKON" objesine tikla
    #LISTELERIM-BILGILENDIRME'Yİ GÖRMÜYOR. ÜRÜN LİSTEYE EKLENMEMİŞ BUNU ASSERT ETMEMİZ GEREKİYOR (A)



    Examples:
      | Mail                         | Sifre     | ListeAdi |
      | ozturkaysegul.1998@gmail.com | 16.3.98aB | Test     |