require 'default1012411084684.rb'
require 'soap/mapping'

module MySoap; module Interface615174391

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsFaults = "http://services.gid.gap.com/rtca/v2/faults"
  NsV1 = "http://schemas.gid.gap.com/personname/v1"
  NsV1_0 = "http://schemas.gid.gap.com/address/v1"
  NsV1_1 = "http://schemas.gid.gap.com/servicealive/v1"
  NsV2 = "http://schemas.gid.gap.com/rtca/v2"
  NsV2_0 = "http://schemas.gid.gap.com/creditcard/v2"
  NsV2_1 = "http://schemas.gid.gap.com/creditcard/creditcardauthorization/v2"
  NsV2_2 = "http://schemas.gid.gap.com/giftcard/v2"
  NsV2_3 = "http://schemas.gid.gap.com/giftcard/giftcardauthorization/v2"

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::RequestHeaderType,
    :schema_type => XSD::QName.new(NsV2, "RequestHeaderType"),
    :schema_element => [
      ["channel", ["SOAP::SOAPString", XSD::QName.new(nil, "Channel")]],
      ["storeNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreNumber")]],
      ["requestIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestIdentifier")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::ResponseHeaderType,
    :schema_type => XSD::QName.new(NsV2, "ResponseHeaderType"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "Result")]],
      ["requestIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestIdentifier")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::GiftCardTransactionRequestType,
    :schema_type => XSD::QName.new(NsV2, "GiftCardTransactionRequestType"),
    :schema_element => [
      ["requestHeader", ["MySoap::Interface615174391::RequestHeaderType", XSD::QName.new(nil, "RequestHeader")]],
      ["giftCard", ["MySoap::Interface615174391::GiftCardType", XSD::QName.new(nil, "GiftCard")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::GiftCardTransactionResponseType,
    :schema_type => XSD::QName.new(NsV2, "GiftCardTransactionResponseType"),
    :schema_element => [
      ["responseHeader", ["MySoap::Interface615174391::ResponseHeaderType", XSD::QName.new(nil, "ResponseHeader")]],
      ["giftCard", ["MySoap::Interface615174391::GiftCardType", XSD::QName.new(nil, "GiftCard")]],
      ["giftCardTransactionResponseData", ["MySoap::Interface615174391::GiftCardAuthorizationType", XSD::QName.new(nil, "GiftCardTransactionResponseData")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::CreditCardTransactionRequestType,
    :schema_type => XSD::QName.new(NsV2, "CreditCardTransactionRequestType"),
    :schema_element => [
      ["requestHeader", ["MySoap::Interface615174391::RequestHeaderType", XSD::QName.new(nil, "RequestHeader")]],
      ["creditCard", ["MySoap::Interface615174391::CreditCardType", XSD::QName.new(nil, "CreditCard")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::CreditCardTransactionResponseType,
    :schema_type => XSD::QName.new(NsV2, "CreditCardTransactionResponseType"),
    :schema_element => [
      ["responseHeader", ["MySoap::Interface615174391::ResponseHeaderType", XSD::QName.new(nil, "ResponseHeader")]],
      ["creditCard", ["MySoap::Interface615174391::CreditCardType", XSD::QName.new(nil, "CreditCard")]],
      ["creditCardAuthorizationResponseData", ["MySoap::Interface615174391::CreditCardAuthorizationType", XSD::QName.new(nil, "CreditCardAuthorizationResponseData")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::PaymentAuthorizationFaultMessageType,
    :schema_type => XSD::QName.new(NsV2, "PaymentAuthorizationFaultMessageType"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::CreditCardType,
    :schema_type => XSD::QName.new(NsV2_0, "CreditCardType"),
    :schema_element => [
      ["cardNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "CardNumber")]],
      ["cardHolderName", ["MySoap::Interface615174391::PersonNameType", XSD::QName.new(nil, "CardHolderName")], [0, 1]],
      ["billingAddress", ["MySoap::Interface615174391::AddressType", XSD::QName.new(nil, "BillingAddress")]],
      ["expiryMonth", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpiryMonth")], [0, 1]],
      ["expiryYear", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpiryYear")], [0, 1]],
      ["cardType", ["SOAP::SOAPString", XSD::QName.new(nil, "CardType")]],
      ["cVV", ["SOAP::SOAPString", XSD::QName.new(nil, "CVV")], [0, 1]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "Amount")]],
      ["lastFourDigits", ["SOAP::SOAPString", XSD::QName.new(nil, "LastFourDigits")], [0, 1]],
      ["creditCardTier", ["SOAP::SOAPString", XSD::QName.new(nil, "CreditCardTier")], [0, 1]],
      ["tenderType", ["SOAP::SOAPString", XSD::QName.new(nil, "TenderType")], [0, 1]],
      ["cardBrand", ["SOAP::SOAPString", XSD::QName.new(nil, "CardBrand")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::PersonNameType,
    :schema_type => XSD::QName.new(NsV1, "PersonNameType"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "Title")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(nil, "FirstName")]],
      ["middleName", ["SOAP::SOAPString", XSD::QName.new(nil, "MiddleName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(nil, "LastName")]],
      ["nickName", ["SOAP::SOAPString", XSD::QName.new(nil, "NickName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::AddressType,
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
    :class => MySoap::Interface615174391::CreditCardAuthorizationType,
    :schema_type => XSD::QName.new(NsV2_1, "CreditCardAuthorizationType"),
    :schema_element => [
      ["aVS", ["SOAP::SOAPString", XSD::QName.new(nil, "AVS")], [0, 1]],
      ["service", ["SOAP::SOAPString", XSD::QName.new(nil, "Service")], [0, 1]],
      ["transaction", ["SOAP::SOAPString", XSD::QName.new(nil, "Transaction")], [0, 1]],
      ["validation", ["SOAP::SOAPString", XSD::QName.new(nil, "Validation")], [0, 1]],
      ["referenceNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ReferenceNumber")], [0, 1]],
      ["cVVResponse", ["SOAP::SOAPString", XSD::QName.new(nil, "CVVResponse")], [0, 1]],
      ["transactionDate", ["SOAP::SOAPString", XSD::QName.new(nil, "TransactionDate")], [0, 1]],
      ["transactionTime", ["SOAP::SOAPString", XSD::QName.new(nil, "TransactionTime")], [0, 1]],
      ["authorizationSource", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthorizationSource")], [0, 1]],
      ["authorizationCode", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthorizationCode")], [0, 1]],
      ["responseCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ResponseCode")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "Status")]],
      ["responseDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ResponseDescription")], [0, 1]],
      ["authorizationExpiryDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "AuthorizationExpiryDate")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::GiftCardType,
    :schema_type => XSD::QName.new(NsV2_2, "GiftCardType"),
    :schema_element => [
      ["cardNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "CardNumber")]],
      ["pin", ["SOAP::SOAPString", XSD::QName.new(nil, "Pin")], [0, 1]],
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "Brand")], [0, 1]],
      ["cardType", ["SOAP::SOAPString", XSD::QName.new(nil, "CardType")], [0, 1]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "Amount")], [0, 1]],
      ["traceNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "TraceNumber")], [0, 1]],
      ["lastFourDigits", ["SOAP::SOAPString", XSD::QName.new(nil, "LastFourDigits")], [0, 1]],
      ["tenderType", ["SOAP::SOAPString", XSD::QName.new(nil, "TenderType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::GiftCardAuthorizationType,
    :schema_type => XSD::QName.new(NsV2_3, "GiftCardAuthorizationType"),
    :schema_element => [
      ["transactionDate", ["SOAP::SOAPString", XSD::QName.new(nil, "TransactionDate")], [0, 1]],
      ["transactionTime", ["SOAP::SOAPString", XSD::QName.new(nil, "TransactionTime")], [0, 1]],
      ["authorizationSource", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthorizationSource")], [0, 1]],
      ["authorizationCode", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthorizationCode")], [0, 1]],
      ["responseCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ResponseCode")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "Status")]],
      ["responseDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ResponseDescription")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1_1, "ServiceAliveRequestType"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1_1, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface615174391::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1_1, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::RequestHeaderType,
    :schema_type => XSD::QName.new(NsV2, "RequestHeaderType"),
    :schema_element => [
      ["channel", ["SOAP::SOAPString", XSD::QName.new(nil, "Channel")]],
      ["storeNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreNumber")]],
      ["requestIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestIdentifier")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::ResponseHeaderType,
    :schema_type => XSD::QName.new(NsV2, "ResponseHeaderType"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "Result")]],
      ["requestIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestIdentifier")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::GiftCardTransactionRequestType,
    :schema_type => XSD::QName.new(NsV2, "GiftCardTransactionRequestType"),
    :schema_element => [
      ["requestHeader", ["MySoap::Interface615174391::RequestHeaderType", XSD::QName.new(nil, "RequestHeader")]],
      ["giftCard", ["MySoap::Interface615174391::GiftCardType", XSD::QName.new(nil, "GiftCard")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::GiftCardTransactionResponseType,
    :schema_type => XSD::QName.new(NsV2, "GiftCardTransactionResponseType"),
    :schema_element => [
      ["responseHeader", ["MySoap::Interface615174391::ResponseHeaderType", XSD::QName.new(nil, "ResponseHeader")]],
      ["giftCard", ["MySoap::Interface615174391::GiftCardType", XSD::QName.new(nil, "GiftCard")]],
      ["giftCardTransactionResponseData", ["MySoap::Interface615174391::GiftCardAuthorizationType", XSD::QName.new(nil, "GiftCardTransactionResponseData")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::CreditCardTransactionRequestType,
    :schema_type => XSD::QName.new(NsV2, "CreditCardTransactionRequestType"),
    :schema_element => [
      ["requestHeader", ["MySoap::Interface615174391::RequestHeaderType", XSD::QName.new(nil, "RequestHeader")]],
      ["creditCard", ["MySoap::Interface615174391::CreditCardType", XSD::QName.new(nil, "CreditCard")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::CreditCardTransactionResponseType,
    :schema_type => XSD::QName.new(NsV2, "CreditCardTransactionResponseType"),
    :schema_element => [
      ["responseHeader", ["MySoap::Interface615174391::ResponseHeaderType", XSD::QName.new(nil, "ResponseHeader")]],
      ["creditCard", ["MySoap::Interface615174391::CreditCardType", XSD::QName.new(nil, "CreditCard")]],
      ["creditCardAuthorizationResponseData", ["MySoap::Interface615174391::CreditCardAuthorizationType", XSD::QName.new(nil, "CreditCardAuthorizationResponseData")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::PaymentAuthorizationFaultMessageType,
    :schema_type => XSD::QName.new(NsV2, "PaymentAuthorizationFaultMessageType"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::CreditCardType,
    :schema_type => XSD::QName.new(NsV2_0, "CreditCardType"),
    :schema_element => [
      ["cardNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "CardNumber")]],
      ["cardHolderName", ["MySoap::Interface615174391::PersonNameType", XSD::QName.new(nil, "CardHolderName")], [0, 1]],
      ["billingAddress", ["MySoap::Interface615174391::AddressType", XSD::QName.new(nil, "BillingAddress")]],
      ["expiryMonth", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpiryMonth")], [0, 1]],
      ["expiryYear", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpiryYear")], [0, 1]],
      ["cardType", ["SOAP::SOAPString", XSD::QName.new(nil, "CardType")]],
      ["cVV", ["SOAP::SOAPString", XSD::QName.new(nil, "CVV")], [0, 1]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "Amount")]],
      ["lastFourDigits", ["SOAP::SOAPString", XSD::QName.new(nil, "LastFourDigits")], [0, 1]],
      ["creditCardTier", ["SOAP::SOAPString", XSD::QName.new(nil, "CreditCardTier")], [0, 1]],
      ["tenderType", ["SOAP::SOAPString", XSD::QName.new(nil, "TenderType")], [0, 1]],
      ["cardBrand", ["SOAP::SOAPString", XSD::QName.new(nil, "CardBrand")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::PersonNameType,
    :schema_type => XSD::QName.new(NsV1, "PersonNameType"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "Title")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(nil, "FirstName")]],
      ["middleName", ["SOAP::SOAPString", XSD::QName.new(nil, "MiddleName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(nil, "LastName")]],
      ["nickName", ["SOAP::SOAPString", XSD::QName.new(nil, "NickName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::AddressType,
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
    :class => MySoap::Interface615174391::CreditCardAuthorizationType,
    :schema_type => XSD::QName.new(NsV2_1, "CreditCardAuthorizationType"),
    :schema_element => [
      ["aVS", ["SOAP::SOAPString", XSD::QName.new(nil, "AVS")], [0, 1]],
      ["service", ["SOAP::SOAPString", XSD::QName.new(nil, "Service")], [0, 1]],
      ["transaction", ["SOAP::SOAPString", XSD::QName.new(nil, "Transaction")], [0, 1]],
      ["validation", ["SOAP::SOAPString", XSD::QName.new(nil, "Validation")], [0, 1]],
      ["referenceNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ReferenceNumber")], [0, 1]],
      ["cVVResponse", ["SOAP::SOAPString", XSD::QName.new(nil, "CVVResponse")], [0, 1]],
      ["transactionDate", ["SOAP::SOAPString", XSD::QName.new(nil, "TransactionDate")], [0, 1]],
      ["transactionTime", ["SOAP::SOAPString", XSD::QName.new(nil, "TransactionTime")], [0, 1]],
      ["authorizationSource", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthorizationSource")], [0, 1]],
      ["authorizationCode", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthorizationCode")], [0, 1]],
      ["responseCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ResponseCode")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "Status")]],
      ["responseDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ResponseDescription")], [0, 1]],
      ["authorizationExpiryDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "AuthorizationExpiryDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::GiftCardType,
    :schema_type => XSD::QName.new(NsV2_2, "GiftCardType"),
    :schema_element => [
      ["cardNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "CardNumber")]],
      ["pin", ["SOAP::SOAPString", XSD::QName.new(nil, "Pin")], [0, 1]],
      ["brand", ["SOAP::SOAPString", XSD::QName.new(nil, "Brand")], [0, 1]],
      ["cardType", ["SOAP::SOAPString", XSD::QName.new(nil, "CardType")], [0, 1]],
      ["amount", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "Amount")], [0, 1]],
      ["traceNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "TraceNumber")], [0, 1]],
      ["lastFourDigits", ["SOAP::SOAPString", XSD::QName.new(nil, "LastFourDigits")], [0, 1]],
      ["tenderType", ["SOAP::SOAPString", XSD::QName.new(nil, "TenderType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::GiftCardAuthorizationType,
    :schema_type => XSD::QName.new(NsV2_3, "GiftCardAuthorizationType"),
    :schema_element => [
      ["transactionDate", ["SOAP::SOAPString", XSD::QName.new(nil, "TransactionDate")], [0, 1]],
      ["transactionTime", ["SOAP::SOAPString", XSD::QName.new(nil, "TransactionTime")], [0, 1]],
      ["authorizationSource", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthorizationSource")], [0, 1]],
      ["authorizationCode", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthorizationCode")], [0, 1]],
      ["responseCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ResponseCode")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "Status")]],
      ["responseDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ResponseDescription")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1_1, "ServiceAliveRequestType"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1_1, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1_1, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::CreditCardTransactionRequestType,
    :schema_name => XSD::QName.new(NsV2, "CreditCardTransactionRequest"),
    :schema_element => [
      ["requestHeader", ["MySoap::Interface615174391::RequestHeaderType", XSD::QName.new(nil, "RequestHeader")]],
      ["creditCard", ["MySoap::Interface615174391::CreditCardType", XSD::QName.new(nil, "CreditCard")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::CreditCardTransactionResponseType,
    :schema_name => XSD::QName.new(NsV2, "CreditCardTransactionResponse"),
    :schema_element => [
      ["responseHeader", ["MySoap::Interface615174391::ResponseHeaderType", XSD::QName.new(nil, "ResponseHeader")]],
      ["creditCard", ["MySoap::Interface615174391::CreditCardType", XSD::QName.new(nil, "CreditCard")]],
      ["creditCardAuthorizationResponseData", ["MySoap::Interface615174391::CreditCardAuthorizationType", XSD::QName.new(nil, "CreditCardAuthorizationResponseData")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::GiftCardTransactionRequestType,
    :schema_name => XSD::QName.new(NsV2, "CheckBalanceOnGiftCardRequest"),
    :schema_element => [
      ["requestHeader", ["MySoap::Interface615174391::RequestHeaderType", XSD::QName.new(nil, "RequestHeader")]],
      ["giftCard", ["MySoap::Interface615174391::GiftCardType", XSD::QName.new(nil, "GiftCard")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::GiftCardTransactionResponseType,
    :schema_name => XSD::QName.new(NsV2, "CheckBalanceOnGiftCardResponse"),
    :schema_element => [
      ["responseHeader", ["MySoap::Interface615174391::ResponseHeaderType", XSD::QName.new(nil, "ResponseHeader")]],
      ["giftCard", ["MySoap::Interface615174391::GiftCardType", XSD::QName.new(nil, "GiftCard")]],
      ["giftCardTransactionResponseData", ["MySoap::Interface615174391::GiftCardAuthorizationType", XSD::QName.new(nil, "GiftCardTransactionResponseData")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::GiftCardTransactionRequestType,
    :schema_name => XSD::QName.new(NsV2, "RedeemGiftCardRequest"),
    :schema_element => [
      ["requestHeader", ["MySoap::Interface615174391::RequestHeaderType", XSD::QName.new(nil, "RequestHeader")]],
      ["giftCard", ["MySoap::Interface615174391::GiftCardType", XSD::QName.new(nil, "GiftCard")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::GiftCardTransactionResponseType,
    :schema_name => XSD::QName.new(NsV2, "RedeemGiftCardResponse"),
    :schema_element => [
      ["responseHeader", ["MySoap::Interface615174391::ResponseHeaderType", XSD::QName.new(nil, "ResponseHeader")]],
      ["giftCard", ["MySoap::Interface615174391::GiftCardType", XSD::QName.new(nil, "GiftCard")]],
      ["giftCardTransactionResponseData", ["MySoap::Interface615174391::GiftCardAuthorizationType", XSD::QName.new(nil, "GiftCardTransactionResponseData")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::GiftCardTransactionRequestType,
    :schema_name => XSD::QName.new(NsV2, "VoidRedeemGiftCardRequest"),
    :schema_element => [
      ["requestHeader", ["MySoap::Interface615174391::RequestHeaderType", XSD::QName.new(nil, "RequestHeader")]],
      ["giftCard", ["MySoap::Interface615174391::GiftCardType", XSD::QName.new(nil, "GiftCard")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::GiftCardTransactionResponseType,
    :schema_name => XSD::QName.new(NsV2, "VoidRedeemGiftCardResponse"),
    :schema_element => [
      ["responseHeader", ["MySoap::Interface615174391::ResponseHeaderType", XSD::QName.new(nil, "ResponseHeader")]],
      ["giftCard", ["MySoap::Interface615174391::GiftCardType", XSD::QName.new(nil, "GiftCard")]],
      ["giftCardTransactionResponseData", ["MySoap::Interface615174391::GiftCardAuthorizationType", XSD::QName.new(nil, "GiftCardTransactionResponseData")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::ServiceAliveRequestType,
    :schema_name => XSD::QName.new(NsV2, "ServiceAliveRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::ServiceAliveResponseType,
    :schema_name => XSD::QName.new(NsV2, "ServiceAliveResponse"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface615174391::PaymentAuthorizationFaultMessageType,
    :schema_name => XSD::QName.new(NsFaults, "PaymentAuthorizationFaultMessage"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )
end

end; end
