require 'default1012411084684.rb'
require 'soap/mapping'

module MySoap; module Interface1225353098

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsProviderV1PromotionServicesGidGapCom = "http://provider.v1.promotion.services.gid.gap.com"

  EncodedRegistry.register(
    :class => MySoap::Interface1225353098::CreditCardValidationRequest,
    :schema_type => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "CreditCardValidationRequest"),
    :schema_element => [
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "brand")]],
      ["channel", ["SOAP::SOAPString", XSD::QName.new(nil, "channel")]],
      ["promotionCode", ["SOAP::SOAPString", XSD::QName.new(nil, "promotionCode")]],
      ["requestDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "requestDateTime")]],
      ["creditCardType", ["SOAP::SOAPString", XSD::QName.new(nil, "creditCardType")]],
      ["creditCardSecureKey", ["SOAP::SOAPString", XSD::QName.new(nil, "creditCardSecureKey")]],
      ["qualifyingPromoLevelId", ["SOAP::SOAPString", XSD::QName.new(nil, "qualifyingPromoLevelId")]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface1225353098::ArrayOf_xsd_string,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface1225353098::PromotionUsage,
    :schema_type => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "PromotionUsage"),
    :schema_element => [
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "storeId")]],
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "transactionId")]],
      ["usageDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "usageDateTime")]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface1225353098::ArrayOf_PromotionUsage,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "PromotionUsage") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface1225353098::CreditCardValidationInfo,
    :schema_type => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "CreditCardValidationInfo"),
    :schema_element => [
      ["validationStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "validationStatus")]],
      ["promotionUsageHistory", ["MySoap::Interface1225353098::ArrayOf_PromotionUsage", XSD::QName.new(nil, "promotionUsageHistory")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface1225353098::CreditCardValidationResponse,
    :schema_type => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "CreditCardValidationResponse"),
    :schema_element => [
      ["creditCardValidationInfo", ["MySoap::Interface1225353098::CreditCardValidationInfo", XSD::QName.new(nil, "creditCardValidationInfo")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface1225353098::PromotionServiceException,
    :schema_type => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "PromotionServiceException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface1225353098::PromoValidationException,
    :schema_type => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "PromoValidationException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface1225353098::CreditCardValidationRequest,
    :schema_type => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "CreditCardValidationRequest"),
    :schema_element => [
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "brand")]],
      ["channel", ["SOAP::SOAPString", XSD::QName.new(nil, "channel")]],
      ["promotionCode", ["SOAP::SOAPString", XSD::QName.new(nil, "promotionCode")]],
      ["requestDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "requestDateTime")]],
      ["creditCardType", ["SOAP::SOAPString", XSD::QName.new(nil, "creditCardType")]],
      ["creditCardSecureKey", ["SOAP::SOAPString", XSD::QName.new(nil, "creditCardSecureKey")]],
      ["qualifyingPromoLevelId", ["SOAP::SOAPString", XSD::QName.new(nil, "qualifyingPromoLevelId")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface1225353098::PromotionUsage,
    :schema_type => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "PromotionUsage"),
    :schema_element => [
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "storeId")]],
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "transactionId")]],
      ["usageDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "usageDateTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface1225353098::CreditCardValidationInfo,
    :schema_type => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "CreditCardValidationInfo"),
    :schema_element => [
      ["validationStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "validationStatus")]],
      ["promotionUsageHistory", ["MySoap::Interface1225353098::ArrayOf_PromotionUsage", XSD::QName.new(nil, "promotionUsageHistory")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface1225353098::CreditCardValidationResponse,
    :schema_type => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "CreditCardValidationResponse"),
    :schema_element => [
      ["creditCardValidationInfo", ["MySoap::Interface1225353098::CreditCardValidationInfo", XSD::QName.new(nil, "creditCardValidationInfo")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface1225353098::PromotionServiceException,
    :schema_type => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "PromotionServiceException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface1225353098::PromoValidationException,
    :schema_type => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "PromoValidationException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface1225353098::CreditCardValidationRequest,
    :schema_name => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "CreditCardValidationRequest"),
    :schema_element => [
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "brand")]],
      ["channel", ["SOAP::SOAPString", XSD::QName.new(nil, "channel")]],
      ["promotionCode", ["SOAP::SOAPString", XSD::QName.new(nil, "promotionCode")]],
      ["requestDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "requestDateTime")]],
      ["creditCardType", ["SOAP::SOAPString", XSD::QName.new(nil, "creditCardType")]],
      ["creditCardSecureKey", ["SOAP::SOAPString", XSD::QName.new(nil, "creditCardSecureKey")]],
      ["qualifyingPromoLevelId", ["SOAP::SOAPString", XSD::QName.new(nil, "qualifyingPromoLevelId")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface1225353098::PromotionUsage,
    :schema_name => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "PromotionUsage"),
    :schema_element => [
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "storeId")]],
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "transactionId")]],
      ["usageDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "usageDateTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface1225353098::CreditCardValidationInfo,
    :schema_name => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "CreditCardValidationInfo"),
    :schema_element => [
      ["validationStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "validationStatus")]],
      ["promotionUsageHistory", ["MySoap::Interface1225353098::ArrayOf_PromotionUsage", XSD::QName.new(nil, "promotionUsageHistory")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface1225353098::CreditCardValidationResponse,
    :schema_name => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "CreditCardValidationResponse"),
    :schema_element => [
      ["creditCardValidationInfo", ["MySoap::Interface1225353098::CreditCardValidationInfo", XSD::QName.new(nil, "creditCardValidationInfo")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface1225353098::PromotionServiceException,
    :schema_name => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "PromotionServiceException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface1225353098::PromoValidationException,
    :schema_name => XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "PromoValidationException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "code")]]
    ]
  )
end

end; end
