@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Item'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_ACITEM as select from zati_acitem2
association to parent ZI_ACHEAD as _achead on $projection.Musteriid = _achead.Musteriid
{
    key musteriid as Musteriid,
    key ticketno as Ticketno,
    aktiviteid as Aktiviteid,
    projeturu as Projeturu,
    lokasyon as Lokasyon,
    ortam as Ortam,
    _achead
}
