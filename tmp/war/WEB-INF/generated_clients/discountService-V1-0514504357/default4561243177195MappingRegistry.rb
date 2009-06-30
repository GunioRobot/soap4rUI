require 'default4561243177195.rb'
require 'soap/mapping'

module MySoap; module Interface677293416

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV1 = "http://schemas.gid.gap.com/discountService/v1"
  NsV1_0 = "http://schemas.gid.gap.com/servicealive/v1"

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::DiscountServiceRequestType,
    :schema_type => XSD::QName.new(NsV1, "DiscountServiceRequestType"),
    :schema_element => [
      ["requestDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestDateTime")], [0, 1]],
      ["storeID", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreID")], [0, 1]],
      ["requestType", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestType")], [0, 1]],
      ["orderRequest", ["MySoap::Interface677293416::OrderType", XSD::QName.new(nil, "orderRequest")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::DiscountServiceResponseType,
    :schema_type => XSD::QName.new(NsV1, "DiscountServiceResponseType"),
    :schema_element => [
      ["orderResponse", ["MySoap::Interface677293416::OrderType", XSD::QName.new(nil, "orderResponse")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::OrderType,
    :schema_type => XSD::QName.new(NsV1, "OrderType"),
    :schema_element => [
      ["orderID", ["SOAP::SOAPString", XSD::QName.new(nil, "OrderID")], [0, 1]],
      ["qualifyType", ["MySoap::Interface677293416::QualifyTypeEnum", XSD::QName.new(nil, "QualifyType")], [0, 1]],
      ["orderDate", ["SOAP::SOAPString", XSD::QName.new(nil, "OrderDate")], [0, 1]],
      ["channel", ["SOAP::SOAPString", XSD::QName.new(nil, "Channel")], [0, 1]],
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "Brand")], [0, 1]],
      ["region", ["SOAP::SOAPString", XSD::QName.new(nil, "Region")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(nil, "Currency")], [0, 1]],
      ["orderLineItems", ["MySoap::Interface677293416::OrderLineType[]", XSD::QName.new(nil, "OrderLineItems")], [0, nil]],
      ["promotions", ["MySoap::Interface677293416::PromotionType[]", XSD::QName.new(nil, "Promotions")], [0, nil]],
      ["tenderTypes", ["MySoap::Interface677293416::TenderInfoType[]", XSD::QName.new(nil, "TenderTypes")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::TenderInfoType,
    :schema_type => XSD::QName.new(NsV1, "TenderInfoType"),
    :schema_element => [
      ["creditCardHash", ["SOAP::SOAPString", XSD::QName.new(nil, "CreditCardHash")], [0, 1]],
      ["creditCardType", ["SOAP::SOAPString", XSD::QName.new(nil, "CreditCardType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::PromotionType,
    :schema_type => XSD::QName.new(NsV1, "PromotionType"),
    :schema_element => [
      ["promotionCode", ["SOAP::SOAPString", XSD::QName.new(nil, "PromotionCode")]],
      ["promotionID", ["SOAP::SOAPString", XSD::QName.new(nil, "PromotionID")], [0, 1]],
      ["discountReasonCode", ["SOAP::SOAPString", XSD::QName.new(nil, "DiscountReasonCode")], [0, 1]],
      ["appliedStatus", ["MySoap::Interface677293416::AppliedStatusEnum", XSD::QName.new(nil, "AppliedStatus")], [0, 1]],
      ["receiptMessages", ["MySoap::Interface677293416::ReceiptMessageType[]", XSD::QName.new(nil, "ReceiptMessages")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::ReceiptMessageType,
    :schema_type => XSD::QName.new(NsV1, "ReceiptMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::OrderLineType,
    :schema_type => XSD::QName.new(NsV1, "OrderLineType"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "SequenceNumber")]],
      ["product", ["MySoap::Interface677293416::ProductInfoType", XSD::QName.new(nil, "Product")]],
      ["quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "Quantity")]],
      ["discountPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "DiscountPrice")], [0, 1]],
      ["awards", ["MySoap::Interface677293416::AwardType[]", XSD::QName.new(nil, "Awards")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::AwardType,
    :schema_type => XSD::QName.new(NsV1, "AwardType"),
    :schema_element => [
      ["awardID", ["SOAP::SOAPString", XSD::QName.new(nil, "AwardID")], [0, 1]],
      ["promoID", ["SOAP::SOAPString", XSD::QName.new(nil, "PromoID")], [0, 1]],
      ["awardDiscountAmount", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "AwardDiscountAmount")], [0, 1]],
      ["awardDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "AwardDescription")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::ProductInfoType,
    :schema_type => XSD::QName.new(NsV1, "ProductInfoType"),
    :schema_element => [
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "Brand")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "Sku")], [0, 1]],
      ["itemCorpNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemCorpNumber")], [0, 1]],
      ["itemCompanyNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemCompanyNumber")], [0, 1]],
      ["itemDivisionNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemDivisionNumber")], [0, 1]],
      ["itemDepartmentNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemDepartmentNumber")], [0, 1]],
      ["itemClassNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemClassNumber")], [0, 1]],
      ["itemSubClassNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemSubClassNumber")], [0, 1]],
      ["netPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "NetPrice")], [0, 1]],
      ["priceType", ["MySoap::Interface677293416::PriceTypeEnum", XSD::QName.new(nil, "PriceType")], [0, 1]],
      ["merchandiseType", ["SOAP::SOAPInt", XSD::QName.new(nil, "MerchandiseType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceAliveRequestType"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::QualifyTypeEnum,
    :schema_type => XSD::QName.new(NsV1, "QualifyTypeEnum")
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::AppliedStatusEnum,
    :schema_type => XSD::QName.new(NsV1, "AppliedStatusEnum")
  )

  EncodedRegistry.register(
    :class => MySoap::Interface677293416::PriceTypeEnum,
    :schema_type => XSD::QName.new(NsV1, "PriceTypeEnum")
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::DiscountServiceRequestType,
    :schema_type => XSD::QName.new(NsV1, "DiscountServiceRequestType"),
    :schema_element => [
      ["requestDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestDateTime")], [0, 1]],
      ["storeID", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreID")], [0, 1]],
      ["requestType", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestType")], [0, 1]],
      ["orderRequest", ["MySoap::Interface677293416::OrderType", XSD::QName.new(nil, "orderRequest")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::DiscountServiceResponseType,
    :schema_type => XSD::QName.new(NsV1, "DiscountServiceResponseType"),
    :schema_element => [
      ["orderResponse", ["MySoap::Interface677293416::OrderType", XSD::QName.new(nil, "orderResponse")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::OrderType,
    :schema_type => XSD::QName.new(NsV1, "OrderType"),
    :schema_element => [
      ["orderID", ["SOAP::SOAPString", XSD::QName.new(nil, "OrderID")], [0, 1]],
      ["qualifyType", ["MySoap::Interface677293416::QualifyTypeEnum", XSD::QName.new(nil, "QualifyType")], [0, 1]],
      ["orderDate", ["SOAP::SOAPString", XSD::QName.new(nil, "OrderDate")], [0, 1]],
      ["channel", ["SOAP::SOAPString", XSD::QName.new(nil, "Channel")], [0, 1]],
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "Brand")], [0, 1]],
      ["region", ["SOAP::SOAPString", XSD::QName.new(nil, "Region")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(nil, "Currency")], [0, 1]],
      ["orderLineItems", ["MySoap::Interface677293416::OrderLineType[]", XSD::QName.new(nil, "OrderLineItems")], [0, nil]],
      ["promotions", ["MySoap::Interface677293416::PromotionType[]", XSD::QName.new(nil, "Promotions")], [0, nil]],
      ["tenderTypes", ["MySoap::Interface677293416::TenderInfoType[]", XSD::QName.new(nil, "TenderTypes")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::TenderInfoType,
    :schema_type => XSD::QName.new(NsV1, "TenderInfoType"),
    :schema_element => [
      ["creditCardHash", ["SOAP::SOAPString", XSD::QName.new(nil, "CreditCardHash")], [0, 1]],
      ["creditCardType", ["SOAP::SOAPString", XSD::QName.new(nil, "CreditCardType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::PromotionType,
    :schema_type => XSD::QName.new(NsV1, "PromotionType"),
    :schema_element => [
      ["promotionCode", ["SOAP::SOAPString", XSD::QName.new(nil, "PromotionCode")]],
      ["promotionID", ["SOAP::SOAPString", XSD::QName.new(nil, "PromotionID")], [0, 1]],
      ["discountReasonCode", ["SOAP::SOAPString", XSD::QName.new(nil, "DiscountReasonCode")], [0, 1]],
      ["appliedStatus", ["MySoap::Interface677293416::AppliedStatusEnum", XSD::QName.new(nil, "AppliedStatus")], [0, 1]],
      ["receiptMessages", ["MySoap::Interface677293416::ReceiptMessageType[]", XSD::QName.new(nil, "ReceiptMessages")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::ReceiptMessageType,
    :schema_type => XSD::QName.new(NsV1, "ReceiptMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::OrderLineType,
    :schema_type => XSD::QName.new(NsV1, "OrderLineType"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "SequenceNumber")]],
      ["product", ["MySoap::Interface677293416::ProductInfoType", XSD::QName.new(nil, "Product")]],
      ["quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "Quantity")]],
      ["discountPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "DiscountPrice")], [0, 1]],
      ["awards", ["MySoap::Interface677293416::AwardType[]", XSD::QName.new(nil, "Awards")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::AwardType,
    :schema_type => XSD::QName.new(NsV1, "AwardType"),
    :schema_element => [
      ["awardID", ["SOAP::SOAPString", XSD::QName.new(nil, "AwardID")], [0, 1]],
      ["promoID", ["SOAP::SOAPString", XSD::QName.new(nil, "PromoID")], [0, 1]],
      ["awardDiscountAmount", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "AwardDiscountAmount")], [0, 1]],
      ["awardDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "AwardDescription")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::ProductInfoType,
    :schema_type => XSD::QName.new(NsV1, "ProductInfoType"),
    :schema_element => [
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "Brand")], [0, 1]],
      ["sku", ["SOAP::SOAPString", XSD::QName.new(nil, "Sku")], [0, 1]],
      ["itemCorpNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemCorpNumber")], [0, 1]],
      ["itemCompanyNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemCompanyNumber")], [0, 1]],
      ["itemDivisionNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemDivisionNumber")], [0, 1]],
      ["itemDepartmentNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemDepartmentNumber")], [0, 1]],
      ["itemClassNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemClassNumber")], [0, 1]],
      ["itemSubClassNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemSubClassNumber")], [0, 1]],
      ["netPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "NetPrice")], [0, 1]],
      ["priceType", ["MySoap::Interface677293416::PriceTypeEnum", XSD::QName.new(nil, "PriceType")], [0, 1]],
      ["merchandiseType", ["SOAP::SOAPInt", XSD::QName.new(nil, "MerchandiseType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceAliveRequestType"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1_0, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::QualifyTypeEnum,
    :schema_type => XSD::QName.new(NsV1, "QualifyTypeEnum")
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::AppliedStatusEnum,
    :schema_type => XSD::QName.new(NsV1, "AppliedStatusEnum")
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::PriceTypeEnum,
    :schema_type => XSD::QName.new(NsV1, "PriceTypeEnum")
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::DiscountServiceRequestType,
    :schema_name => XSD::QName.new(NsV1, "DiscountServiceRequest"),
    :schema_element => [
      ["requestDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestDateTime")], [0, 1]],
      ["storeID", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreID")], [0, 1]],
      ["requestType", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestType")], [0, 1]],
      ["orderRequest", ["MySoap::Interface677293416::OrderType", XSD::QName.new(nil, "orderRequest")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::DiscountServiceResponseType,
    :schema_name => XSD::QName.new(NsV1, "DiscountServiceResponse"),
    :schema_element => [
      ["orderResponse", ["MySoap::Interface677293416::OrderType", XSD::QName.new(nil, "orderResponse")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::ServiceAliveRequestType,
    :schema_name => XSD::QName.new(NsV1, "ServiceAliveRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::ServiceAliveResponseType,
    :schema_name => XSD::QName.new(NsV1, "ServiceAliveResponse"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface677293416::ServiceUnavailableFaultMessageType,
    :schema_name => XSD::QName.new(NsV1, "ServiceUnavailableFaultMessage"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

end

end; end
