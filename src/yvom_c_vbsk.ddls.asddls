@EndUserText.label: 'Collective Processing Document Header'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity YVOM_C_VBSK as projection on YVOM_I_VBSK {
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.90
    key GroupId,
    GroupType,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.90
    CreatedBy,
    CreatedOn
}
