@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Collective Processing Document Header'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity YVOM_I_VBSK
  as select from yvbsk
{
  key sammg  as GroupId,
      smart  as GroupType,
      yernam as CreatedBy,
      yerdat as CreatedOn
}
