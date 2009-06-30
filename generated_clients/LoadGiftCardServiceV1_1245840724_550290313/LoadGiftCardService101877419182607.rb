require 'xsd/qname'

module MySoap; module Interface491263


# {http://dto.v1.services.gid.gap.com}GiftCard
#   cardNumber - SOAP::SOAPString
#   pin - SOAP::SOAPString
#   brand - SOAP::SOAPString
#   cardType - SOAP::SOAPString
#   amount - SOAP::SOAPDecimal
#   traceNumber - SOAP::SOAPString
#   lastFourDigits - SOAP::SOAPString
#   tenderType - SOAP::SOAPString
class GiftCard
  attr_accessor :cardNumber
  attr_accessor :pin
  attr_accessor :brand
  attr_accessor :cardType
  attr_accessor :amount
  attr_accessor :traceNumber
  attr_accessor :lastFourDigits
  attr_accessor :tenderType

  def initialize(cardNumber = nil, pin = nil, brand = nil, cardType = nil, amount = nil, traceNumber = nil, lastFourDigits = nil, tenderType = nil)
    @cardNumber = cardNumber
    @pin = pin
    @brand = brand
    @cardType = cardType
    @amount = amount
    @traceNumber = traceNumber
    @lastFourDigits = lastFourDigits
    @tenderType = tenderType
  end
end

# {http://dto.v1.services.gid.gap.com}GiftCardAuthorization
#   referenceNumber - SOAP::SOAPString
#   authDate - SOAP::SOAPString
#   authTime - SOAP::SOAPString
#   authSource - SOAP::SOAPString
#   authCode - SOAP::SOAPString
#   responseCode - SOAP::SOAPString
#   status - SOAP::SOAPString
#   responseDescription - SOAP::SOAPString
class GiftCardAuthorization
  attr_accessor :referenceNumber
  attr_accessor :authDate
  attr_accessor :authTime
  attr_accessor :authSource
  attr_accessor :authCode
  attr_accessor :responseCode
  attr_accessor :status
  attr_accessor :responseDescription

  def initialize(referenceNumber = nil, authDate = nil, authTime = nil, authSource = nil, authCode = nil, responseCode = nil, status = nil, responseDescription = nil)
    @referenceNumber = referenceNumber
    @authDate = authDate
    @authTime = authTime
    @authSource = authSource
    @authCode = authCode
    @responseCode = responseCode
    @status = status
    @responseDescription = responseDescription
  end
end

# {http://dto.v1.rtca.services.gid.gap.com}RequestHeader
#   channel - SOAP::SOAPString
#   storeNumber - SOAP::SOAPString
#   requestIdentifier - SOAP::SOAPString
class RequestHeader
  attr_accessor :channel
  attr_accessor :storeNumber
  attr_accessor :requestIdentifier

  def initialize(channel = nil, storeNumber = nil, requestIdentifier = nil)
    @channel = channel
    @storeNumber = storeNumber
    @requestIdentifier = requestIdentifier
  end
end

# {http://dto.v1.rtca.services.gid.gap.com}ResponseHeader
#   result - SOAP::SOAPString
#   requestIdentifier - SOAP::SOAPString
class ResponseHeader
  attr_accessor :result
  attr_accessor :requestIdentifier

  def initialize(result = nil, requestIdentifier = nil)
    @result = result
    @requestIdentifier = requestIdentifier
  end
end

# {http://dto.v1.rtca.services.gid.gap.com}GiftCardTransactionRequest
#   requestHeader - MySoap::Interface491263::RequestHeader
#   giftCard - MySoap::Interface491263::GiftCard
class GiftCardTransactionRequest
  attr_accessor :requestHeader
  attr_accessor :giftCard

  def initialize(requestHeader = nil, giftCard = nil)
    @requestHeader = requestHeader
    @giftCard = giftCard
  end
end

# {http://dto.v1.rtca.services.gid.gap.com}GiftCardTransactionResponse
#   responseHeader - MySoap::Interface491263::ResponseHeader
#   giftCard - MySoap::Interface491263::GiftCard
#   giftCardTxnResponseData - MySoap::Interface491263::GiftCardAuthorization
class GiftCardTransactionResponse
  attr_accessor :responseHeader
  attr_accessor :giftCard
  attr_accessor :giftCardTxnResponseData

  def initialize(responseHeader = nil, giftCard = nil, giftCardTxnResponseData = nil)
    @responseHeader = responseHeader
    @giftCard = giftCard
    @giftCardTxnResponseData = giftCardTxnResponseData
  end
end

# {http://dto.v1.rtca.services.gid.gap.com}IsServiceAliveResponse
#   serviceName - SOAP::SOAPString
#   isWebServiceAlive - SOAP::SOAPBoolean
#   isTandemAlive - SOAP::SOAPString
#   startTime - SOAP::SOAPString
#   message - SOAP::SOAPString
class IsServiceAliveResponse
  attr_accessor :serviceName
  attr_accessor :isWebServiceAlive
  attr_accessor :isTandemAlive
  attr_accessor :startTime
  attr_accessor :message

  def initialize(serviceName = nil, isWebServiceAlive = nil, isTandemAlive = nil, startTime = nil, message = nil)
    @serviceName = serviceName
    @isWebServiceAlive = isWebServiceAlive
    @isTandemAlive = isTandemAlive
    @startTime = startTime
    @message = message
  end
end

# {http://exception.provider.v1.rtca.services.gid.gap.com}LoadGiftCardServiceException
#   errorCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class LoadGiftCardServiceException < ::StandardError
  attr_accessor :errorCode
  attr_accessor :message

  def initialize(errorCode = nil, message = nil)
    @errorCode = errorCode
    @message = message
  end
end


end; end
