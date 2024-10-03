@runAll @reg1
Feature: Guest To Cart Feature

  @guestToCart
  Scenario Outline: Guest To Cart
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "KATEGORILER" objesine tikla
    * "1" saniye bekle
    * "<Category Name>" yazili kategori secilir
    * "<SubCategory Name>" yazili kategori secilir
    * "1" saniye bekle
    * "SEPETE-EKLE" objesine tikla
    * "2" saniye bekle
    * "SEPETE-GIT" objesine tikla
    * "2" saniye bekle
    * Sepette 1 urun oldugu kontrol edilir
    #FAIL(A) - BURASI TEKRAR İNCELENMELİ

    Examples:
      | Category Name     | SubCategory Name              |
      | Sofra             | Tüm Sofra Ürünleri            |
      | Mutfak            | Tüm Mutfak Ürünleri           |
      | Küçük Ev Aletleri | Tüm Küçük Ev Aletleri         |
      | Ev Tekstili       | Tüm Ev Tekstili Ürünleri      |
      | Aksesuar          | Tüm Aksesuar Ürünleri         |
      | Halı              | Tüm Halı Ürünleri             |
      | Gıda              | Tüm Gıda Ürünleri             |
      | Sadece Karaca'da  | Tüm Sadece Karaca'da Ürünleri |
      | Çeyiz Seti        | Tüm Çeyiz Seti Ürünleri       |
      | Hediye            | Tüm Hediye Ürünleri           |
      | İndirim           | Tüm İndirim Ürünleri          |
      | Yeni Ürünler      | Tüm Yeni Ürünler              |


