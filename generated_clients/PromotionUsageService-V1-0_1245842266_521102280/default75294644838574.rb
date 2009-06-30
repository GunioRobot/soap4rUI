require 'xsd/qname'

module MySoap; module Interface893988089


# {http://schemas.gid.gap.com/promotionusage/v1}PromotionUsageType
#   transactionId - SOAP::SOAPString
#   transactionDate - SOAP::SOAPString
#   storeId - SOAP::SOAPString
#   brand - SOAP::SOAPString
#   channel - SOAP::SOAPString
class PromotionUsageType
  attr_accessor :transactionId
  attr_accessor :transactionDate
  attr_accessor :storeId
  attr_accessor :brand
  attr_accessor :channel

  def initialize(transactionId = nil, transactionDate = nil, storeId = nil, brand = nil, channel = nil)
    @transactionId = transactionId
    @transactionDate = transactionDate
    @storeId = storeId
    @brand = brand
    @channel = channel
  end
end

# {http://schemas.gid.gap.com/promotionusage/v1}PromotionUsagesType
class PromotionUsagesType < ::Array
end

# {http://schemas.gid.gap.com/promotionusage/v1}PromotionUsageRequestType
#   promotionCode - SOAP::SOAPString
#   customerId - SOAP::SOAPString
#   customerEmailAddress - SOAP::SOAPString
#   creditCardSecureKey - SOAP::SOAPString
class PromotionUsageRequestType
  attr_accessor :promotionCode
  attr_accessor :customerId
  attr_accessor :customerEmailAddress
  attr_accessor :creditCardSecureKey

  def initialize(promotionCode = nil, customerId = nil, customerEmailAddress = nil, creditCardSecureKey = nil)
    @promotionCode = promotionCode
    @customerId = customerId
    @customerEmailAddress = customerEmailAddress
    @creditCardSecureKey = creditCardSecureKey
  end
end

# {http://schemas.gid.gap.com/promotionusage/v1}PromotionUsageResponseType
#   promotionUsages - MySoap::Interface893988089::PromotionUsagesType
#   statusCode - SOAP::SOAPString
class PromotionUsageResponseType
  attr_accessor :promotionUsages
  attr_accessor :statusCode

  def initialize(promotionUsages = nil, statusCode = nil)
    @promotionUsages = promotionUsages
    @statusCode = statusCode
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
