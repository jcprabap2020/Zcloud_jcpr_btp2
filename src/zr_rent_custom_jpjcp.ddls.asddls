@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZRENT_CUSTOM_JPJCP'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_RENT_CUSTOM_JPJCP
  as select from ZRENT_CUSTOM_JP
{
  key doc_id as DocID,
  key matricula as Matricula,
  nombres as Nombres,
  apellidos as Apellidos,
  email as Email,
  cntr_type as CntrType,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed as LocalLastChanged,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed as LastChanged,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.user.lastChangedBy: true
  changedby as Changedby
}
