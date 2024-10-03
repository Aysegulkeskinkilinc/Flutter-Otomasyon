@runAll @reg1
Feature: newMember Feature

  @newMember
  Scenario Outline: NewMember
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "IZIN-VER-BUTON" objesine tikla
    * "HESABIM-IKON" objesine tikla
    * "UYE-OL" objesine tikla
    * "AD-YENI-KAYIT" alanina "<Ad>" yaz
    * "SOYAD-YENI-KAYIT" alanina "<Soyad>" yaz
    * "E-POSTA-YENI-KAYIT" alanina "<e-posta>" yaz
    * "CEP-TELEFONU-YENI-KAYIT" alanina "<tel-no>" yaz
    * Klavyeyi kapat
    * Asagi Kaydir
    * "SIFRE-YENI-KAYIT" alanina "<sifre>" yaz
    * Klavyeyi kapat
    * "UYELIK-SÖZLEŞMESİ-YENI-KAYIT" objesine tikla


    #SONUNDA ÜYELİK OLUŞTURMA İŞLEMİ YAPILMIYOR HER SEFERİND EFARKLI TEL GİRMEK GEREKİR, PASS (A)


    Examples:
      | Ad     | Soyad | e-posta               | tel-no       | sifre    |
      | Sezgin | Varlı | varlisezgin@gmail.com | 5424022509   | Test1234* |