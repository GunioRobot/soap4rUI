require 'xsd/qname'

module MySoap; module Interface491263


# {http://provider.v1.promotion.services.gid.gap.com}CreditCardValidationRequest
#   brand - SOAP::SOAPString
#   channel - SOAP::SOAPString
#   promotionCode - SOAP::SOAPString
#   requestDateTime - SOAP::SOAPString
#   creditCardType - SOAP::SOAPString
#   creditCardSecureKey - SOAP::SOAPString
#   qualifyingPromoLevelId - SOAP::SOAPString
class CreditCardValidationRequest
  attr_accessor :brand
  attr_accessor :channel
  attr_accessor :promotionCode
  attr_accessor :requestDateTime
  attr_accessor :creditCardType
  attr_accessor :creditCardSecureKey
  attr_accessor :qualifyingPromoLevelId

  def initialize(brand = nil, channel = nil, promotionCode = nil, requestDateTime = nil, creditCardType = nil, creditCardSecureKey = nil, qualifyingPromoLevelId = nil)
    @brand = brand
    @channel = channel
    @promotionCode = promotionCode
    @requestDateTime = requestDateTime
    @creditCardType = creditCardType
    @creditCardSecureKey = creditCardSecureKey
    @qualifyingPromoLevelId = qualifyingPromoLevelId
  end
end

# {http://provider.v1.promotion.services.gid.gap.com}PromotionUsage
#   storeId - SOAP::SOAPString
#   transactionId - SOAP::SOAPString
#   usageDateTime - SOAP::SOAPString
class PromotionUsage
  attr_accessor :storeId
  attr_accessor :transactionId
  attr_accessor :usageDateTime

  def initialize(storeId = nil, transactionId = nil, usageDateTime = nil)
    @storeId = storeId
    @transactionId = transactionId
    @usageDateTime = usageDateTime
  end
end

# {http://provider.v1.promotion.services.gid.gap.com}CreditCardValidationInfo
#   validationStatus - SOAP::SOAPString
#   promotionUsageHistory - MySoap::Interface491263::ArrayOf_PromotionUsage
class CreditCardValidationInfo
  attr_accessor :validationStatus
  attr_accessor :promotionUsageHistory

  def initialize(validationStatus = nil, promotionUsageHistory = nil)
    @validationStatus = validationStatus
    @promotionUsageHistory = promotionUsageHistory
  end
end

# {http://provider.v1.promotion.services.gid.gap.com}CreditCardValidationResponse
#   creditCardValidationInfo - MySoap::Interface491263::CreditCardValidationInfo
class CreditCardValidationResponse
  attr_accessor :creditCardValidationInfo

  def initialize(creditCardValidationInfo = nil)
    @creditCardValidationInfo = creditCardValidationInfo
  end
end

# {http://provider.v1.promotion.services.gid.gap.com}PromotionServiceException
#   message - SOAP::SOAPString
#   code - SOAP::SOAPString
class PromotionServiceException < ::StandardError
  attr_accessor :message
  attr_accessor :code

  def initialize(message = nil, code = nil)
    @message = message
    @code = code
  end
end

# {http://provider.v1.promotion.services.gid.gap.com}PromoValidationException
#   message - SOAP::SOAPString
#   code - SOAP::SOAPString
class PromoValidationException < ::StandardError
  attr_accessor :message
  attr_accessor :code

  def initialize(message = nil, code = nil)
    @message = message
    @code = code
  end
end

# {http://provider.v1.promotion.services.gid.gap.com}ArrayOf_xsd_string
class ArrayOf_xsd_string < ::Array
end

# {http://provider.v1.promotion.services.gid.gap.com}ArrayOf_PromotionUsage
class ArrayOf_PromotionUsage < ::Array
end


end; end
