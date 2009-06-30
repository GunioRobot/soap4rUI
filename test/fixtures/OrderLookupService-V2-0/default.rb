require 'xsd/qname'

module MySoap; module InterfaceOne


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

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}GetOrderDetailsRequestType
#   requestor - MySoap::InterfaceOne::RequestorType
#   orderLookup - MySoap::InterfaceOne::OrderLookupType
class GetOrderDetailsRequestType
  attr_accessor :requestor
  attr_accessor :orderLookup

  def initialize(requestor = nil, orderLookup = nil)
    @requestor = requestor
    @orderLookup = orderLookup
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}GetOrderDetailsForNonInvoiceRequestType
#   requestor - MySoap::InterfaceOne::RequestorType
#   nonInvoiceOrderLookup - MySoap::InterfaceOne::NonInvoiceOrderLookupType
class GetOrderDetailsForNonInvoiceRequestType
  attr_accessor :requestor
  attr_accessor :nonInvoiceOrderLookup

  def initialize(requestor = nil, nonInvoiceOrderLookup = nil)
    @requestor = requestor
    @nonInvoiceOrderLookup = nonInvoiceOrderLookup
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}RequestorType
#   programId - SOAP::SOAPString
#   userId - SOAP::SOAPString
class RequestorType
  attr_accessor :programId
  attr_accessor :userId

  def initialize(programId = nil, userId = nil)
    @programId = programId
    @userId = userId
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}OrderLookupType
#   transactionId - SOAP::SOAPString
#   storeBrandIndicator - SOAP::SOAPString
#   storeId - SOAP::SOAPString
#   dateTime - SOAP::SOAPDateTime
class OrderLookupType
  attr_accessor :transactionId
  attr_accessor :storeBrandIndicator
  attr_accessor :storeId
  attr_accessor :dateTime

  def initialize(transactionId = nil, storeBrandIndicator = nil, storeId = nil, dateTime = nil)
    @transactionId = transactionId
    @storeBrandIndicator = storeBrandIndicator
    @storeId = storeId
    @dateTime = dateTime
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}NonInvoiceOrderLookupType
#   creditCardNumbers - SOAP::SOAPString
#   fromDate - MySoap::InterfaceOne::DateHolderType
#   toDate - MySoap::InterfaceOne::DateHolderType
#   itemSizeCode - SOAP::SOAPString
#   posItem - SOAP::SOAPString
#   storeBrandIndicator - SOAP::SOAPString
#   storeId - SOAP::SOAPString
#   dateTime - SOAP::SOAPDateTime
class NonInvoiceOrderLookupType
  attr_accessor :creditCardNumbers
  attr_accessor :fromDate
  attr_accessor :toDate
  attr_accessor :itemSizeCode
  attr_accessor :posItem
  attr_accessor :storeBrandIndicator
  attr_accessor :storeId
  attr_accessor :dateTime

  def initialize(creditCardNumbers = [], fromDate = nil, toDate = nil, itemSizeCode = nil, posItem = nil, storeBrandIndicator = nil, storeId = nil, dateTime = nil)
    @creditCardNumbers = creditCardNumbers
    @fromDate = fromDate
    @toDate = toDate
    @itemSizeCode = itemSizeCode
    @posItem = posItem
    @storeBrandIndicator = storeBrandIndicator
    @storeId = storeId
    @dateTime = dateTime
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}DateHolderType
#   dateWithTime - SOAP::SOAPDateTime
class DateHolderType
  attr_accessor :dateWithTime

  def initialize(dateWithTime = nil)
    @dateWithTime = dateWithTime
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}GetOrderDetailsResponseType
#   orderLookupResponse - MySoap::InterfaceOne::OrderLookupResponseType
class GetOrderDetailsResponseType
  attr_accessor :orderLookupResponse

  def initialize(orderLookupResponse = nil)
    @orderLookupResponse = orderLookupResponse
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}GetOrderDetailsForNonInvoiceResponseType
#   nonInvoiceOrderLookupResponse - MySoap::InterfaceOne::NonInvoiceOrderLookupResponseType
class GetOrderDetailsForNonInvoiceResponseType
  attr_accessor :nonInvoiceOrderLookupResponse

  def initialize(nonInvoiceOrderLookupResponse = nil)
    @nonInvoiceOrderLookupResponse = nonInvoiceOrderLookupResponse
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}OrderLookupResponseType
#   transactionTotal - SOAP::SOAPDecimal
#   taxableOrderCount - SOAP::SOAPInteger
#   dateOfPurchase - SOAP::SOAPDate
#   itemCount - SOAP::SOAPInteger
#   onlineOrderNumber - SOAP::SOAPString
#   onlineOrderBrand - SOAP::SOAPString
#   tenderCount - SOAP::SOAPInteger
#   giftInvoiceIndicator - SOAP::SOAPString
#   returnDurationAllowedIndicator - SOAP::SOAPString
#   onlineTransactionId - SOAP::SOAPString
#   items - MySoap::InterfaceOne::ItemType
#   orderTaxes - MySoap::InterfaceOne::OrderTaxType
class OrderLookupResponseType
  attr_accessor :transactionTotal
  attr_accessor :taxableOrderCount
  attr_accessor :dateOfPurchase
  attr_accessor :itemCount
  attr_accessor :onlineOrderNumber
  attr_accessor :onlineOrderBrand
  attr_accessor :tenderCount
  attr_accessor :giftInvoiceIndicator
  attr_accessor :returnDurationAllowedIndicator
  attr_accessor :onlineTransactionId
  attr_accessor :items
  attr_accessor :orderTaxes

  def initialize(transactionTotal = nil, taxableOrderCount = nil, dateOfPurchase = nil, itemCount = nil, onlineOrderNumber = nil, onlineOrderBrand = nil, tenderCount = nil, giftInvoiceIndicator = nil, returnDurationAllowedIndicator = nil, onlineTransactionId = nil, items = [], orderTaxes = [])
    @transactionTotal = transactionTotal
    @taxableOrderCount = taxableOrderCount
    @dateOfPurchase = dateOfPurchase
    @itemCount = itemCount
    @onlineOrderNumber = onlineOrderNumber
    @onlineOrderBrand = onlineOrderBrand
    @tenderCount = tenderCount
    @giftInvoiceIndicator = giftInvoiceIndicator
    @returnDurationAllowedIndicator = returnDurationAllowedIndicator
    @onlineTransactionId = onlineTransactionId
    @items = items
    @orderTaxes = orderTaxes
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}NonInvoiceOrderLookupResponseType
#   totalOrderCount - SOAP::SOAPInteger
#   orderLookupResponses - MySoap::InterfaceOne::OrderLookupResponseType
class NonInvoiceOrderLookupResponseType
  attr_accessor :totalOrderCount
  attr_accessor :orderLookupResponses

  def initialize(totalOrderCount = nil, orderLookupResponses = [])
    @totalOrderCount = totalOrderCount
    @orderLookupResponses = orderLookupResponses
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}ItemType
#   sequenceNumber - SOAP::SOAPInteger
#   primeLineNumber - SOAP::SOAPInteger
#   subLineNumber - SOAP::SOAPInteger
#   posStyleNumber - SOAP::SOAPInteger
#   styleColorMarketCode - SOAP::SOAPString
#   sizeCode - SOAP::SOAPString
#   description - SOAP::SOAPString
#   finalPriceAfterDiscount - SOAP::SOAPDecimal
#   currentPrice - SOAP::SOAPDecimal
#   originalRetailPrice - SOAP::SOAPDecimal
#   returnItemIndicator - SOAP::SOAPString
#   originalReturnTransactionId - SOAP::SOAPString
#   sequenceInOriginalTransaction - SOAP::SOAPInteger
#   priceAdjustmentIndicator - SOAP::SOAPString
#   onlineInvoiceNumber - SOAP::SOAPString
#   lineItemTaxIndicator - SOAP::SOAPString
#   taxCount - SOAP::SOAPInteger
#   discountCount - SOAP::SOAPInteger
#   brandIndicator - SOAP::SOAPString
#   posReturnTransactionId - SOAP::SOAPString
#   itemTaxes - MySoap::InterfaceOne::ItemTaxType
#   itemDiscounts - MySoap::InterfaceOne::ItemDiscountType
class ItemType
  attr_accessor :sequenceNumber
  attr_accessor :primeLineNumber
  attr_accessor :subLineNumber
  attr_accessor :posStyleNumber
  attr_accessor :styleColorMarketCode
  attr_accessor :sizeCode
  attr_accessor :description
  attr_accessor :finalPriceAfterDiscount
  attr_accessor :currentPrice
  attr_accessor :originalRetailPrice
  attr_accessor :returnItemIndicator
  attr_accessor :originalReturnTransactionId
  attr_accessor :sequenceInOriginalTransaction
  attr_accessor :priceAdjustmentIndicator
  attr_accessor :onlineInvoiceNumber
  attr_accessor :lineItemTaxIndicator
  attr_accessor :taxCount
  attr_accessor :discountCount
  attr_accessor :brandIndicator
  attr_accessor :posReturnTransactionId
  attr_accessor :itemTaxes
  attr_accessor :itemDiscounts

  def initialize(sequenceNumber = nil, primeLineNumber = nil, subLineNumber = nil, posStyleNumber = nil, styleColorMarketCode = nil, sizeCode = nil, description = nil, finalPriceAfterDiscount = nil, currentPrice = nil, originalRetailPrice = nil, returnItemIndicator = nil, originalReturnTransactionId = nil, sequenceInOriginalTransaction = nil, priceAdjustmentIndicator = nil, onlineInvoiceNumber = nil, lineItemTaxIndicator = nil, taxCount = nil, discountCount = nil, brandIndicator = nil, posReturnTransactionId = nil, itemTaxes = [], itemDiscounts = [])
    @sequenceNumber = sequenceNumber
    @primeLineNumber = primeLineNumber
    @subLineNumber = subLineNumber
    @posStyleNumber = posStyleNumber
    @styleColorMarketCode = styleColorMarketCode
    @sizeCode = sizeCode
    @description = description
    @finalPriceAfterDiscount = finalPriceAfterDiscount
    @currentPrice = currentPrice
    @originalRetailPrice = originalRetailPrice
    @returnItemIndicator = returnItemIndicator
    @originalReturnTransactionId = originalReturnTransactionId
    @sequenceInOriginalTransaction = sequenceInOriginalTransaction
    @priceAdjustmentIndicator = priceAdjustmentIndicator
    @onlineInvoiceNumber = onlineInvoiceNumber
    @lineItemTaxIndicator = lineItemTaxIndicator
    @taxCount = taxCount
    @discountCount = discountCount
    @brandIndicator = brandIndicator
    @posReturnTransactionId = posReturnTransactionId
    @itemTaxes = itemTaxes
    @itemDiscounts = itemDiscounts
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}ItemDiscountType
#   sequenceNumber - SOAP::SOAPInteger
#   amount - SOAP::SOAPDecimal
#   percentage - SOAP::SOAPDecimal
#   type - SOAP::SOAPString
#   reasonCode - SOAP::SOAPString
#   summary - SOAP::SOAPString
class ItemDiscountType
  attr_accessor :sequenceNumber
  attr_accessor :amount
  attr_accessor :percentage
  attr_accessor :type
  attr_accessor :reasonCode
  attr_accessor :summary

  def initialize(sequenceNumber = nil, amount = nil, percentage = nil, type = nil, reasonCode = nil, summary = nil)
    @sequenceNumber = sequenceNumber
    @amount = amount
    @percentage = percentage
    @type = type
    @reasonCode = reasonCode
    @summary = summary
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}ItemTaxType
#   sequenceNumber - SOAP::SOAPInteger
#   amount - SOAP::SOAPDecimal
#   percentage - SOAP::SOAPDecimal
#   taxableAmount - SOAP::SOAPDecimal
#   stateCode - SOAP::SOAPString
class ItemTaxType
  attr_accessor :sequenceNumber
  attr_accessor :amount
  attr_accessor :percentage
  attr_accessor :taxableAmount
  attr_accessor :stateCode

  def initialize(sequenceNumber = nil, amount = nil, percentage = nil, taxableAmount = nil, stateCode = nil)
    @sequenceNumber = sequenceNumber
    @amount = amount
    @percentage = percentage
    @taxableAmount = taxableAmount
    @stateCode = stateCode
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}OrderTaxType
#   sequenceNumber - SOAP::SOAPInteger
#   shippingAmount - SOAP::SOAPDecimal
#   amount - SOAP::SOAPDecimal
#   percentage - SOAP::SOAPDecimal
#   taxableAmount - SOAP::SOAPDecimal
#   stateCode - SOAP::SOAPString
class OrderTaxType
  attr_accessor :sequenceNumber
  attr_accessor :shippingAmount
  attr_accessor :amount
  attr_accessor :percentage
  attr_accessor :taxableAmount
  attr_accessor :stateCode

  def initialize(sequenceNumber = nil, shippingAmount = nil, amount = nil, percentage = nil, taxableAmount = nil, stateCode = nil)
    @sequenceNumber = sequenceNumber
    @shippingAmount = shippingAmount
    @amount = amount
    @percentage = percentage
    @taxableAmount = taxableAmount
    @stateCode = stateCode
  end
end

# {http://schemas.gid.gap.com/orderlookup/requestresponse/v2}TenderType
#   sequenceNumber - SOAP::SOAPInteger
#   typeCode - SOAP::SOAPString
#   creditAccountNumber - SOAP::SOAPString
#   amount - SOAP::SOAPDecimal
#   approvalCode - SOAP::SOAPString
#   creditExpiryDate - SOAP::SOAPDate
class TenderType
  attr_accessor :sequenceNumber
  attr_accessor :typeCode
  attr_accessor :creditAccountNumber
  attr_accessor :amount
  attr_accessor :approvalCode
  attr_accessor :creditExpiryDate

  def initialize(sequenceNumber = nil, typeCode = nil, creditAccountNumber = nil, amount = nil, approvalCode = nil, creditExpiryDate = nil)
    @sequenceNumber = sequenceNumber
    @typeCode = typeCode
    @creditAccountNumber = creditAccountNumber
    @amount = amount
    @approvalCode = approvalCode
    @creditExpiryDate = creditExpiryDate
  end
end

# {http://services.gid.gap.com/orderlookup/v2/faults}OrderSystemFaultMessageType
#   errorCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class OrderSystemFaultMessageType
  attr_accessor :errorCode
  attr_accessor :message

  def initialize(errorCode = nil, message = nil)
    @errorCode = errorCode
    @message = message
  end
end

# {http://services.gid.gap.com/orderlookup/v2/faults}OrderNotFoundFaultMessageType
#   errorCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class OrderNotFoundFaultMessageType
  attr_accessor :errorCode
  attr_accessor :message

  def initialize(errorCode = nil, message = nil)
    @errorCode = errorCode
    @message = message
  end
end

# {http://services.gid.gap.com/orderlookup/v2/faults}InvalidTransactionIdFaultMessageType
#   errorCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class InvalidTransactionIdFaultMessageType
  attr_accessor :errorCode
  attr_accessor :message

  def initialize(errorCode = nil, message = nil)
    @errorCode = errorCode
    @message = message
  end
end

# {http://services.gid.gap.com/orderlookup/v2/faults}MaxOrdersLimitExceedFaultMessageType
#   errorCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class MaxOrdersLimitExceedFaultMessageType
  attr_accessor :errorCode
  attr_accessor :message

  def initialize(errorCode = nil, message = nil)
    @errorCode = errorCode
    @message = message
  end
end


end; end
