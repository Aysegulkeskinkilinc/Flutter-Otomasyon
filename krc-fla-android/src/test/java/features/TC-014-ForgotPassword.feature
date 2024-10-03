@runAll @reg1
Feature: Forgot Password Feature
  @forgotPassword
  Scenario Outline: Forgot Password
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "HESABIM-IKON" objesine tikla
    * "SIFREMI-UNUTTUM-BUTON" objesine tikla
    * "EPOSTA-TEXTBOX" alanina "<Mail>" yaz
    * "DEVAM-ET-BUTON" objesine tikla
    * "TEL-NO-RADIO-BUTON" objesine tikla
    * "GONDER-BUTON" objesine tikla
    * "20" saniye bekle
        #-Telefona gelen kod manuel girilir
    * "KOD-GONDER-BUTON" objesine tikla
    * "3" saniye bekle
    * "SIFRE-DEGISTIR-YENI-SIFRE-TEXTBOX" alanina "<Yeni Sifre>" yaz
    * "SIFRE-DEGISTIR-YENI-SIFRE-TEKRAR-TEXTBOX" alanina "<Yeni Sifre>" yaz
    * "1" saniye bekle
    * "SIFREYI-KAYDET-BUTON" objesine tikla
    * "SIFRE-DEGISTIR-GIRISYAP-BUTON" objesine tikla
    * "3" saniye bekle

    #pass (A)



    Examples:
      | Mail                     | Yeni Sifre |
      | aysegulozturk@karaca.com | 16.3.98aB  |



