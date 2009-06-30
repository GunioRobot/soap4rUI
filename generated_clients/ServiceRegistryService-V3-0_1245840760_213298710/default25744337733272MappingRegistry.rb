require 'default25744337733272.rb'
require 'soap/mapping'

module MySoap; module Interface111352301

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsFaults = "http://services.gid.gap.com/serviceregistry/v3/faults"
  NsV1 = "http://schemas.gid.gap.com/servicealive/v1"
  NsV3 = "http://schemas.gid.gap.com/serviceregistry/v3"

  EncodedRegistry.register(
    :class => MySoap::Interface111352301::FindServiceRequestType,
    :schema_type => XSD::QName.new(NsV3, "FindServiceRequestType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "serviceName")]],
      ["majorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "majorVersion")]],
      ["minorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "minorVersion")]],
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "brand")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface111352301::FindServiceResponseType,
    :schema_type => XSD::QName.new(NsV3, "FindServiceResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "serviceName")]],
      ["serviceClassName", ["SOAP::SOAPString", XSD::QName.new(nil, "serviceClassName")]],
      ["majorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "majorVersion")]],
      ["minorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "minorVersion")]],
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "brand")]],
      ["wsdlURL", ["SOAP::SOAPString", XSD::QName.new(nil, "wsdlURL")]],
      ["latestMinorFlag", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "latestMinorFlag")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface111352301::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveRequestType"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => MySoap::Interface111352301::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface111352301::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface111352301::ServiceRegistryServiceFaultMessageType,
    :schema_type => XSD::QName.new(NsFaults, "ServiceRegistryServiceFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::FindServiceRequestType,
    :schema_type => XSD::QName.new(NsV3, "FindServiceRequestType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "serviceName")]],
      ["majorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "majorVersion")]],
      ["minorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "minorVersion")]],
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "brand")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::FindServiceResponseType,
    :schema_type => XSD::QName.new(NsV3, "FindServiceResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "serviceName")]],
      ["serviceClassName", ["SOAP::SOAPString", XSD::QName.new(nil, "serviceClassName")]],
      ["majorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "majorVersion")]],
      ["minorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "minorVersion")]],
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "brand")]],
      ["wsdlURL", ["SOAP::SOAPString", XSD::QName.new(nil, "wsdlURL")]],
      ["latestMinorFlag", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "latestMinorFlag")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveRequestType"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceRegistryServiceFaultMessageType,
    :schema_type => XSD::QName.new(NsFaults, "ServiceRegistryServiceFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::FindServiceRequestType,
    :schema_name => XSD::QName.new(NsV3, "FindServiceRequest"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "serviceName")]],
      ["majorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "majorVersion")]],
      ["minorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "minorVersion")]],
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "brand")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::FindServiceResponseType,
    :schema_name => XSD::QName.new(NsV3, "FindServiceResponse"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "serviceName")]],
      ["serviceClassName", ["SOAP::SOAPString", XSD::QName.new(nil, "serviceClassName")]],
      ["majorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "majorVersion")]],
      ["minorVersion", ["SOAP::SOAPInt", XSD::QName.new(nil, "minorVersion")]],
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "brand")]],
      ["wsdlURL", ["SOAP::SOAPString", XSD::QName.new(nil, "wsdlURL")]],
      ["latestMinorFlag", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "latestMinorFlag")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceAliveRequestType,
    :schema_name => XSD::QName.new(NsV3, "ServiceAliveRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceAliveResponseType,
    :schema_name => XSD::QName.new(NsV3, "ServiceAliveResponse"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceUnavailableFaultMessageType,
    :schema_name => XSD::QName.new(NsV3, "ServiceUnavailableFaultMessage"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceRegistryServiceFaultMessageType,
    :schema_name => XSD::QName.new(NsFaults, "ServiceRegistryServiceFaultMessage"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )
end

end; end
