require 'IcmFindInventoryService-V1-01012411084684.rb'
require 'soap/mapping'

module MySoap; module Interface424398162

module IcmFindInventoryServiceV10MappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV1 = "http://schemas.gid.gap.com/icm/findInventory/v1"

  EncodedRegistry.register(
    :class => MySoap::Interface424398162::PromiseLinesInputType,
    :schema_type => XSD::QName.new(NsV1, "PromiseLinesInputType"),
    :schema_element => [
      ["skuId", ["SOAP::SOAPString", XSD::QName.new(nil, "skuId")]],
      ["dc", ["SOAP::SOAPString", XSD::QName.new(nil, "dc")]],
      ["market", ["SOAP::SOAPString", XSD::QName.new(nil, "market")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface424398162::FindInventoryResponseType,
    :schema_type => XSD::QName.new(NsV1, "FindInventoryResponseType"),
    :schema_element => [
      ["promiseLinesOutput", ["MySoap::Interface424398162::PromiseLinesOutputType[]", XSD::QName.new(nil, "PromiseLinesOutput")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface424398162::PromiseLinesOutputType,
    :schema_type => XSD::QName.new(NsV1, "PromiseLinesOutputType"),
    :schema_element => [
      ["skuId", ["SOAP::SOAPString", XSD::QName.new(nil, "skuId")]],
      ["quantity", ["SOAP::SOAPString", XSD::QName.new(nil, "quantity")]],
      ["dc", ["SOAP::SOAPString", XSD::QName.new(nil, "dc")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface424398162::FindGlobalInventoryRequestType,
    :schema_type => XSD::QName.new(NsV1, "FindGlobalInventoryRequestType"),
    :schema_element => [
      ["market", ["SOAP::SOAPString", XSD::QName.new(nil, "market")]],
      [
        ["itemId", ["SOAP::SOAPString[]", XSD::QName.new(nil, "itemId")]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface424398162::PromiseLinesInputType,
    :schema_type => XSD::QName.new(NsV1, "PromiseLinesInputType"),
    :schema_element => [
      ["skuId", ["SOAP::SOAPString", XSD::QName.new(nil, "skuId")]],
      ["dc", ["SOAP::SOAPString", XSD::QName.new(nil, "dc")]],
      ["market", ["SOAP::SOAPString", XSD::QName.new(nil, "market")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface424398162::FindInventoryResponseType,
    :schema_type => XSD::QName.new(NsV1, "FindInventoryResponseType"),
    :schema_element => [
      ["promiseLinesOutput", ["MySoap::Interface424398162::PromiseLinesOutputType[]", XSD::QName.new(nil, "PromiseLinesOutput")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface424398162::PromiseLinesOutputType,
    :schema_type => XSD::QName.new(NsV1, "PromiseLinesOutputType"),
    :schema_element => [
      ["skuId", ["SOAP::SOAPString", XSD::QName.new(nil, "skuId")]],
      ["quantity", ["SOAP::SOAPString", XSD::QName.new(nil, "quantity")]],
      ["dc", ["SOAP::SOAPString", XSD::QName.new(nil, "dc")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface424398162::FindGlobalInventoryRequestType,
    :schema_type => XSD::QName.new(NsV1, "FindGlobalInventoryRequestType"),
    :schema_element => [
      ["market", ["SOAP::SOAPString", XSD::QName.new(nil, "market")]],
      [
        ["itemId", ["SOAP::SOAPString[]", XSD::QName.new(nil, "itemId")]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface424398162::FindInventoryRequest,
    :schema_name => XSD::QName.new(NsV1, "FindInventoryRequest"),
    :schema_element => [
      ["promiseLinesInput", ["MySoap::Interface424398162::PromiseLinesInputType[]", XSD::QName.new(nil, "PromiseLinesInput")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface424398162::FindInventoryResponseType,
    :schema_name => XSD::QName.new(NsV1, "FindInventoryResponse"),
    :schema_element => [
      ["promiseLinesOutput", ["MySoap::Interface424398162::PromiseLinesOutputType[]", XSD::QName.new(nil, "PromiseLinesOutput")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface424398162::FindInventoryByDCRequest,
    :schema_name => XSD::QName.new(NsV1, "FindInventoryByDCRequest"),
    :schema_element => [
      ["market", ["SOAP::SOAPString", XSD::QName.new(nil, "market")]],
      [
        ["itemId", ["SOAP::SOAPString[]", XSD::QName.new(nil, "itemId")]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface424398162::FindInventoryResponseType,
    :schema_name => XSD::QName.new(NsV1, "FindInventoryByDCResponse"),
    :schema_element => [
      ["promiseLinesOutput", ["MySoap::Interface424398162::PromiseLinesOutputType[]", XSD::QName.new(nil, "PromiseLinesOutput")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface424398162::FindGlobalInventoryRequestType,
    :schema_name => XSD::QName.new(NsV1, "FindGlobalInventoryRequest"),
    :schema_element => [
      ["market", ["SOAP::SOAPString", XSD::QName.new(nil, "market")]],
      [
        ["itemId", ["SOAP::SOAPString[]", XSD::QName.new(nil, "itemId")]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface424398162::FindInventoryResponseType,
    :schema_name => XSD::QName.new(NsV1, "FindGlobalInventoryResponse"),
    :schema_element => [
      ["promiseLinesOutput", ["MySoap::Interface424398162::PromiseLinesOutputType[]", XSD::QName.new(nil, "PromiseLinesOutput")]]
    ]
  )
end

end; end
