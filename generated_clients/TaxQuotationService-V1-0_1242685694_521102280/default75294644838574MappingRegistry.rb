require 'default75294644838574.rb'
require 'soap/mapping'

module MySoap; module Interface893988089

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV1 = "http://schemas.gid.gap.com/taxquotation/v1"
  NsV1_0 = "http://schemas.gid.gap.com/address/v1"
  NsV1_1 = "http://schemas.gid.gap.com/servicealive/v1"

  EncodedRegistry.register(
    :class => MySoap::Interface893988089::LineItemType,
    :schema_type => XSD::QName.new(NsV1, "LineItemType"),
    :schema_element => [
      ["userDefinedId", ["SOAP::SOAPString", XSD::QName.new(nil, "UserDefinedId")]],
      ["primaryCompanyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "PrimaryCompanyCode")], [0, 1]],
      ["secondaryCompanyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "SecondaryCompanyCode")], [0, 1]],
      ["skuNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuNumber")]],
      ["quantity", ["SOAP::SOAPInteger", XSD::QName.new(nil, "Quantity")]],
      ["netPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "NetPrice")]],
      ["proratedShippingCharge", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "ProratedShippingCharge")]],
      ["taxCode", ["SOAP::SOAPString", XSD::QName.new(nil, "TaxCode")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface893988089::LineItemsType,
    :schema_type => XSD::QName.new(NsV1, "LineItemsType"),
    :schema_element => [
      ["lineItem", ["MySoap::Interface893988089::LineItemType[]", XSD::QName.new(nil, "LineItem")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface893988089::OrderHeaderType,
    :schema_type => XSD::QName.new(NsV1, "OrderHeaderType"),
    :schema_element => [
      ["orderDate", ["SOAP::SOAPDate", XSD::QName.new(nil, "OrderDate")], [0, 1]],
      ["primaryCompanyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "PrimaryCompanyCode")]],
      ["secondaryCompanyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "SecondaryCompanyCode")]],
      ["originAddress", ["MySoap::Interface893988089::AddressType", XSD::QName.new(nil, "OriginAddress")]],
      ["destinationAddress", ["MySoap::Interface893988089::AddressType", XSD::QName.new(nil, "DestinationAddress")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface893988089::TaxQuotationRequestType,
    :schema_type => XSD::QName.new(NsV1, "TaxQuotationRequestType"),
    :schema_element => [
      ["orderHeader", ["MySoap::Interface893988089::OrderHeaderType", XSD::QName.new(nil, "OrderHeader")]],
      ["lineItems", ["MySoap::Interface893988089::LineItemsType", XSD::QName.new(nil, "LineItems")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface893988089::JurisdictionTaxQuoteType,
    :schema_type => XSD::QName.new(NsV1, "JurisdictionTaxQuoteType"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["level", ["SOAP::SOAPString", XSD::QName.new(nil, "Level")]],
      ["taxAmount", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "TaxAmount")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface893988089::JurisdictionTaxQuotesType,
    :schema_type => XSD::QName.new(NsV1, "JurisdictionTaxQuotesType"),
    :schema_element => [
      ["jurisdictionTaxQuote", ["MySoap::Interface893988089::JurisdictionTaxQuoteType[]", XSD::QName.new(nil, "JurisdictionTaxQuote")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface893988089::LineItemTaxQuoteType,
    :schema_type => XSD::QName.new(NsV1, "LineItemTaxQuoteType"),
    :schema_element => [
      ["lineItem", ["MySoap::Interface893988089::LineItemType", XSD::QName.new(nil, "LineItem")]],
      ["taxCharged", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "TaxCharged")]],
      ["taxOnProratedShippingCharge", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "TaxOnProratedShippingCharge")]],
      ["taxRate", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "TaxRate")]],
      ["jurisdictionTaxQuotes", ["MySoap::Interface893988089::JurisdictionTaxQuotesType", XSD::QName.new(nil, "JurisdictionTaxQuotes")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface893988089::LineItemTaxQuotesType,
    :schema_type => XSD::QName.new(NsV1, "LineItemTaxQuotesType"),
    :schema_element => [
      ["lineItemTaxQuote", ["MySoap::Interface893988089::LineItemTaxQuoteType[]", XSD::QName.new(nil, "LineItemTaxQuote")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface893988089::TaxQuotationResponseType,
    :schema_type => XSD::QName.new(NsV1, "TaxQuotationResponseType"),
    :schema_element => [
      ["orderHeader", ["MySoap::Interface893988089::OrderHeaderType", XSD::QName.new(nil, "OrderHeader")]],
      ["lineItemTaxQuotes", ["MySoap::Interface893988089::LineItemTaxQuotesType", XSD::QName.new(nil, "LineItemTaxQuotes")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface893988089::AddressType,
    :schema_type => XSD::QName.new(NsV1_0, "AddressType"),
    :schema_element => [
      ["addressLine1", ["SOAP::SOAPString", XSD::QName.new(nil, "AddressLine1")], [0, 1]],
      ["addressLine2", ["SOAP::SOAPString", XSD::QName.new(nil, "AddressLine2")], [0, 1]],
      ["addressLine3", ["SOAP::SOAPString", XSD::QName.new(nil, "AddressLine3")], [0, 1]],
      ["cityName", ["SOAP::SOAPString", XSD::QName.new(nil, "CityName")], [0, 1]],
      ["countyName", ["SOAP::SOAPString", XSD::QName.new(nil, "CountyName")], [0, 1]],
      ["stateProvinceCode", ["SOAP::SOAPString", XSD::QName.new(nil, "StateProvinceCode")], [0, 1]],
      ["stateProvinceName", ["SOAP::SOAPString", XSD::QName.new(nil, "StateProvinceName")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "PostalCode")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(nil, "CountryCode")], [0, 1]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(nil, "CountryName")], [0, 1]],
      ["verificationStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "VerificationStatus")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface893988089::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1_1, "ServiceAliveRequestType"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => MySoap::Interface893988089::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1_1, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface893988089::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1_1, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::LineItemType,
    :schema_type => XSD::QName.new(NsV1, "LineItemType"),
    :schema_element => [
      ["userDefinedId", ["SOAP::SOAPString", XSD::QName.new(nil, "UserDefinedId")]],
      ["primaryCompanyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "PrimaryCompanyCode")], [0, 1]],
      ["secondaryCompanyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "SecondaryCompanyCode")], [0, 1]],
      ["skuNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuNumber")]],
      ["quantity", ["SOAP::SOAPInteger", XSD::QName.new(nil, "Quantity")]],
      ["netPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "NetPrice")]],
      ["proratedShippingCharge", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "ProratedShippingCharge")]],
      ["taxCode", ["SOAP::SOAPString", XSD::QName.new(nil, "TaxCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::LineItemsType,
    :schema_type => XSD::QName.new(NsV1, "LineItemsType"),
    :schema_element => [
      ["lineItem", ["MySoap::Interface893988089::LineItemType[]", XSD::QName.new(nil, "LineItem")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::OrderHeaderType,
    :schema_type => XSD::QName.new(NsV1, "OrderHeaderType"),
    :schema_element => [
      ["orderDate", ["SOAP::SOAPDate", XSD::QName.new(nil, "OrderDate")], [0, 1]],
      ["primaryCompanyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "PrimaryCompanyCode")]],
      ["secondaryCompanyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "SecondaryCompanyCode")]],
      ["originAddress", ["MySoap::Interface893988089::AddressType", XSD::QName.new(nil, "OriginAddress")]],
      ["destinationAddress", ["MySoap::Interface893988089::AddressType", XSD::QName.new(nil, "DestinationAddress")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::TaxQuotationRequestType,
    :schema_type => XSD::QName.new(NsV1, "TaxQuotationRequestType"),
    :schema_element => [
      ["orderHeader", ["MySoap::Interface893988089::OrderHeaderType", XSD::QName.new(nil, "OrderHeader")]],
      ["lineItems", ["MySoap::Interface893988089::LineItemsType", XSD::QName.new(nil, "LineItems")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::JurisdictionTaxQuoteType,
    :schema_type => XSD::QName.new(NsV1, "JurisdictionTaxQuoteType"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["level", ["SOAP::SOAPString", XSD::QName.new(nil, "Level")]],
      ["taxAmount", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "TaxAmount")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::JurisdictionTaxQuotesType,
    :schema_type => XSD::QName.new(NsV1, "JurisdictionTaxQuotesType"),
    :schema_element => [
      ["jurisdictionTaxQuote", ["MySoap::Interface893988089::JurisdictionTaxQuoteType[]", XSD::QName.new(nil, "JurisdictionTaxQuote")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::LineItemTaxQuoteType,
    :schema_type => XSD::QName.new(NsV1, "LineItemTaxQuoteType"),
    :schema_element => [
      ["lineItem", ["MySoap::Interface893988089::LineItemType", XSD::QName.new(nil, "LineItem")]],
      ["taxCharged", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "TaxCharged")]],
      ["taxOnProratedShippingCharge", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "TaxOnProratedShippingCharge")]],
      ["taxRate", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "TaxRate")]],
      ["jurisdictionTaxQuotes", ["MySoap::Interface893988089::JurisdictionTaxQuotesType", XSD::QName.new(nil, "JurisdictionTaxQuotes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::LineItemTaxQuotesType,
    :schema_type => XSD::QName.new(NsV1, "LineItemTaxQuotesType"),
    :schema_element => [
      ["lineItemTaxQuote", ["MySoap::Interface893988089::LineItemTaxQuoteType[]", XSD::QName.new(nil, "LineItemTaxQuote")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::TaxQuotationResponseType,
    :schema_type => XSD::QName.new(NsV1, "TaxQuotationResponseType"),
    :schema_element => [
      ["orderHeader", ["MySoap::Interface893988089::OrderHeaderType", XSD::QName.new(nil, "OrderHeader")]],
      ["lineItemTaxQuotes", ["MySoap::Interface893988089::LineItemTaxQuotesType", XSD::QName.new(nil, "LineItemTaxQuotes")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::AddressType,
    :schema_type => XSD::QName.new(NsV1_0, "AddressType"),
    :schema_element => [
      ["addressLine1", ["SOAP::SOAPString", XSD::QName.new(nil, "AddressLine1")], [0, 1]],
      ["addressLine2", ["SOAP::SOAPString", XSD::QName.new(nil, "AddressLine2")], [0, 1]],
      ["addressLine3", ["SOAP::SOAPString", XSD::QName.new(nil, "AddressLine3")], [0, 1]],
      ["cityName", ["SOAP::SOAPString", XSD::QName.new(nil, "CityName")], [0, 1]],
      ["countyName", ["SOAP::SOAPString", XSD::QName.new(nil, "CountyName")], [0, 1]],
      ["stateProvinceCode", ["SOAP::SOAPString", XSD::QName.new(nil, "StateProvinceCode")], [0, 1]],
      ["stateProvinceName", ["SOAP::SOAPString", XSD::QName.new(nil, "StateProvinceName")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "PostalCode")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(nil, "CountryCode")], [0, 1]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(nil, "CountryName")], [0, 1]],
      ["verificationStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "VerificationStatus")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1_1, "ServiceAliveRequestType"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1_1, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1_1, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::TaxQuotationRequestType,
    :schema_name => XSD::QName.new(NsV1, "TaxQuotationRequest"),
    :schema_element => [
      ["orderHeader", ["MySoap::Interface893988089::OrderHeaderType", XSD::QName.new(nil, "OrderHeader")]],
      ["lineItems", ["MySoap::Interface893988089::LineItemsType", XSD::QName.new(nil, "LineItems")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::TaxQuotationResponseType,
    :schema_name => XSD::QName.new(NsV1, "TaxQuotationResponse"),
    :schema_element => [
      ["orderHeader", ["MySoap::Interface893988089::OrderHeaderType", XSD::QName.new(nil, "OrderHeader")]],
      ["lineItemTaxQuotes", ["MySoap::Interface893988089::LineItemTaxQuotesType", XSD::QName.new(nil, "LineItemTaxQuotes")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::ServiceAliveRequestType,
    :schema_name => XSD::QName.new(NsV1, "ServiceAliveRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::ServiceAliveResponseType,
    :schema_name => XSD::QName.new(NsV1, "ServiceAliveResponse"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface893988089::ServiceUnavailableFaultMessageType,
    :schema_name => XSD::QName.new(NsV1, "ServiceUnavailableFaultMessage"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

end

end; end
