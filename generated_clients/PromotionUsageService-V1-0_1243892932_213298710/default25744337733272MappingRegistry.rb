require 'default25744337733272.rb'
require 'soap/mapping'

module MySoap; module Interface111352301

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV1 = "http://schemas.gid.gap.com/promotionusage/v1"
  NsV1_0 = "http://schemas.gid.gap.com/servicealive/v1"

  EncodedRegistry.register(
    :class => MySoap::Interface111352301::PromotionUsageType,
    :schema_type => XSD::QName.new(NsV1, "PromotionUsageType"),
    :schema_element => [
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "transactionId")]],
      ["transactionDate", ["SOAP::SOAPString", XSD::QName.new(nil, "transactionDate")]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "storeId")]],
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "brand")]],
      ["channel", ["SOAP::SOAPString", XSD::QName.new(nil, "channel")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface111352301::PromotionUsagesType,
    :schema_type => XSD::QName.new(NsV1, "PromotionUsagesType"),
    :schema_element => [
      ["promotionUsage", ["MySoap::Interface111352301::PromotionUsageType[]", XSD::QName.new(nil, "PromotionUsage")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface111352301::PromotionUsageRequestType,
    :schema_type => XSD::QName.new(NsV1, "PromotionUsageRequestType"),
    :schema_element => [
      ["promotionCode", ["SOAP::SOAPString", XSD::QName.new(nil, "promotionCode")]],
      ["customerId", ["SOAP::SOAPString", XSD::QName.new(nil, "customerId")]],
      ["customerEmailAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "customerEmailAddress")]],
      ["creditCardSecureKey", ["SOAP::SOAPString", XSD::QName.new(nil, "creditCardSecureKey")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface111352301::PromotionUsageResponseType,
    :schema_type => XSD::QName.new(NsV1, "PromotionUsageResponseType"),
    :schema_element => [
      ["promotionUsages", ["MySoap::Interface111352301::PromotionUsagesType", XSD::QName.new(nil, "PromotionUsages")]],
      ["statusCode", ["SOAP::SOAPString", XSD::QName.new(nil, "StatusCode")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface111352301::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceAliveRequestType"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => MySoap::Interface111352301::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface111352301::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::PromotionUsageType,
    :schema_type => XSD::QName.new(NsV1, "PromotionUsageType"),
    :schema_element => [
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "transactionId")]],
      ["transactionDate", ["SOAP::SOAPString", XSD::QName.new(nil, "transactionDate")]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "storeId")]],
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "brand")]],
      ["channel", ["SOAP::SOAPString", XSD::QName.new(nil, "channel")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::PromotionUsagesType,
    :schema_type => XSD::QName.new(NsV1, "PromotionUsagesType"),
    :schema_element => [
      ["promotionUsage", ["MySoap::Interface111352301::PromotionUsageType[]", XSD::QName.new(nil, "PromotionUsage")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::PromotionUsageRequestType,
    :schema_type => XSD::QName.new(NsV1, "PromotionUsageRequestType"),
    :schema_element => [
      ["promotionCode", ["SOAP::SOAPString", XSD::QName.new(nil, "promotionCode")]],
      ["customerId", ["SOAP::SOAPString", XSD::QName.new(nil, "customerId")]],
      ["customerEmailAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "customerEmailAddress")]],
      ["creditCardSecureKey", ["SOAP::SOAPString", XSD::QName.new(nil, "creditCardSecureKey")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::PromotionUsageResponseType,
    :schema_type => XSD::QName.new(NsV1, "PromotionUsageResponseType"),
    :schema_element => [
      ["promotionUsages", ["MySoap::Interface111352301::PromotionUsagesType", XSD::QName.new(nil, "PromotionUsages")]],
      ["statusCode", ["SOAP::SOAPString", XSD::QName.new(nil, "StatusCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceAliveRequestType"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::PromotionUsageRequestType,
    :schema_name => XSD::QName.new(NsV1, "PromotionUsageRequest"),
    :schema_element => [
      ["promotionCode", ["SOAP::SOAPString", XSD::QName.new(nil, "promotionCode")]],
      ["customerId", ["SOAP::SOAPString", XSD::QName.new(nil, "customerId")]],
      ["customerEmailAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "customerEmailAddress")]],
      ["creditCardSecureKey", ["SOAP::SOAPString", XSD::QName.new(nil, "creditCardSecureKey")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::PromotionUsageResponseType,
    :schema_name => XSD::QName.new(NsV1, "PromotionUsageResponse"),
    :schema_element => [
      ["promotionUsages", ["MySoap::Interface111352301::PromotionUsagesType", XSD::QName.new(nil, "PromotionUsages")]],
      ["statusCode", ["SOAP::SOAPString", XSD::QName.new(nil, "StatusCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceAliveRequestType,
    :schema_name => XSD::QName.new(NsV1, "ServiceAliveRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceAliveResponseType,
    :schema_name => XSD::QName.new(NsV1, "ServiceAliveResponse"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface111352301::ServiceUnavailableFaultMessageType,
    :schema_name => XSD::QName.new(NsV1, "ServiceUnavailableFaultMessage"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

end

end; end
