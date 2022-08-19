@EndUserText.label: 'Collective Processing Document Header'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity YVOM_C_VBSK as projection on YVOM_I_VBSK {
    key GroupId,
    GroupType,
    CreatedBy,
    CreatedOn
}
