require 'xsd/qname'

module MySoap; module Interface615174391


# {http://schemas.gid.gap.com/rtca/v2}RequestHeaderType
#   channel - SOAP::SOAPString
#   storeNumber - SOAP::SOAPString
#   requestIdentifier - SOAP::SOAPString
class RequestHeaderType
  attr_accessor :channel
  attr_accessor :storeNumber
  attr_accessor :requestIdentifier

  def initialize(channel = nil, storeNumber = nil, requestIdentifier = nil)
    @channel = channel
    @storeNumber = storeNumber
    @requestIdentifier = requestIdentifier
  end
end

# {http://schemas.gid.gap.com/rtca/v2}ResponseHeaderType
#   result - SOAP::SOAPString
#   requestIdentifier - SOAP::SOAPString
class ResponseHeaderType
  attr_accessor :result
  attr_accessor :requestIdentifier

  def initialize(result = nil, requestIdentifier = nil)
    @result = result
    @requestIdentifier = requestIdentifier
  end
end

# {http://schemas.gid.gap.com/rtca/v2}GiftCardTransactionRequestType
#   requestHeader - MySoap::Interface615174391::RequestHeaderType
#   giftCard - MySoap::Interface615174391::GiftCardType
class GiftCardTransactionRequestType
  attr_accessor :requestHeader
  attr_accessor :giftCard

  def initialize(requestHeader = nil, giftCard = nil)
    @requestHeader = requestHeader
    @giftCard = giftCard
  end
end

# {http://schemas.gid.gap.com/rtca/v2}GiftCardTransactionResponseType
#   responseHeader - MySoap::Interface615174391::ResponseHeaderType
#   giftCard - MySoap::Interface615174391::GiftCardType
#   giftCardTransactionResponseData - MySoap::Interface615174391::GiftCardAuthorizationType
class GiftCardTransactionResponseType
  attr_accessor :responseHeader
  attr_accessor :giftCard
  attr_accessor :giftCardTransactionResponseData

  def initialize(responseHeader = nil, giftCard = nil, giftCardTransactionResponseData = nil)
    @responseHeader = responseHeader
    @giftCard = giftCard
    @giftCardTransactionResponseData = giftCardTransactionResponseData
  end
end

# {http://schemas.gid.gap.com/rtca/v2}CreditCardTransactionRequestType
#   requestHeader - MySoap::Interface615174391::RequestHeaderType
#   creditCard - MySoap::Interface615174391::CreditCardType
class CreditCardTransactionRequestType
  attr_accessor :requestHeader
  attr_accessor :creditCard

  def initialize(requestHeader = nil, creditCard = nil)
    @requestHeader = requestHeader
    @creditCard = creditCard
  end
end

# {http://schemas.gid.gap.com/rtca/v2}CreditCardTransactionResponseType
#   responseHeader - MySoap::Interface615174391::ResponseHeaderType
#   creditCard - MySoap::Interface615174391::CreditCardType
#   creditCardAuthorizationResponseData - MySoap::Interface615174391::CreditCardAuthorizationType
class CreditCardTransactionResponseType
  attr_accessor :responseHeader
  attr_accessor :creditCard
  attr_accessor :creditCardAuthorizationResponseData

  def initialize(responseHeader = nil, creditCard = nil, creditCardAuthorizationResponseData = nil)
    @responseHeader = responseHeader
    @creditCard = creditCard
    @creditCardAuthorizationResponseData = creditCardAuthorizationResponseData
  end
end

# {http://schemas.gid.gap.com/rtca/v2}PaymentAuthorizationFaultMessageType
#   errorCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class PaymentAuthorizationFaultMessageType
  attr_accessor :errorCode
  attr_accessor :message

  def initialize(errorCode = nil, message = nil)
    @errorCode = errorCode
    @message = message
  end
end

# {http://schemas.gid.gap.com/creditcard/v2}CreditCardType
#   cardNumber - SOAP::SOAPString
#   cardHolderName - MySoap::Interface615174391::PersonNameType
#   billingAddress - MySoap::Interface615174391::AddressType
#   expiryMonth - SOAP::SOAPString
#   expiryYear - SOAP::SOAPString
#   cardType - SOAP::SOAPString
#   cVV - SOAP::SOAPString
#   amount - SOAP::SOAPDecimal
#   lastFourDigits - SOAP::SOAPString
#   creditCardTier - SOAP::SOAPString
#   tenderType - SOAP::SOAPString
#   cardBrand - SOAP::SOAPString
class CreditCardType
  attr_accessor :cardNumber
  attr_accessor :cardHolderName
  attr_accessor :billingAddress
  attr_accessor :expiryMonth
  attr_accessor :expiryYear
  attr_accessor :cardType
  attr_accessor :cVV
  attr_accessor :amount
  attr_accessor :lastFourDigits
  attr_accessor :creditCardTier
  attr_accessor :tenderType
  attr_accessor :cardBrand

  def initialize(cardNumber = nil, cardHolderName = nil, billingAddress = nil, expiryMonth = nil, expiryYear = nil, cardType = nil, cVV = nil, amount = nil, lastFourDigits = nil, creditCardTier = nil, tenderType = nil, cardBrand = nil)
    @cardNumber = cardNumber
    @cardHolderName = cardHolderName
    @billingAddress = billingAddress
    @expiryMonth = expiryMonth
    @expiryYear = expiryYear
    @cardType = cardType
    @cVV = cVV
    @amount = amount
    @lastFourDigits = lastFourDigits
    @creditCardTier = creditCardTier
    @tenderType = tenderType
    @cardBrand = cardBrand
  end
end

# {http://schemas.gid.gap.com/personname/v1}PersonNameType
#   title - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   middleName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   nickName - SOAP::SOAPString
class PersonNameType
  attr_accessor :title
  attr_accessor :firstName
  attr_accessor :middleName
  attr_accessor :lastName
  attr_accessor :nickName

  def initialize(title = nil, firstName = nil, middleName = nil, lastName = nil, nickName = nil)
    @title = title
    @firstName = firstName
    @middleName = middleName
    @lastName = lastName
    @nickName = nickName
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

# {http://schemas.gid.gap.com/creditcard/creditcardauthorization/v2}CreditCardAuthorizationType
#   aVS - SOAP::SOAPString
#   service - SOAP::SOAPString
#   transaction - SOAP::SOAPString
#   validation - SOAP::SOAPString
#   referenceNumber - SOAP::SOAPString
#   cVVResponse - SOAP::SOAPString
#   transactionDate - SOAP::SOAPString
#   transactionTime - SOAP::SOAPString
#   authorizationSource - SOAP::SOAPString
#   authorizationCode - SOAP::SOAPString
#   responseCode - SOAP::SOAPString
#   status - SOAP::SOAPString
#   responseDescription - SOAP::SOAPString
#   authorizationExpiryDate - SOAP::SOAPDateTime
class CreditCardAuthorizationType
  attr_accessor :aVS
  attr_accessor :service
  attr_accessor :transaction
  attr_accessor :validation
  attr_accessor :referenceNumber
  attr_accessor :cVVResponse
  attr_accessor :transactionDate
  attr_accessor :transactionTime
  attr_accessor :authorizationSource
  attr_accessor :authorizationCode
  attr_accessor :responseCode
  attr_accessor :status
  attr_accessor :responseDescription
  attr_accessor :authorizationExpiryDate

  def initialize(aVS = nil, service = nil, transaction = nil, validation = nil, referenceNumber = nil, cVVResponse = nil, transactionDate = nil, transactionTime = nil, authorizationSource = nil, authorizationCode = nil, responseCode = nil, status = nil, responseDescription = nil, authorizationExpiryDate = nil)
    @aVS = aVS
    @service = service
    @transaction = transaction
    @validation = validation
    @referenceNumber = referenceNumber
    @cVVResponse = cVVResponse
    @transactionDate = transactionDate
    @transactionTime = transactionTime
    @authorizationSource = authorizationSource
    @authorizationCode = authorizationCode
    @responseCode = responseCode
    @status = status
    @responseDescription = responseDescription
    @authorizationExpiryDate = authorizationExpiryDate
  end
end

# {http://schemas.gid.gap.com/giftcard/v2}GiftCardType
#   cardNumber - SOAP::SOAPString
#   pin - SOAP::SOAPString
#   brand - SOAP::SOAPString
#   cardType - SOAP::SOAPString
#   amount - SOAP::SOAPDecimal
#   traceNumber - SOAP::SOAPString
#   lastFourDigits - SOAP::SOAPString
#   tenderType - SOAP::SOAPString
class GiftCardType
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

# {http://schemas.gid.gap.com/giftcard/giftcardauthorization/v2}GiftCardAuthorizationType
#   transactionDate - SOAP::SOAPString
#   transactionTime - SOAP::SOAPString
#   authorizationSource - SOAP::SOAPString
#   authorizationCode - SOAP::SOAPString
#   responseCode - SOAP::SOAPString
#   status - SOAP::SOAPString
#   responseDescription - SOAP::SOAPString
class GiftCardAuthorizationType
  attr_accessor :transactionDate
  attr_accessor :transactionTime
  attr_accessor :authorizationSource
  attr_accessor :authorizationCode
  attr_accessor :responseCode
  attr_accessor :status
  attr_accessor :responseDescription

  def initialize(transactionDate = nil, transactionTime = nil, authorizationSource = nil, authorizationCode = nil, responseCode = nil, status = nil, responseDescription = nil)
    @transactionDate = transactionDate
    @transactionTime = transactionTime
    @authorizationSource = authorizationSource
    @authorizationCode = authorizationCode
    @responseCode = responseCode
    @status = status
    @responseDescription = responseDescription
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
