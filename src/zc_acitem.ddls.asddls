@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_ACITEM as projection on ZI_ACITEM
{
    key Musteriid,
    key Ticketno,
    Aktiviteid,
    Projeturu,
    Lokasyon,
    Ortam,
    /* Associations ttest */ 
    _achead : redirected to parent ZC_ACHEAD
}
