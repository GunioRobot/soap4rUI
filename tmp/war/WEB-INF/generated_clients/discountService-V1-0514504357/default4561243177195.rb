require 'xsd/qname'

module MySoap; module Interface677293416


# {http://schemas.gid.gap.com/discountService/v1}DiscountServiceRequestType
#   requestDateTime - SOAP::SOAPString
#   storeID - SOAP::SOAPString
#   requestType - SOAP::SOAPString
#   orderRequest - MySoap::Interface677293416::OrderType
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
#   orderResponse - MySoap::Interface677293416::OrderType
class DiscountServiceResponseType
  attr_accessor :orderResponse

  def initialize(orderResponse = nil)
    @orderResponse = orderResponse
  end
end

# {http://schemas.gid.gap.com/discountService/v1}OrderType
#   orderID - SOAP::SOAPString
#   qualifyType - MySoap::Interface677293416::QualifyTypeEnum
#   orderDate - SOAP::SOAPString
#   channel - SOAP::SOAPString
#   brand - SOAP::SOAPString
#   region - SOAP::SOAPString
#   currency - SOAP::SOAPString
#   orderLineItems - MySoap::Interface677293416::OrderLineType
#   promotions - MySoap::Interface677293416::PromotionType
#   tenderTypes - MySoap::Interface677293416::TenderInfoType
class OrderType
  attr_accessor :orderID
  attr_accessor :qualifyType
  attr_accessor :orderDate
  attr_accessor :channel
  attr_accessor :brand
  attr_accessor :region
  attr_accessor :currency
  attr_accessor :orderLineItems
  attr_accessor :promotions
  attr_accessor :tenderTypes

  def initialize(orderID = nil, qualifyType = nil, orderDate = nil, channel = nil, brand = nil, region = nil, currency = nil, orderLineItems = [], promotions = [], tenderTypes = [])
    @orderID = orderID
    @qualifyType = qualifyType
    @orderDate = orderDate
    @channel = channel
    @brand = brand
    @region = region
    @currency = currency
    @orderLineItems = orderLineItems
    @promotions = promotions
    @tenderTypes = tenderTypes
  end
end

# {http://schemas.gid.gap.com/discountService/v1}TenderInfoType
#   creditCardHash - SOAP::SOAPString
#   creditCardType - SOAP::SOAPString
class TenderInfoType
  attr_accessor :creditCardHash
  attr_accessor :creditCardType

  def initialize(creditCardHash = nil, creditCardType = nil)
    @creditCardHash = creditCardHash
    @creditCardType = creditCardType
  end
end

# {http://schemas.gid.gap.com/discountService/v1}PromotionType
#   promotionCode - SOAP::SOAPString
#   promotionID - SOAP::SOAPString
#   discountReasonCode - SOAP::SOAPString
#   appliedStatus - MySoap::Interface677293416::AppliedStatusEnum
#   receiptMessages - MySoap::Interface677293416::ReceiptMessageType
class PromotionType
  attr_accessor :promotionCode
  attr_accessor :promotionID
  attr_accessor :discountReasonCode
  attr_accessor :appliedStatus
  attr_accessor :receiptMessages

  def initialize(promotionCode = nil, promotionID = nil, discountReasonCode = nil, appliedStatus = nil, receiptMessages = [])
    @promotionCode = promotionCode
    @promotionID = promotionID
    @discountReasonCode = discountReasonCode
    @appliedStatus = appliedStatus
    @receiptMessages = receiptMessages
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
#   product - MySoap::Interface677293416::ProductInfoType
#   quantity - SOAP::SOAPInt
#   discountPrice - SOAP::SOAPDecimal
#   awards - MySoap::Interface677293416::AwardType
class OrderLineType
  attr_accessor :sequenceNumber
  attr_accessor :product
  attr_accessor :quantity
  attr_accessor :discountPrice
  attr_accessor :awards

  def initialize(sequenceNumber = nil, product = nil, quantity = nil, discountPrice = nil, awards = [])
    @sequenceNumber = sequenceNumber
    @product = product
    @quantity = quantity
    @discountPrice = discountPrice
    @awards = awards
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
#   priceType - MySoap::Interface677293416::PriceTypeEnum
#   merchandiseType - SOAP::SOAPInt
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

  def initialize(brand = nil, sku = nil, itemCorpNumber = nil, itemCompanyNumber = nil, itemDivisionNumber = nil, itemDepartmentNumber = nil, itemClassNumber = nil, itemSubClassNumber = nil, netPrice = nil, priceType = nil, merchandiseType = nil)
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
  CARD_INVALID_TIER = AppliedStatusEnum.new("CARD_INVALID_TIER")
  CARD_INVALID_TYPE = AppliedStatusEnum.new("CARD_INVALID_TYPE")
  CODE_APPLIED = AppliedStatusEnum.new("CODE_APPLIED")
  CODE_APPLIED_QUALIFY_WITHOUT_TENDER = AppliedStatusEnum.new("CODE_APPLIED_QUALIFY_WITHOUT_TENDER")
  CODE_CONDITION_NOT_MET = AppliedStatusEnum.new("CODE_CONDITION_NOT_MET")
  CODE_EXPIRED = AppliedStatusEnum.new("CODE_EXPIRED")
  CODE_INVALID_BRAND = AppliedStatusEnum.new("CODE_INVALID_BRAND")
  CODE_INVALID_CHANNEL = AppliedStatusEnum.new("CODE_INVALID_CHANNEL")
  CODE_INVALID_MERCH = AppliedStatusEnum.new("CODE_INVALID_MERCH")
  CODE_INVALID_PRICE_TYPE = AppliedStatusEnum.new("CODE_INVALID_PRICE_TYPE")
  CODE_INVALID_STORE_MARKET = AppliedStatusEnum.new("CODE_INVALID_STORE_MARKET")
  CODE_NOT_ACTIVE = AppliedStatusEnum.new("CODE_NOT_ACTIVE")
  CODE_NOT_EXIST = AppliedStatusEnum.new("CODE_NOT_EXIST")
  CODE_THRESHOLD_NOT_MET = AppliedStatusEnum.new("CODE_THRESHOLD_NOT_MET")
  CODE_USAGE_LIMIT_EXCEEDED = AppliedStatusEnum.new("CODE_USAGE_LIMIT_EXCEEDED")
  ELIGIBLE = AppliedStatusEnum.new("ELIGIBLE")
end

# {http://schemas.gid.gap.com/discountService/v1}PriceTypeEnum
class PriceTypeEnum < ::String
  MARKDOWN = PriceTypeEnum.new("MARKDOWN")
  PROMOTION = PriceTypeEnum.new("PROMOTION")
  REGULAR = PriceTypeEnum.new("REGULAR")
end


end; end
