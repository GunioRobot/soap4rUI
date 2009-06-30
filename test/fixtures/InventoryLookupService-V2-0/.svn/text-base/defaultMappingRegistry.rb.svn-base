require 'default.rb'
require 'soap/mapping'

module MySoap; module InterfaceOne

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsFaults = "http://services.gid.gap.com/inventorylookup/v2/faults"
  NsV1 = "http://schemas.gid.gap.com/servicealive/v1"
  NsV2 = "http://schemas.gid.gap.com/inventorylookup/v2"

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::FindInventoryRequestType,
    :schema_type => XSD::QName.new(NsV2, "FindInventoryRequestType"),
    :schema_element => [
      ["requestor", ["MySoap::InterfaceOne::RequestorType", XSD::QName.new(nil, "Requestor")]],
      ["findItems", ["MySoap::InterfaceOne::FindItemsType", XSD::QName.new(nil, "FindItems")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::RequestorType,
    :schema_type => XSD::QName.new(NsV2, "RequestorType"),
    :schema_element => [
      ["programId", ["SOAP::SOAPString", XSD::QName.new(nil, "ProgramId")]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(nil, "UserId")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::FindItemsType,
    :schema_type => XSD::QName.new(NsV2, "FindItemsType"),
    :schema_element => [
      ["findItem", ["MySoap::InterfaceOne::FindItemType[]", XSD::QName.new(nil, "FindItem")], [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::FindItemType,
    :schema_type => XSD::QName.new(NsV2, "FindItemType"),
    :schema_element => [
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]],
      ["itemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemId")]],
      ["lineId", ["SOAP::SOAPInt", XSD::QName.new(nil, "LineId")]],
      ["isOrderable", ["SOAP::SOAPString", XSD::QName.new(nil, "IsOrderable")]],
      ["requestedQuantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "RequestedQuantity")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::FindInventoryResponseType,
    :schema_type => XSD::QName.new(NsV2, "FindInventoryResponseType"),
    :schema_element => [
      ["itemList", ["MySoap::InterfaceOne::ItemListType", XSD::QName.new(nil, "ItemList")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::ItemListType,
    :schema_type => XSD::QName.new(NsV2, "ItemListType"),
    :schema_element => [
      ["availableItems", ["MySoap::InterfaceOne::AvailableItemsType", XSD::QName.new(nil, "AvailableItems")]],
      ["unavailableItems", ["MySoap::InterfaceOne::UnavailableItemsType", XSD::QName.new(nil, "UnavailableItems")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::AvailableItemsType,
    :schema_type => XSD::QName.new(NsV2, "AvailableItemsType"),
    :schema_element => [
      ["availableItem", ["MySoap::InterfaceOne::AvailableItemType[]", XSD::QName.new(nil, "AvailableItem")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::UnavailableItemsType,
    :schema_type => XSD::QName.new(NsV2, "UnavailableItemsType"),
    :schema_element => [
      ["unavailableItem", ["MySoap::InterfaceOne::UnavailableItemType[]", XSD::QName.new(nil, "UnavailableItem")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::AvailableItemType,
    :schema_type => XSD::QName.new(NsV2, "AvailableItemType"),
    :schema_element => [
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]],
      ["itemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemId")]],
      ["lineId", ["SOAP::SOAPInt", XSD::QName.new(nil, "LineId")]],
      ["isOrderable", ["SOAP::SOAPString", XSD::QName.new(nil, "IsOrderable")]],
      ["availableQuantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "AvailableQuantity")]],
      ["availableShipDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "AvailableShipDate")]],
      ["distributionCenter", ["SOAP::SOAPString", XSD::QName.new(nil, "DistributionCenter")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::UnavailableItemType,
    :schema_type => XSD::QName.new(NsV2, "UnavailableItemType"),
    :schema_element => [
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]],
      ["itemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemId")]],
      ["lineId", ["SOAP::SOAPInt", XSD::QName.new(nil, "LineId")]],
      ["requestedQuantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "RequestedQuantity")]],
      ["availableQuantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "AvailableQuantity")]],
      ["unavailableQuantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "UnavailableQuantity")]],
      ["unavailableReason", ["SOAP::SOAPString", XSD::QName.new(nil, "UnavailableReason")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::InventoryLookupServiceFaultMessageType,
    :schema_type => XSD::QName.new(NsV2, "InventoryLookupServiceFaultMessageType"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveRequestType"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::InterfaceOne::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::FindInventoryRequestType,
    :schema_type => XSD::QName.new(NsV2, "FindInventoryRequestType"),
    :schema_element => [
      ["requestor", ["MySoap::InterfaceOne::RequestorType", XSD::QName.new(nil, "Requestor")]],
      ["findItems", ["MySoap::InterfaceOne::FindItemsType", XSD::QName.new(nil, "FindItems")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::RequestorType,
    :schema_type => XSD::QName.new(NsV2, "RequestorType"),
    :schema_element => [
      ["programId", ["SOAP::SOAPString", XSD::QName.new(nil, "ProgramId")]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(nil, "UserId")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::FindItemsType,
    :schema_type => XSD::QName.new(NsV2, "FindItemsType"),
    :schema_element => [
      ["findItem", ["MySoap::InterfaceOne::FindItemType[]", XSD::QName.new(nil, "FindItem")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::FindItemType,
    :schema_type => XSD::QName.new(NsV2, "FindItemType"),
    :schema_element => [
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]],
      ["itemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemId")]],
      ["lineId", ["SOAP::SOAPInt", XSD::QName.new(nil, "LineId")]],
      ["isOrderable", ["SOAP::SOAPString", XSD::QName.new(nil, "IsOrderable")]],
      ["requestedQuantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "RequestedQuantity")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::FindInventoryResponseType,
    :schema_type => XSD::QName.new(NsV2, "FindInventoryResponseType"),
    :schema_element => [
      ["itemList", ["MySoap::InterfaceOne::ItemListType", XSD::QName.new(nil, "ItemList")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ItemListType,
    :schema_type => XSD::QName.new(NsV2, "ItemListType"),
    :schema_element => [
      ["availableItems", ["MySoap::InterfaceOne::AvailableItemsType", XSD::QName.new(nil, "AvailableItems")]],
      ["unavailableItems", ["MySoap::InterfaceOne::UnavailableItemsType", XSD::QName.new(nil, "UnavailableItems")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::AvailableItemsType,
    :schema_type => XSD::QName.new(NsV2, "AvailableItemsType"),
    :schema_element => [
      ["availableItem", ["MySoap::InterfaceOne::AvailableItemType[]", XSD::QName.new(nil, "AvailableItem")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::UnavailableItemsType,
    :schema_type => XSD::QName.new(NsV2, "UnavailableItemsType"),
    :schema_element => [
      ["unavailableItem", ["MySoap::InterfaceOne::UnavailableItemType[]", XSD::QName.new(nil, "UnavailableItem")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::AvailableItemType,
    :schema_type => XSD::QName.new(NsV2, "AvailableItemType"),
    :schema_element => [
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]],
      ["itemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemId")]],
      ["lineId", ["SOAP::SOAPInt", XSD::QName.new(nil, "LineId")]],
      ["isOrderable", ["SOAP::SOAPString", XSD::QName.new(nil, "IsOrderable")]],
      ["availableQuantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "AvailableQuantity")]],
      ["availableShipDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "AvailableShipDate")]],
      ["distributionCenter", ["SOAP::SOAPString", XSD::QName.new(nil, "DistributionCenter")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::UnavailableItemType,
    :schema_type => XSD::QName.new(NsV2, "UnavailableItemType"),
    :schema_element => [
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]],
      ["itemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemId")]],
      ["lineId", ["SOAP::SOAPInt", XSD::QName.new(nil, "LineId")]],
      ["requestedQuantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "RequestedQuantity")]],
      ["availableQuantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "AvailableQuantity")]],
      ["unavailableQuantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "UnavailableQuantity")]],
      ["unavailableReason", ["SOAP::SOAPString", XSD::QName.new(nil, "UnavailableReason")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::InventoryLookupServiceFaultMessageType,
    :schema_type => XSD::QName.new(NsV2, "InventoryLookupServiceFaultMessageType"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveRequestType"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::FindInventoryRequestType,
    :schema_name => XSD::QName.new(NsV2, "FindInventoryRequest"),
    :schema_element => [
      ["requestor", ["MySoap::InterfaceOne::RequestorType", XSD::QName.new(nil, "Requestor")]],
      ["findItems", ["MySoap::InterfaceOne::FindItemsType", XSD::QName.new(nil, "FindItems")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::FindInventoryResponseType,
    :schema_name => XSD::QName.new(NsV2, "FindInventoryResponse"),
    :schema_element => [
      ["itemList", ["MySoap::InterfaceOne::ItemListType", XSD::QName.new(nil, "ItemList")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveRequestType,
    :schema_name => XSD::QName.new(NsV2, "ServiceAliveRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceAliveResponseType,
    :schema_name => XSD::QName.new(NsV2, "ServiceAliveResponse"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::ServiceUnavailableFaultMessageType,
    :schema_name => XSD::QName.new(NsV2, "ServiceUnavailableFaultMessage"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::InterfaceOne::InventoryLookupServiceFaultMessageType,
    :schema_name => XSD::QName.new(NsFaults, "InventoryLookupServiceFaultMessage"),
    :schema_element => [
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ErrorCode")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )
end

end; end
