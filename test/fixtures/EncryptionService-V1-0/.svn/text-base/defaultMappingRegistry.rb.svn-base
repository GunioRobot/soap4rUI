require 'default.rb'
require 'soap/mapping'

module MySoap; module InterfaceOne

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV1 = "http://schemas.gid.gap.com/encryption/v1"
  NsV1_0 = "http://schemas.gid.gap.com/servicealive/v1"

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::VaultID,
    :schema_type => XSD::QName.new(NsV1, "VaultID"),
    :schema_element => [
      ["iD", ["SOAP::SOAPString", XSD::QName.new(nil, "ID")]],
      ["dataType", ["SOAP::SOAPString", XSD::QName.new(nil, "dataType")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceAliveRequestType"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::VaultID,
    :schema_type => XSD::QName.new(NsV1, "VaultID"),
    :schema_element => [
      ["iD", ["SOAP::SOAPString", XSD::QName.new(nil, "ID")]],
      ["dataType", ["SOAP::SOAPString", XSD::QName.new(nil, "dataType")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceAliveRequestType"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::GetVaultIDRequest,
    :schema_name => XSD::QName.new(NsV1, "GetVaultIDRequest"),
    :schema_element => [
      ["data", ["SOAP::SOAPString", XSD::QName.new(nil, "data")]],
      ["dataType", ["SOAP::SOAPString", XSD::QName.new(nil, "dataType")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::GetVaultIDResponse,
    :schema_name => XSD::QName.new(NsV1, "GetVaultIDResponse"),
    :schema_element => [
      ["getVaultIDReturn", ["MySoap::InterfaceOne::VaultID", XSD::QName.new(nil, "getVaultIDReturn")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::StoreRequest,
    :schema_name => XSD::QName.new(NsV1, "StoreRequest"),
    :schema_element => [
      ["data", ["SOAP::SOAPString", XSD::QName.new(nil, "data")]],
      ["dataType", ["SOAP::SOAPString", XSD::QName.new(nil, "dataType")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::StoreResponse,
    :schema_name => XSD::QName.new(NsV1, "StoreResponse"),
    :schema_element => [
      ["storeReturn", ["MySoap::InterfaceOne::VaultID", XSD::QName.new(nil, "storeReturn")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::RetrieveRequest,
    :schema_name => XSD::QName.new(NsV1, "RetrieveRequest"),
    :schema_element => [
      ["id", ["MySoap::InterfaceOne::VaultID", XSD::QName.new(nil, "id")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::RetrieveResponse,
    :schema_name => XSD::QName.new(NsV1, "RetrieveResponse"),
    :schema_element => [
      ["retrieveReturn", ["SOAP::SOAPString", XSD::QName.new(nil, "retrieveReturn")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveRequestType,
    :schema_name => XSD::QName.new(NsV1, "ServiceAliveRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveResponseType,
    :schema_name => XSD::QName.new(NsV1, "ServiceAliveResponse"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceUnavailableFaultMessageType,
    :schema_name => XSD::QName.new(NsV1, "ServiceUnavailableFaultMessage"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )
end

end; end
