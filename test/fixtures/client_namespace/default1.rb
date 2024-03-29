require 'xsd/qname'

module MySoap; module InterfaceOne


# {http://schemas.gid.gap.com/discountService/v1}DiscountServiceRequestType
#   requestDateTime - SOAP::SOAPString
#   storeID - SOAP::SOAPString
#   requestType - SOAP::SOAPString
#   orderRequest - MySoap::InterfaceOne::OrderType
class DiscountServiceRequestType
  attr_accessor :requestDateTime
  attr_accessor :storeID
  attr_accessor :requestType
  attr_accessor :orderRequest

  def initialize(requestDateTime = nil, storeID = nil, requestType = nil, orderRequest = nil)
    @requestDateTime = requestDateTime
    @storeID = storeID
    @requestType = requestType
    @orderRequest = orderRequest
  end
end

# {http://schemas.gid.gap.com/discountService/v1}DiscountServiceResponseType
#   orderResponse - MySoap::InterfaceOne::OrderType
class DiscountServiceResponseType
  attr_accessor :orderResponse

  def initialize(orderResponse = nil)
    @orderResponse = orderResponse
  end
end

# {http://schemas.gid.gap.com/discountService/v1}OrderType
#   orderID - SOAP::SOAPString
#   qualifyType - MySoap::InterfaceOne::QualifyTypeEnum
#   orderDate - SOAP::SOAPString
#   channel - SOAP::SOAPString
#   brand - SOAP::SOAPString
#   market - SOAP::SOAPString
#   orderLineItems - MySoap::InterfaceOne::OrderLineType
#   promotions - MySoap::InterfaceOne::PromotionType
#   tenders - MySoap::InterfaceOne::TenderInfoType
#   maxDiscountsAllowed - SOAP::SOAPInt
class OrderType
  attr_accessor :orderID
  attr_accessor :qualifyType
  attr_accessor :orderDate
  attr_accessor :channel
  attr_accessor :brand
  attr_accessor :market
  attr_accessor :orderLineItems
  attr_accessor :promotions
  attr_accessor :tenders
  attr_accessor :maxDiscountsAllowed

  def initialize(orderID = nil, qualifyType = nil, orderDate = nil, channel = nil, brand = nil, market = nil, orderLineItems = [], promotions = [], tenders = [], maxDiscountsAllowed = nil)
    @orderID = orderID
    @qualifyType = qualifyType
    @orderDate = orderDate
    @channel = channel
    @brand = brand
    @market = market
    @orderLineItems = orderLineItems
    @promotions = promotions
    @tenders = tenders
    @maxDiscountsAllowed = maxDiscountsAllowed
  end
end

# {http://schemas.gid.gap.com/discountService/v1}TenderInfoType
#   tenderType - SOAP::SOAPString
#   creditCardHash - SOAP::SOAPString
#   creditCardType - SOAP::SOAPString
class TenderInfoType
  attr_accessor :tenderType
  attr_accessor :creditCardHash
  attr_accessor :creditCardType

  def initialize(tenderType = nil, creditCardHash = nil, creditCardType = nil)
    @tenderType = tenderType
    @creditCardHash = creditCardHash
    @creditCardType = creditCardType
  end
end

# {http://schemas.gid.gap.com/discountService/v1}PromotionType
#   sequenceNumber - SOAP::SOAPInt
#   promotionCode - SOAP::SOAPString
#   promotionID - SOAP::SOAPString
#   discountReasonCode - SOAP::SOAPString
#   appliedStatus - MySoap::InterfaceOne::AppliedStatusEnum
#   receiptMessages - MySoap::InterfaceOne::ReceiptMessageType
#   promoUsages - MySoap::InterfaceOne::PromoUsageType
class PromotionType
  attr_accessor :sequenceNumber
  attr_accessor :promotionCode
  attr_accessor :promotionID
  attr_accessor :discountReasonCode
  attr_accessor :appliedStatus
  attr_accessor :receiptMessages
  attr_accessor :promoUsages

  def initialize(sequenceNumber = nil, promotionCode = nil, promotionID = nil, discountReasonCode = nil, appliedStatus = nil, receiptMessages = [], promoUsages = [])
    @sequenceNumber = sequenceNumber
    @promotionCode = promotionCode
    @promotionID = promotionID
    @discountReasonCode = discountReasonCode
    @appliedStatus = appliedStatus
    @receiptMessages = receiptMessages
    @promoUsages = promoUsages
  end
end

# {http://schemas.gid.gap.com/discountService/v1}PromoUsageType
#   storeId - SOAP::SOAPString
#   transactionId - SOAP::SOAPString
#   usageDateTime - SOAP::SOAPDate
#   brand - SOAP::SOAPString
#   channel - SOAP::SOAPString
class PromoUsageType
  attr_accessor :storeId
  attr_accessor :transactionId
  attr_accessor :usageDateTime
  attr_accessor :brand
  attr_accessor :channel

  def initialize(storeId = nil, transactionId = nil, usageDateTime = nil, brand = nil, channel = nil)
    @storeId = storeId
    @transactionId = transactionId
    @usageDateTime = usageDateTime
    @brand = brand
    @channel = channel
  end
end

# {http://schemas.gid.gap.com/discountService/v1}ReceiptMessageType
#   message - SOAP::SOAPString
#   locale - SOAP::SOAPString
class ReceiptMessageType
  attr_accessor :message
  attr_accessor :locale

  def initialize(message = nil, locale = nil)
    @message = message
    @locale = locale
  end
end

# {http://schemas.gid.gap.com/discountService/v1}OrderLineType
#   sequenceNumber - SOAP::SOAPInt
#   product - MySoap::InterfaceOne::ProductInfoType
#   quantity - SOAP::SOAPInt
#   discountPrice - SOAP::SOAPDecimal
#   awards - MySoap::InterfaceOne::AwardType
#   exclude - SOAP::SOAPBoolean
#   manualDiscountApplied - SOAP::SOAPInt
class OrderLineType
  attr_accessor :sequenceNumber
  attr_accessor :product
  attr_accessor :quantity
  attr_accessor :discountPrice
  attr_accessor :awards
  attr_accessor :exclude
  attr_accessor :manualDiscountApplied

  def initialize(sequenceNumber = nil, product = nil, quantity = nil, discountPrice = nil, awards = [], exclude = nil, manualDiscountApplied = nil)
    @sequenceNumber = sequenceNumber
    @product = product
    @quantity = quantity
    @discountPrice = discountPrice
    @awards = awards
    @exclude = exclude
    @manualDiscountApplied = manualDiscountApplied
  end
end

# {http://schemas.gid.gap.com/discountService/v1}AwardType
#   awardID - SOAP::SOAPString
#   promoID - SOAP::SOAPString
#   awardDiscountAmount - SOAP::SOAPDecimal
#   awardDescription - SOAP::SOAPString
class AwardType
  attr_accessor :awardID
  attr_accessor :promoID
  attr_accessor :awardDiscountAmount
  attr_accessor :awardDescription

  def initialize(awardID = nil, promoID = nil, awardDiscountAmount = nil, awardDescription = nil)
    @awardID = awardID
    @promoID = promoID
    @awardDiscountAmount = awardDiscountAmount
    @awardDescription = awardDescription
  end
end

# {http://schemas.gid.gap.com/discountService/v1}ProductInfoType
#   brand - SOAP::SOAPString
#   sku - SOAP::SOAPString
#   itemCorpNumber - SOAP::SOAPString
#   itemCompanyNumber - SOAP::SOAPString
#   itemDivisionNumber - SOAP::SOAPString
#   itemDepartmentNumber - SOAP::SOAPString
#   itemClassNumber - SOAP::SOAPString
#   itemSubClassNumber - SOAP::SOAPString
#   netPrice - SOAP::SOAPDecimal
#   priceType - MySoap::InterfaceOne::PriceTypeEnum
#   merchandiseType - SOAP::SOAPString
#   styleColor - SOAP::SOAPString
class ProductInfoType
  attr_accessor :brand
  attr_accessor :sku
  attr_accessor :itemCorpNumber
  attr_accessor :itemCompanyNumber
  attr_accessor :itemDivisionNumber
  attr_accessor :itemDepartmentNumber
  attr_accessor :itemClassNumber
  attr_accessor :itemSubClassNumber
  attr_accessor :netPrice
  attr_accessor :priceType
  attr_accessor :merchandiseType
  attr_accessor :styleColor

  def initialize(brand = nil, sku = nil, itemCorpNumber = nil, itemCompanyNumber = nil, itemDivisionNumber = nil, itemDepartmentNumber = nil, itemClassNumber = nil, itemSubClassNumber = nil, netPrice = nil, priceType = nil, merchandiseType = nil, styleColor = nil)
    @brand = brand
    @sku = sku
    @itemCorpNumber = itemCorpNumber
    @itemCompanyNumber = itemCompanyNumber
    @itemDivisionNumber = itemDivisionNumber
    @itemDepartmentNumber = itemDepartmentNumber
    @itemClassNumber = itemClassNumber
    @itemSubClassNumber = itemSubClassNumber
    @netPrice = netPrice
    @priceType = priceType
    @merchandiseType = merchandiseType
    @styleColor = styleColor
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

# {http://schemas.gid.gap.com/discountService/v1}QualifyTypeEnum
class QualifyTypeEnum < ::String
  QUALIFY_WITHOUT_TENDER = QualifyTypeEnum.new("QUALIFY_WITHOUT_TENDER")
  QUALIFY_WITH_TENDER = QualifyTypeEnum.new("QUALIFY_WITH_TENDER")
end

# {http://schemas.gid.gap.com/discountService/v1}AppliedStatusEnum
class AppliedStatusEnum < ::String
  ALLOWED_DISCOUNTS_EXCEEDED = AppliedStatusEnum.new("ALLOWED_DISCOUNTS_EXCEEDED")
  CARD_INVALID_TIER = AppliedStatusEnum.new("CARD_INVALID_TIER")
  CARD_INVALID_TYPE = AppliedStatusEnum.new("CARD_INVALID_TYPE")
  CODE_APPLIED = AppliedStatusEnum.new("CODE_APPLIED")
  CODE_APPLIED_QUALIFY_WITHOUT_TENDER = AppliedStatusEnum.new("CODE_APPLIED_QUALIFY_WITHOUT_TENDER")
  CODE_EXPIRED = AppliedStatusEnum.new("CODE_EXPIRED")
  CODE_INVALID_BRAND = AppliedStatusEnum.new("CODE_INVALID_BRAND")
  CODE_INVALID_CHANNEL = AppliedStatusEnum.new("CODE_INVALID_CHANNEL")
  CODE_INVALID_STORE_MARKET = AppliedStatusEnum.new("CODE_INVALID_STORE_MARKET")
  CODE_NOT_ACTIVE = AppliedStatusEnum.new("CODE_NOT_ACTIVE")
  CODE_NOT_EXIST = AppliedStatusEnum.new("CODE_NOT_EXIST")
  CODE_USAGE_LIMIT_EXCEEDED = AppliedStatusEnum.new("CODE_USAGE_LIMIT_EXCEEDED")
  INVALID_PRICE_TYPE = AppliedStatusEnum.new("INVALID_PRICE_TYPE")
  MERCHANDISE_NOT_MET = AppliedStatusEnum.new("MERCHANDISE_NOT_MET")
  THRESHOLD_NOT_MET = AppliedStatusEnum.new("THRESHOLD_NOT_MET")
end

# {http://schemas.gid.gap.com/discountService/v1}PriceTypeEnum
class PriceTypeEnum < ::String
  MARKDOWN = PriceTypeEnum.new("MARKDOWN")
  PROMOTION = PriceTypeEnum.new("PROMOTION")
  REGULAR = PriceTypeEnum.new("REGULAR")
end


end; end
