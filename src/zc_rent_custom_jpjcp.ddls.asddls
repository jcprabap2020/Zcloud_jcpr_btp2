@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZRENT_CUSTOM_JPJCP'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_RENT_CUSTOM_JPJCP
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_RENT_CUSTOM_JPJCP
  association [1..1] to ZR_RENT_CUSTOM_JPJCP as _BaseEntity on $projection.DOCID = _BaseEntity.DOCID and $projection.MATRICULA = _BaseEntity.MATRICULA
{
  key DocID,
  key Matricula,
  Nombres,
  Apellidos,
  Email,
  CntrType,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChanged,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChanged,
  @Semantics: {
    User.Createdby: true
  }
  Createdby,
  @Semantics: {
    User.Lastchangedby: true
  }
  Changedby,
  _BaseEntity
}
