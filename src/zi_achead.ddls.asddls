@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TEST'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define root view entity ZI_ACHEAD
  as select from zati_achead2
  composition [0..*] of ZI_ACITEM as _acitem
  //  association [1..*] to ZI_ACITEM as _acitem on $projection.Musteriid = _acitem.Musteriid
{
  key musteriid                                                          as Musteriid,
      musteri                                                            as Musteri,
      sehir                                                              as Sehir,
      adres                                                              as Adres,
      sorumlu                                                            as Sorumlu,
      sozlesme                                                           as Sozlesme,
      toplamsaat                                                         as Toplamsaat,
      onaydrm                                                            as Onaydrm,
      @Semantics.user.lastChangedBy: true
      uname                                                              as Uname,
      @Semantics.systemDateTime.createdAt
      timestamp,
      aedat,
      psotm,
//      cast( left( cast( timestamp as abap.char(25) ), 8 ) as abap.dats ) as Aedat,"Çalışmadı Notunu Al
//      cast(right( cast( timestamp as abap.char( 25 ) ), 6 ) as abap.tims )  as Psotm,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      lastchantime,
      _acitem
}
