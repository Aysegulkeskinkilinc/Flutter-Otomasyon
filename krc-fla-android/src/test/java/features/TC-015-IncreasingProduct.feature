@runAll @reg1
Feature: Incresing Product the Cart Feature

  @increasingProduct
  Scenario Outline: Incresing Product the Cart
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla

    * "KATEGORILER" objesine tikla
    * "1" saniye bekle
    * "EV-TEKSTILI" objesine tikla
    * "BANYO" objesine tikla
    * "HAVLU" objesine tikla
    * "1" saniye bekle
    * Asagi Kaydir
    * "SEPETE-EKLE" objesine tikla
    * "1" saniye bekle
    * "SEPETE-GIT" objesine tikla
    * "3" saniye bekle
    * Sepette 1 urun oldugu kontrol edilir
    * "ARTI-BUTON" objesine tikla
    * "ARTI-BUTON" objesine tikla
    * "EKSİ-BUTON" objesine tikla
    * "1" saniye bekle
    * "SEPET-COP-KUTUSU" objesine tikla
    * "1" saniye bekle
    * "SIL-BUTTON" objesine tikla
    * "2" saniye bekle
    * Sayfa uzerinde "Sepetiniz Şimdilik Boş" text degerinin goruntulendigi gorulur
    * "2" saniye bekle

    #PASS (A)




    Examples:
      | Mail                         | Sifre     |
      | ozturkaysegul.1998@gmail.com | 16.3.98Ab |