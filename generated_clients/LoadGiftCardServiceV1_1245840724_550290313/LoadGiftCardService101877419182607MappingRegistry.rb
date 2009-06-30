require 'LoadGiftCardService101877419182607.rb'
require 'soap/mapping'

module MySoap; module Interface491263

module LoadGiftCardServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsDtoV1RtcaServicesGidGapCom = "http://dto.v1.rtca.services.gid.gap.com"
  NsDtoV1ServicesGidGapCom = "http://dto.v1.services.gid.gap.com"
  NsExceptionProviderV1RtcaServicesGidGapCom = "http://exception.provider.v1.rtca.services.gid.gap.com"

  EncodedRegistry.register(
    :class => MySoap::Interface491263::GiftCard,
    :schema_type => XSD::QName.new(NsDtoV1ServicesGidGapCom, "GiftCard"),
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
    :class => MySoap::Interface491263::GiftCardAuthorization,
    :schema_type => XSD::QName.new(NsDtoV1ServicesGidGapCom, "GiftCardAuthorization"),
    :schema_element => [
      ["referenceNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ReferenceNumber")]],
      ["authDate", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthDate")]],
      ["authTime", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthTime")]],
      ["authSource", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthSource")]],
      ["authCode", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthCode")]],
      ["responseCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ResponseCode")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "Status")]],
      ["responseDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ResponseDescription")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::RequestHeader,
    :schema_type => XSD::QName.new(NsDtoV1RtcaServicesGidGapCom, "RequestHeader"),
    :schema_element => [
      ["channel", ["SOAP::SOAPString", XSD::QName.new(nil, "Channel")]],
      ["storeNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreNumber")]],
      ["requestIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestIdentifier")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::ResponseHeader,
    :schema_type => XSD::QName.new(NsDtoV1RtcaServicesGidGapCom, "ResponseHeader"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "Result")]],
      ["requestIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestIdentifier")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::GiftCardTransactionRequest,
    :schema_type => XSD::QName.new(NsDtoV1RtcaServicesGidGapCom, "GiftCardTransactionRequest"),
    :schema_element => [
      ["requestHeader", ["MySoap::Interface491263::RequestHeader", XSD::QName.new(nil, "RequestHeader")]],
      ["giftCard", ["MySoap::Interface491263::GiftCard", XSD::QName.new(nil, "GiftCard")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::GiftCardTransactionResponse,
    :schema_type => XSD::QName.new(NsDtoV1RtcaServicesGidGapCom, "GiftCardTransactionResponse"),
    :schema_element => [
      ["responseHeader", ["MySoap::Interface491263::ResponseHeader", XSD::QName.new(nil, "ResponseHeader")]],
      ["giftCard", ["MySoap::Interface491263::GiftCard", XSD::QName.new(nil, "GiftCard")]],
      ["giftCardTxnResponseData", ["MySoap::Interface491263::GiftCardAuthorization", XSD::QName.new(nil, "GiftCardTxnResponseData")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::IsServiceAliveResponse,
    :schema_type => XSD::QName.new(NsDtoV1RtcaServicesGidGapCom, "IsServiceAliveResponse"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["isWebServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsWebServiceAlive")]],
      ["isTandemAlive", ["SOAP::SOAPString", XSD::QName.new(nil, "IsTandemAlive")]],
      ["startTime", ["SOAP::SOAPString", XSD::QName.new(nil, "StartTime")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::LoadGiftCardServiceException,
    :schema_type => XSD::QName.new(NsExceptionProviderV1RtcaServicesGidGapCom, "LoadGiftCardServiceException"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::GiftCard,
    :schema_type => XSD::QName.new(NsDtoV1ServicesGidGapCom, "GiftCard"),
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
    :class => MySoap::Interface491263::GiftCardAuthorization,
    :schema_type => XSD::QName.new(NsDtoV1ServicesGidGapCom, "GiftCardAuthorization"),
    :schema_element => [
      ["referenceNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ReferenceNumber")]],
      ["authDate", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthDate")]],
      ["authTime", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthTime")]],
      ["authSource", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthSource")]],
      ["authCode", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthCode")]],
      ["responseCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ResponseCode")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "Status")]],
      ["responseDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ResponseDescription")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::RequestHeader,
    :schema_type => XSD::QName.new(NsDtoV1RtcaServicesGidGapCom, "RequestHeader"),
    :schema_element => [
      ["channel", ["SOAP::SOAPString", XSD::QName.new(nil, "Channel")]],
      ["storeNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreNumber")]],
      ["requestIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestIdentifier")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::ResponseHeader,
    :schema_type => XSD::QName.new(NsDtoV1RtcaServicesGidGapCom, "ResponseHeader"),
    :schema_element => [
      ["result", ["SOAP::SOAPString", XSD::QName.new(nil, "Result")]],
      ["requestIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestIdentifier")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::GiftCardTransactionRequest,
    :schema_type => XSD::QName.new(NsDtoV1RtcaServicesGidGapCom, "GiftCardTransactionRequest"),
    :schema_element => [
      ["requestHeader", ["MySoap::Interface491263::RequestHeader", XSD::QName.new(nil, "RequestHeader")]],
      ["giftCard", ["MySoap::Interface491263::GiftCard", XSD::QName.new(nil, "GiftCard")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::GiftCardTransactionResponse,
    :schema_type => XSD::QName.new(NsDtoV1RtcaServicesGidGapCom, "GiftCardTransactionResponse"),
    :schema_element => [
      ["responseHeader", ["MySoap::Interface491263::ResponseHeader", XSD::QName.new(nil, "ResponseHeader")]],
      ["giftCard", ["MySoap::Interface491263::GiftCard", XSD::QName.new(nil, "GiftCard")]],
      ["giftCardTxnResponseData", ["MySoap::Interface491263::GiftCardAuthorization", XSD::QName.new(nil, "GiftCardTxnResponseData")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::IsServiceAliveResponse,
    :schema_type => XSD::QName.new(NsDtoV1RtcaServicesGidGapCom, "IsServiceAliveResponse"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["isWebServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsWebServiceAlive")]],
      ["isTandemAlive", ["SOAP::SOAPString", XSD::QName.new(nil, "IsTandemAlive")]],
      ["startTime", ["SOAP::SOAPString", XSD::QName.new(nil, "StartTime")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::LoadGiftCardServiceException,
    :schema_type => XSD::QName.new(NsExceptionProviderV1RtcaServicesGidGapCom, "LoadGiftCardServiceException"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )
end

end; end
