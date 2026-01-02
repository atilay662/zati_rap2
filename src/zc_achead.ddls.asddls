@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TEST'
@Metadata.allowExtensions: true
define root view entity ZC_ACHEAD
  provider contract transactional_query
  as projection on ZI_ACHEAD
{
  key Musteriid  as Musteriid,
      Musteri    as Musteri,
      Sehir      as Sehir,
      Adres      as Adres,
      Sorumlu    as Sorumlu,
      Sozlesme   as Sozlesme,
      Toplamsaat as Toplamsaat,
      Onaydrm    as Onaydrm,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      lastchantime,
      _acitem : redirected to composition child ZC_ACITEM
}
