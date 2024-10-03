@runAll @reg1
Feature: Add Pruduct to Favorites

  @addPruducttoFavorites
  Scenario Outline: Add Pruduct to Favorites
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla

    * "KATEGORILER" objesine tikla
    * "HEDIYE" objesine tikla
    * "HEDIYE-KATEGORILERI" objesine tikla
    * "MUTFAKSEVERLERE-HEDIYELER" objesine tikla
    * Asagi Kaydir
    * "2" saniye bekle
    * "KALP-IKON" objesine tikla
    * "EMAIL-TEXTBOX" alanina "<Mail>" yaz
    * "SIFRE-TEXTBOX" alanina "<Sifre>" yaz
    * Klavyeyi kapat
    * "GIRISYAP-BUTON" objesine tikla
    * "2" saniye bekle
    #Kalbİn kırmızı olduğuna dair yani favorilere eklendiğine dair assert eklenmeli, burada bug var kırmızı olmuyor iletildi.
    * "HESABIM-IKON" objesine tikla
    * "FAVORİLERİM" objesine tikla
    * Sayfa uzerinde "<Ürün>" text degerinin goruntulendigi gorulur
    * "2" saniye bekle


    #PASS (A)

    Examples:
      | Mail                         | Sifre     | Ürün                                                   |
      | ozturkaysegul.1998@gmail.com | 16.3.98aB | Karaca Future Essential Tost Makinesi Matte Black 1800 |

