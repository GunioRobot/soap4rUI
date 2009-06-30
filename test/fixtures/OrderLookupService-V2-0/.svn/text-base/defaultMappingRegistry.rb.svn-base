require 'default.rb'
require 'soap/mapping'

module MySoap; module InterfaceOne

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsFaults = "http://services.gid.gap.com/orderlookup/v2/faults"
  NsV1 = "http://schemas.gid.gap.com/servicealive/v1"
  NsV2 = "http://schemas.gid.gap.com/orderlookup/requestresponse/v2"
  NsV2_0 = "http://schemas.gid.gap.com/orderlookup/v2"

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveRequestType"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::GetOrderDetailsRequestType,
    :schema_type => XSD::QName.new(NsV2, "GetOrderDetailsRequestType"),
    :schema_element => [
      ["requestor", ["MySoap::InterfaceOne::RequestorType", XSD::QName.new(NsV2, "Requestor")]],
      ["orderLookup", ["MySoap::InterfaceOne::OrderLookupType", XSD::QName.new(NsV2, "OrderLookup")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::GetOrderDetailsForNonInvoiceRequestType,
    :schema_type => XSD::QName.new(NsV2, "GetOrderDetailsForNonInvoiceRequestType"),
    :schema_element => [
      ["requestor", ["MySoap::InterfaceOne::RequestorType", XSD::QName.new(NsV2, "Requestor")]],
      ["nonInvoiceOrderLookup", ["MySoap::InterfaceOne::NonInvoiceOrderLookupType", XSD::QName.new(NsV2, "NonInvoiceOrderLookup")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::RequestorType,
    :schema_type => XSD::QName.new(NsV2, "RequestorType"),
    :schema_element => [
      ["programId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ProgramId")]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "UserId")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::OrderLookupType,
    :schema_type => XSD::QName.new(NsV2, "OrderLookupType"),
    :schema_element => [
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "TransactionId")]],
      ["storeBrandIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StoreBrandIndicator")]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StoreId")]],
      ["dateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsV2, "DateTime")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::NonInvoiceOrderLookupType,
    :schema_type => XSD::QName.new(NsV2, "NonInvoiceOrderLookupType"),
    :schema_element => [
      ["creditCardNumbers", ["SOAP::SOAPString[]", XSD::QName.new(NsV2, "CreditCardNumbers")], [1, nil]],
      ["fromDate", ["MySoap::InterfaceOne::DateHolderType", XSD::QName.new(NsV2, "FromDate")]],
      ["toDate", ["MySoap::InterfaceOne::DateHolderType", XSD::QName.new(NsV2, "ToDate")]],
      ["itemSizeCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ItemSizeCode")]],
      ["posItem", ["SOAP::SOAPString", XSD::QName.new(NsV2, "PosItem")]],
      ["storeBrandIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StoreBrandIndicator")]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StoreId")]],
      ["dateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsV2, "DateTime")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::DateHolderType,
    :schema_type => XSD::QName.new(NsV2, "DateHolderType"),
    :schema_element => [
      ["dateWithTime", "SOAP::SOAPDateTime"]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::GetOrderDetailsResponseType,
    :schema_type => XSD::QName.new(NsV2, "GetOrderDetailsResponseType"),
    :schema_element => [
      ["orderLookupResponse", ["MySoap::InterfaceOne::OrderLookupResponseType", XSD::QName.new(NsV2, "OrderLookupResponse")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::GetOrderDetailsForNonInvoiceResponseType,
    :schema_type => XSD::QName.new(NsV2, "GetOrderDetailsForNonInvoiceResponseType"),
    :schema_element => [
      ["nonInvoiceOrderLookupResponse", ["MySoap::InterfaceOne::NonInvoiceOrderLookupResponseType", XSD::QName.new(NsV2, "NonInvoiceOrderLookupResponse")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::OrderLookupResponseType,
    :schema_type => XSD::QName.new(NsV2, "OrderLookupResponseType"),
    :schema_element => [
      ["transactionTotal", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "TransactionTotal")]],
      ["taxableOrderCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "TaxableOrderCount")]],
      ["dateOfPurchase", ["SOAP::SOAPDate", XSD::QName.new(NsV2, "DateOfPurchase")]],
      ["itemCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "ItemCount")]],
      ["onlineOrderNumber", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OnlineOrderNumber")]],
      ["onlineOrderBrand", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OnlineOrderBrand")]],
      ["tenderCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "TenderCount")]],
      ["giftInvoiceIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "GiftInvoiceIndicator")]],
      ["returnDurationAllowedIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ReturnDurationAllowedIndicator")]],
      ["onlineTransactionId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OnlineTransactionId")]],
      ["items", ["MySoap::InterfaceOne::ItemType[]", XSD::QName.new(NsV2, "Items")], [1, nil]],
      ["orderTaxes", ["MySoap::InterfaceOne::OrderTaxType[]", XSD::QName.new(NsV2, "OrderTaxes")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::NonInvoiceOrderLookupResponseType,
    :schema_type => XSD::QName.new(NsV2, "NonInvoiceOrderLookupResponseType"),
    :schema_element => [
      ["totalOrderCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "TotalOrderCount")]],
      ["orderLookupResponses", ["MySoap::InterfaceOne::OrderLookupResponseType[]", XSD::QName.new(NsV2, "OrderLookupResponses")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::ItemType,
    :schema_type => XSD::QName.new(NsV2, "ItemType"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["primeLineNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "PrimeLineNumber")]],
      ["subLineNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SubLineNumber")]],
      ["posStyleNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "PosStyleNumber")]],
      ["styleColorMarketCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StyleColorMarketCode")]],
      ["sizeCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "SizeCode")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV2, "Description")]],
      ["finalPriceAfterDiscount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "FinalPriceAfterDiscount")]],
      ["currentPrice", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "CurrentPrice")]],
      ["originalRetailPrice", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "OriginalRetailPrice")]],
      ["returnItemIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ReturnItemIndicator")]],
      ["originalReturnTransactionId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OriginalReturnTransactionId")]],
      ["sequenceInOriginalTransaction", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceInOriginalTransaction")]],
      ["priceAdjustmentIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "PriceAdjustmentIndicator")]],
      ["onlineInvoiceNumber", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OnlineInvoiceNumber")]],
      ["lineItemTaxIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "LineItemTaxIndicator")]],
      ["taxCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "TaxCount")]],
      ["discountCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "DiscountCount")]],
      ["brandIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "BrandIndicator")]],
      ["posReturnTransactionId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "PosReturnTransactionId")]],
      ["itemTaxes", ["MySoap::InterfaceOne::ItemTaxType[]", XSD::QName.new(NsV2, "ItemTaxes")], [1, nil]],
      ["itemDiscounts", ["MySoap::InterfaceOne::ItemDiscountType[]", XSD::QName.new(NsV2, "ItemDiscounts")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::ItemDiscountType,
    :schema_type => XSD::QName.new(NsV2, "ItemDiscountType"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Amount")]],
      ["percentage", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Percentage")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsV2, "Type")]],
      ["reasonCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ReasonCode")]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(NsV2, "Summary")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::ItemTaxType,
    :schema_type => XSD::QName.new(NsV2, "ItemTaxType"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Amount")]],
      ["percentage", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Percentage")]],
      ["taxableAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "TaxableAmount")]],
      ["stateCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StateCode")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::OrderTaxType,
    :schema_type => XSD::QName.new(NsV2, "OrderTaxType"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["shippingAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "ShippingAmount")]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Amount")]],
      ["percentage", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Percentage")]],
      ["taxableAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "TaxableAmount")]],
      ["stateCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StateCode")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::TenderType,
    :schema_type => XSD::QName.new(NsV2, "TenderType"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["typeCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "TypeCode")]],
      ["creditAccountNumber", ["SOAP::SOAPString", XSD::QName.new(NsV2, "CreditAccountNumber")]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Amount")]],
      ["approvalCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ApprovalCode")]],
      ["creditExpiryDate", ["SOAP::SOAPDate", XSD::QName.new(NsV2, "CreditExpiryDate")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::OrderSystemFaultMessageType,
    :schema_type => XSD::QName.new(NsFaults, "OrderSystemFaultMessageType"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::OrderNotFoundFaultMessageType,
    :schema_type => XSD::QName.new(NsFaults, "OrderNotFoundFaultMessageType"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::InvalidTransactionIdFaultMessageType,
    :schema_type => XSD::QName.new(NsFaults, "InvalidTransactionIdFaultMessageType"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::MaxOrdersLimitExceedFaultMessageType,
    :schema_type => XSD::QName.new(NsFaults, "MaxOrdersLimitExceedFaultMessageType"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveRequestType"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::GetOrderDetailsRequestType,
    :schema_type => XSD::QName.new(NsV2, "GetOrderDetailsRequestType"),
    :schema_element => [
      ["requestor", ["MySoap::InterfaceOne::RequestorType", XSD::QName.new(NsV2, "Requestor")]],
      ["orderLookup", ["MySoap::InterfaceOne::OrderLookupType", XSD::QName.new(NsV2, "OrderLookup")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::GetOrderDetailsForNonInvoiceRequestType,
    :schema_type => XSD::QName.new(NsV2, "GetOrderDetailsForNonInvoiceRequestType"),
    :schema_element => [
      ["requestor", ["MySoap::InterfaceOne::RequestorType", XSD::QName.new(NsV2, "Requestor")]],
      ["nonInvoiceOrderLookup", ["MySoap::InterfaceOne::NonInvoiceOrderLookupType", XSD::QName.new(NsV2, "NonInvoiceOrderLookup")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::RequestorType,
    :schema_type => XSD::QName.new(NsV2, "RequestorType"),
    :schema_element => [
      ["programId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ProgramId")]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "UserId")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::OrderLookupType,
    :schema_type => XSD::QName.new(NsV2, "OrderLookupType"),
    :schema_element => [
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "TransactionId")]],
      ["storeBrandIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StoreBrandIndicator")]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StoreId")]],
      ["dateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsV2, "DateTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::NonInvoiceOrderLookupType,
    :schema_type => XSD::QName.new(NsV2, "NonInvoiceOrderLookupType"),
    :schema_element => [
      ["creditCardNumbers", ["SOAP::SOAPString[]", XSD::QName.new(NsV2, "CreditCardNumbers")], [1, nil]],
      ["fromDate", ["MySoap::InterfaceOne::DateHolderType", XSD::QName.new(NsV2, "FromDate")]],
      ["toDate", ["MySoap::InterfaceOne::DateHolderType", XSD::QName.new(NsV2, "ToDate")]],
      ["itemSizeCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ItemSizeCode")]],
      ["posItem", ["SOAP::SOAPString", XSD::QName.new(NsV2, "PosItem")]],
      ["storeBrandIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StoreBrandIndicator")]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StoreId")]],
      ["dateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsV2, "DateTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::DateHolderType,
    :schema_type => XSD::QName.new(NsV2, "DateHolderType"),
    :schema_element => [
      ["dateWithTime", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::GetOrderDetailsResponseType,
    :schema_type => XSD::QName.new(NsV2, "GetOrderDetailsResponseType"),
    :schema_element => [
      ["orderLookupResponse", ["MySoap::InterfaceOne::OrderLookupResponseType", XSD::QName.new(NsV2, "OrderLookupResponse")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::GetOrderDetailsForNonInvoiceResponseType,
    :schema_type => XSD::QName.new(NsV2, "GetOrderDetailsForNonInvoiceResponseType"),
    :schema_element => [
      ["nonInvoiceOrderLookupResponse", ["MySoap::InterfaceOne::NonInvoiceOrderLookupResponseType", XSD::QName.new(NsV2, "NonInvoiceOrderLookupResponse")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::OrderLookupResponseType,
    :schema_type => XSD::QName.new(NsV2, "OrderLookupResponseType"),
    :schema_element => [
      ["transactionTotal", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "TransactionTotal")]],
      ["taxableOrderCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "TaxableOrderCount")]],
      ["dateOfPurchase", ["SOAP::SOAPDate", XSD::QName.new(NsV2, "DateOfPurchase")]],
      ["itemCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "ItemCount")]],
      ["onlineOrderNumber", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OnlineOrderNumber")]],
      ["onlineOrderBrand", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OnlineOrderBrand")]],
      ["tenderCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "TenderCount")]],
      ["giftInvoiceIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "GiftInvoiceIndicator")]],
      ["returnDurationAllowedIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ReturnDurationAllowedIndicator")]],
      ["onlineTransactionId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OnlineTransactionId")]],
      ["items", ["MySoap::InterfaceOne::ItemType[]", XSD::QName.new(NsV2, "Items")], [1, nil]],
      ["orderTaxes", ["MySoap::InterfaceOne::OrderTaxType[]", XSD::QName.new(NsV2, "OrderTaxes")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::NonInvoiceOrderLookupResponseType,
    :schema_type => XSD::QName.new(NsV2, "NonInvoiceOrderLookupResponseType"),
    :schema_element => [
      ["totalOrderCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "TotalOrderCount")]],
      ["orderLookupResponses", ["MySoap::InterfaceOne::OrderLookupResponseType[]", XSD::QName.new(NsV2, "OrderLookupResponses")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ItemType,
    :schema_type => XSD::QName.new(NsV2, "ItemType"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["primeLineNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "PrimeLineNumber")]],
      ["subLineNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SubLineNumber")]],
      ["posStyleNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "PosStyleNumber")]],
      ["styleColorMarketCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StyleColorMarketCode")]],
      ["sizeCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "SizeCode")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV2, "Description")]],
      ["finalPriceAfterDiscount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "FinalPriceAfterDiscount")]],
      ["currentPrice", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "CurrentPrice")]],
      ["originalRetailPrice", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "OriginalRetailPrice")]],
      ["returnItemIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ReturnItemIndicator")]],
      ["originalReturnTransactionId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OriginalReturnTransactionId")]],
      ["sequenceInOriginalTransaction", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceInOriginalTransaction")]],
      ["priceAdjustmentIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "PriceAdjustmentIndicator")]],
      ["onlineInvoiceNumber", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OnlineInvoiceNumber")]],
      ["lineItemTaxIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "LineItemTaxIndicator")]],
      ["taxCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "TaxCount")]],
      ["discountCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "DiscountCount")]],
      ["brandIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "BrandIndicator")]],
      ["posReturnTransactionId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "PosReturnTransactionId")]],
      ["itemTaxes", ["MySoap::InterfaceOne::ItemTaxType[]", XSD::QName.new(NsV2, "ItemTaxes")], [1, nil]],
      ["itemDiscounts", ["MySoap::InterfaceOne::ItemDiscountType[]", XSD::QName.new(NsV2, "ItemDiscounts")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ItemDiscountType,
    :schema_type => XSD::QName.new(NsV2, "ItemDiscountType"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Amount")]],
      ["percentage", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Percentage")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsV2, "Type")]],
      ["reasonCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ReasonCode")]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(NsV2, "Summary")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ItemTaxType,
    :schema_type => XSD::QName.new(NsV2, "ItemTaxType"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Amount")]],
      ["percentage", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Percentage")]],
      ["taxableAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "TaxableAmount")]],
      ["stateCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StateCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::OrderTaxType,
    :schema_type => XSD::QName.new(NsV2, "OrderTaxType"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["shippingAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "ShippingAmount")]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Amount")]],
      ["percentage", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Percentage")]],
      ["taxableAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "TaxableAmount")]],
      ["stateCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StateCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::TenderType,
    :schema_type => XSD::QName.new(NsV2, "TenderType"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["typeCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "TypeCode")]],
      ["creditAccountNumber", ["SOAP::SOAPString", XSD::QName.new(NsV2, "CreditAccountNumber")]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Amount")]],
      ["approvalCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ApprovalCode")]],
      ["creditExpiryDate", ["SOAP::SOAPDate", XSD::QName.new(NsV2, "CreditExpiryDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::OrderSystemFaultMessageType,
    :schema_type => XSD::QName.new(NsFaults, "OrderSystemFaultMessageType"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::OrderNotFoundFaultMessageType,
    :schema_type => XSD::QName.new(NsFaults, "OrderNotFoundFaultMessageType"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::InvalidTransactionIdFaultMessageType,
    :schema_type => XSD::QName.new(NsFaults, "InvalidTransactionIdFaultMessageType"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::MaxOrdersLimitExceedFaultMessageType,
    :schema_type => XSD::QName.new(NsFaults, "MaxOrdersLimitExceedFaultMessageType"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::GetOrderDetailsRequestType,
    :schema_name => XSD::QName.new(NsV2_0, "GetOrderDetailsRequest"),
    :schema_element => [
      ["requestor", ["MySoap::InterfaceOne::RequestorType", XSD::QName.new(NsV2, "Requestor")]],
      ["orderLookup", ["MySoap::InterfaceOne::OrderLookupType", XSD::QName.new(NsV2, "OrderLookup")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::GetOrderDetailsResponseType,
    :schema_name => XSD::QName.new(NsV2_0, "GetOrderDetailsResponse"),
    :schema_element => [
      ["orderLookupResponse", ["MySoap::InterfaceOne::OrderLookupResponseType", XSD::QName.new(NsV2, "OrderLookupResponse")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::GetOrderDetailsForNonInvoiceRequestType,
    :schema_name => XSD::QName.new(NsV2_0, "GetOrderDetailsForNonInvoiceRequest"),
    :schema_element => [
      ["requestor", ["MySoap::InterfaceOne::RequestorType", XSD::QName.new(NsV2, "Requestor")]],
      ["nonInvoiceOrderLookup", ["MySoap::InterfaceOne::NonInvoiceOrderLookupType", XSD::QName.new(NsV2, "NonInvoiceOrderLookup")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::GetOrderDetailsForNonInvoiceResponseType,
    :schema_name => XSD::QName.new(NsV2_0, "GetOrderDetailsForNonInvoiceResponse"),
    :schema_element => [
      ["nonInvoiceOrderLookupResponse", ["MySoap::InterfaceOne::NonInvoiceOrderLookupResponseType", XSD::QName.new(NsV2, "NonInvoiceOrderLookupResponse")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveRequestType,
    :schema_name => XSD::QName.new(NsV2_0, "ServiceAliveRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveResponseType,
    :schema_name => XSD::QName.new(NsV2_0, "ServiceAliveResponse"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceUnavailableFaultMessageType,
    :schema_name => XSD::QName.new(NsV2_0, "ServiceUnavailableFaultMessage"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::OrderLookupType,
    :schema_name => XSD::QName.new(NsV2, "OrderLookup"),
    :schema_element => [
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "TransactionId")]],
      ["storeBrandIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StoreBrandIndicator")]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StoreId")]],
      ["dateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsV2, "DateTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::NonInvoiceOrderLookupType,
    :schema_name => XSD::QName.new(NsV2, "NonInvoiceOrderLookup"),
    :schema_element => [
      ["creditCardNumbers", ["SOAP::SOAPString[]", XSD::QName.new(NsV2, "CreditCardNumbers")], [1, nil]],
      ["fromDate", ["MySoap::InterfaceOne::DateHolderType", XSD::QName.new(NsV2, "FromDate")]],
      ["toDate", ["MySoap::InterfaceOne::DateHolderType", XSD::QName.new(NsV2, "ToDate")]],
      ["itemSizeCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ItemSizeCode")]],
      ["posItem", ["SOAP::SOAPString", XSD::QName.new(NsV2, "PosItem")]],
      ["storeBrandIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StoreBrandIndicator")]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StoreId")]],
      ["dateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsV2, "DateTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::DateHolderType,
    :schema_name => XSD::QName.new(NsV2, "DateHolder"),
    :schema_element => [
      ["dateWithTime", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::OrderLookupResponseType,
    :schema_name => XSD::QName.new(NsV2, "OrderLookupResponse"),
    :schema_element => [
      ["transactionTotal", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "TransactionTotal")]],
      ["taxableOrderCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "TaxableOrderCount")]],
      ["dateOfPurchase", ["SOAP::SOAPDate", XSD::QName.new(NsV2, "DateOfPurchase")]],
      ["itemCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "ItemCount")]],
      ["onlineOrderNumber", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OnlineOrderNumber")]],
      ["onlineOrderBrand", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OnlineOrderBrand")]],
      ["tenderCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "TenderCount")]],
      ["giftInvoiceIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "GiftInvoiceIndicator")]],
      ["returnDurationAllowedIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ReturnDurationAllowedIndicator")]],
      ["onlineTransactionId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OnlineTransactionId")]],
      ["items", ["MySoap::InterfaceOne::ItemType[]", XSD::QName.new(NsV2, "Items")], [1, nil]],
      ["orderTaxes", ["MySoap::InterfaceOne::OrderTaxType[]", XSD::QName.new(NsV2, "OrderTaxes")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::NonInvoiceOrderLookupResponseType,
    :schema_name => XSD::QName.new(NsV2, "NonInvoiceOrderLookupResponse"),
    :schema_element => [
      ["totalOrderCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "TotalOrderCount")]],
      ["orderLookupResponses", ["MySoap::InterfaceOne::OrderLookupResponseType[]", XSD::QName.new(NsV2, "OrderLookupResponses")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ItemType,
    :schema_name => XSD::QName.new(NsV2, "Item"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["primeLineNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "PrimeLineNumber")]],
      ["subLineNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SubLineNumber")]],
      ["posStyleNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "PosStyleNumber")]],
      ["styleColorMarketCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StyleColorMarketCode")]],
      ["sizeCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "SizeCode")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV2, "Description")]],
      ["finalPriceAfterDiscount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "FinalPriceAfterDiscount")]],
      ["currentPrice", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "CurrentPrice")]],
      ["originalRetailPrice", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "OriginalRetailPrice")]],
      ["returnItemIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ReturnItemIndicator")]],
      ["originalReturnTransactionId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OriginalReturnTransactionId")]],
      ["sequenceInOriginalTransaction", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceInOriginalTransaction")]],
      ["priceAdjustmentIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "PriceAdjustmentIndicator")]],
      ["onlineInvoiceNumber", ["SOAP::SOAPString", XSD::QName.new(NsV2, "OnlineInvoiceNumber")]],
      ["lineItemTaxIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "LineItemTaxIndicator")]],
      ["taxCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "TaxCount")]],
      ["discountCount", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "DiscountCount")]],
      ["brandIndicator", ["SOAP::SOAPString", XSD::QName.new(NsV2, "BrandIndicator")]],
      ["posReturnTransactionId", ["SOAP::SOAPString", XSD::QName.new(NsV2, "PosReturnTransactionId")]],
      ["itemTaxes", ["MySoap::InterfaceOne::ItemTaxType[]", XSD::QName.new(NsV2, "ItemTaxes")], [1, nil]],
      ["itemDiscounts", ["MySoap::InterfaceOne::ItemDiscountType[]", XSD::QName.new(NsV2, "ItemDiscounts")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ItemDiscountType,
    :schema_name => XSD::QName.new(NsV2, "ItemDiscount"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Amount")]],
      ["percentage", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Percentage")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsV2, "Type")]],
      ["reasonCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ReasonCode")]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(NsV2, "Summary")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ItemTaxType,
    :schema_name => XSD::QName.new(NsV2, "ItemTax"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Amount")]],
      ["percentage", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Percentage")]],
      ["taxableAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "TaxableAmount")]],
      ["stateCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StateCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::OrderTaxType,
    :schema_name => XSD::QName.new(NsV2, "OrderTax"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["shippingAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "ShippingAmount")]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Amount")]],
      ["percentage", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Percentage")]],
      ["taxableAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "TaxableAmount")]],
      ["stateCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "StateCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::TenderType,
    :schema_name => XSD::QName.new(NsV2, "Tender"),
    :schema_element => [
      ["sequenceNumber", ["SOAP::SOAPInteger", XSD::QName.new(NsV2, "SequenceNumber")]],
      ["typeCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "TypeCode")]],
      ["creditAccountNumber", ["SOAP::SOAPString", XSD::QName.new(NsV2, "CreditAccountNumber")]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(NsV2, "Amount")]],
      ["approvalCode", ["SOAP::SOAPString", XSD::QName.new(NsV2, "ApprovalCode")]],
      ["creditExpiryDate", ["SOAP::SOAPDate", XSD::QName.new(NsV2, "CreditExpiryDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::OrderSystemFaultMessageType,
    :schema_name => XSD::QName.new(NsFaults, "OrderSystemFaultMessage"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::OrderNotFoundFaultMessageType,
    :schema_name => XSD::QName.new(NsFaults, "OrderNotFoundFaultMessage"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::InvalidTransactionIdFaultMessageType,
    :schema_name => XSD::QName.new(NsFaults, "InvalidTransactionIdFaultMessage"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::MaxOrdersLimitExceedFaultMessageType,
    :schema_name => XSD::QName.new(NsFaults, "MaxOrdersLimitExceedFaultMessage"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )
end

end; end
