@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'zcds_musteri_vh'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_musteri_vh
  as select from zati_achead2
{
  key musteriid as Musteriid,
  key musteri   as Musteri
}
