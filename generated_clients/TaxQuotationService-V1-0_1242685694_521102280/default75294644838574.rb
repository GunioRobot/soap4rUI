require 'xsd/qname'

module MySoap; module Interface893988089


# {http://schemas.gid.gap.com/taxquotation/v1}LineItemType
#   userDefinedId - SOAP::SOAPString
#   primaryCompanyCode - SOAP::SOAPString
#   secondaryCompanyCode - SOAP::SOAPString
#   skuNumber - SOAP::SOAPString
#   quantity - SOAP::SOAPInteger
#   netPrice - SOAP::SOAPDecimal
#   proratedShippingCharge - SOAP::SOAPDecimal
#   taxCode - SOAP::SOAPString
class LineItemType
  attr_accessor :userDefinedId
  attr_accessor :primaryCompanyCode
  attr_accessor :secondaryCompanyCode
  attr_accessor :skuNumber
  attr_accessor :quantity
  attr_accessor :netPrice
  attr_accessor :proratedShippingCharge
  attr_accessor :taxCode

  def initialize(userDefinedId = nil, primaryCompanyCode = nil, secondaryCompanyCode = nil, skuNumber = nil, quantity = nil, netPrice = nil, proratedShippingCharge = nil, taxCode = nil)
    @userDefinedId = userDefinedId
    @primaryCompanyCode = primaryCompanyCode
    @secondaryCompanyCode = secondaryCompanyCode
    @skuNumber = skuNumber
    @quantity = quantity
    @netPrice = netPrice
    @proratedShippingCharge = proratedShippingCharge
    @taxCode = taxCode
  end
end

# {http://schemas.gid.gap.com/taxquotation/v1}LineItemsType
class LineItemsType < ::Array
end

# {http://schemas.gid.gap.com/taxquotation/v1}OrderHeaderType
#   orderDate - SOAP::SOAPDate
#   primaryCompanyCode - SOAP::SOAPString
#   secondaryCompanyCode - SOAP::SOAPString
#   originAddress - MySoap::Interface893988089::AddressType
#   destinationAddress - MySoap::Interface893988089::AddressType
class OrderHeaderType
  attr_accessor :orderDate
  attr_accessor :primaryCompanyCode
  attr_accessor :secondaryCompanyCode
  attr_accessor :originAddress
  attr_accessor :destinationAddress

  def initialize(orderDate = nil, primaryCompanyCode = nil, secondaryCompanyCode = nil, originAddress = nil, destinationAddress = nil)
    @orderDate = orderDate
    @primaryCompanyCode = primaryCompanyCode
    @secondaryCompanyCode = secondaryCompanyCode
    @originAddress = originAddress
    @destinationAddress = destinationAddress
  end
end

# {http://schemas.gid.gap.com/taxquotation/v1}TaxQuotationRequestType
#   orderHeader - MySoap::Interface893988089::OrderHeaderType
#   lineItems - MySoap::Interface893988089::LineItemsType
class TaxQuotationRequestType
  attr_accessor :orderHeader
  attr_accessor :lineItems

  def initialize(orderHeader = nil, lineItems = nil)
    @orderHeader = orderHeader
    @lineItems = lineItems
  end
end

# {http://schemas.gid.gap.com/taxquotation/v1}JurisdictionTaxQuoteType
#   name - SOAP::SOAPString
#   level - SOAP::SOAPString
#   taxAmount - SOAP::SOAPDecimal
class JurisdictionTaxQuoteType
  attr_accessor :name
  attr_accessor :level
  attr_accessor :taxAmount

  def initialize(name = nil, level = nil, taxAmount = nil)
    @name = name
    @level = level
    @taxAmount = taxAmount
  end
end

# {http://schemas.gid.gap.com/taxquotation/v1}JurisdictionTaxQuotesType
class JurisdictionTaxQuotesType < ::Array
end

# {http://schemas.gid.gap.com/taxquotation/v1}LineItemTaxQuoteType
#   lineItem - MySoap::Interface893988089::LineItemType
#   taxCharged - SOAP::SOAPDecimal
#   taxOnProratedShippingCharge - SOAP::SOAPDecimal
#   taxRate - SOAP::SOAPDecimal
#   jurisdictionTaxQuotes - MySoap::Interface893988089::JurisdictionTaxQuotesType
class LineItemTaxQuoteType
  attr_accessor :lineItem
  attr_accessor :taxCharged
  attr_accessor :taxOnProratedShippingCharge
  attr_accessor :taxRate
  attr_accessor :jurisdictionTaxQuotes

  def initialize(lineItem = nil, taxCharged = nil, taxOnProratedShippingCharge = nil, taxRate = nil, jurisdictionTaxQuotes = nil)
    @lineItem = lineItem
    @taxCharged = taxCharged
    @taxOnProratedShippingCharge = taxOnProratedShippingCharge
    @taxRate = taxRate
    @jurisdictionTaxQuotes = jurisdictionTaxQuotes
  end
end

# {http://schemas.gid.gap.com/taxquotation/v1}LineItemTaxQuotesType
class LineItemTaxQuotesType < ::Array
end

# {http://schemas.gid.gap.com/taxquotation/v1}TaxQuotationResponseType
#   orderHeader - MySoap::Interface893988089::OrderHeaderType
#   lineItemTaxQuotes - MySoap::Interface893988089::LineItemTaxQuotesType
class TaxQuotationResponseType
  attr_accessor :orderHeader
  attr_accessor :lineItemTaxQuotes

  def initialize(orderHeader = nil, lineItemTaxQuotes = nil)
    @orderHeader = orderHeader
    @lineItemTaxQuotes = lineItemTaxQuotes
  end
end

# {http://schemas.gid.gap.com/address/v1}AddressType
#   addressLine1 - SOAP::SOAPString
#   addressLine2 - SOAP::SOAPString
#   addressLine3 - SOAP::SOAPString
#   cityName - SOAP::SOAPString
#   countyName - SOAP::SOAPString
#   stateProvinceCode - SOAP::SOAPString
#   stateProvinceName - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   countryName - SOAP::SOAPString
#   verificationStatus - SOAP::SOAPString
class AddressType
  attr_accessor :addressLine1
  attr_accessor :addressLine2
  attr_accessor :addressLine3
  attr_accessor :cityName
  attr_accessor :countyName
  attr_accessor :stateProvinceCode
  attr_accessor :stateProvinceName
  attr_accessor :postalCode
  attr_accessor :countryCode
  attr_accessor :countryName
  attr_accessor :verificationStatus

  def initialize(addressLine1 = nil, addressLine2 = nil, addressLine3 = nil, cityName = nil, countyName = nil, stateProvinceCode = nil, stateProvinceName = nil, postalCode = nil, countryCode = nil, countryName = nil, verificationStatus = nil)
    @addressLine1 = addressLine1
    @addressLine2 = addressLine2
    @addressLine3 = addressLine3
    @cityName = cityName
    @countyName = countyName
    @stateProvinceCode = stateProvinceCode
    @stateProvinceName = stateProvinceName
    @postalCode = postalCode
    @countryCode = countryCode
    @countryName = countryName
    @verificationStatus = verificationStatus
  end
end

# {http://schemas.gid.gap.com/servicealive/v1}ServiceAliveRequestType
class ServiceAliveRequestType
  def initialize
  end
end

# {http://schemas.gid.gap.com/servicealive/v1}ServiceAliveResponseType
#   serviceName - SOAP::SOAPString
#   serviceVersion - SOAP::SOAPString
#   isServiceAlive - SOAP::SOAPBoolean
class ServiceAliveResponseType
  attr_accessor :serviceName
  attr_accessor :serviceVersion
  attr_accessor :isServiceAlive

  def initialize(serviceName = nil, serviceVersion = nil, isServiceAlive = nil)
    @serviceName = serviceName
    @serviceVersion = serviceVersion
    @isServiceAlive = isServiceAlive
  end
end

# {http://schemas.gid.gap.com/servicealive/v1}ServiceUnavailableFaultMessageType
#   message - SOAP::SOAPString
class ServiceUnavailableFaultMessageType
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end


end; end
