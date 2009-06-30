require 'default101877419182607.rb'
require 'soap/mapping'

module MySoap; module Interface491263

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsDtoV1FindInventoryServicesGidGapCom = "http://dto.v1.findInventory.services.gid.gap.com"
  NsDtoYantraimplServicesCommonGidGapCom = "http://dto.yantraimpl.services.common.gid.gap.com"
  NsExceptionProviderV1FindInventoryServicesGidGapCom = "http://exception.provider.v1.findInventory.services.gid.gap.com"

  EncodedRegistry.register(
    :class => MySoap::Interface491263::FindInventoryRequestDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "FindInventoryRequestDTO"),
    :schema_element => [
      ["promiseObj", ["MySoap::Interface491263::PromiseDTO", XSD::QName.new(nil, "promiseObj")]],
      ["envObj", ["MySoap::Interface491263::EnvironmentDTO", XSD::QName.new(nil, "envObj")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::PromiseDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "PromiseDTO"),
    :schema_element => [
      ["sellerOrgCode", ["SOAP::SOAPString", XSD::QName.new(nil, "sellerOrgCode")]],
      ["promiseLines", ["MySoap::Interface491263::ArrayOf_tns2_PromiseLineDTO", XSD::QName.new(nil, "promiseLines")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::PromiseLineDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "PromiseLineDTO"),
    :schema_element => [
      ["isOrderable", ["SOAP::SOAPString", XSD::QName.new(nil, "isOrderable")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(nil, "itemID")]],
      ["lineId", ["SOAP::SOAPInt", XSD::QName.new(nil, "lineId")]],
      ["requiredQty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "requiredQty")]],
      ["brandName", ["SOAP::SOAPString", XSD::QName.new(nil, "brandName")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::FindInventoryResponseDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "FindInventoryResponseDTO"),
    :schema_element => [
      ["itemList", ["MySoap::Interface491263::ItemListDTO", XSD::QName.new(nil, "itemList")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::ItemListDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "ItemListDTO"),
    :schema_element => [
      ["availableItems", ["MySoap::Interface491263::ArrayOf_tns2_AvailableItemDTO", XSD::QName.new(nil, "availableItems")]],
      ["unavailableItems", ["MySoap::Interface491263::ArrayOf_tns2_UnavailableItemDTO", XSD::QName.new(nil, "unavailableItems")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::AvailableItemDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "AvailableItemDTO"),
    :schema_element => [
      ["brandName", ["SOAP::SOAPString", XSD::QName.new(nil, "brandName")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(nil, "itemID")]],
      ["lineID", ["SOAP::SOAPInt", XSD::QName.new(nil, "lineID")]],
      ["onOrder", ["SOAP::SOAPString", XSD::QName.new(nil, "onOrder")]],
      ["quantity", ["SOAP::SOAPDouble", XSD::QName.new(nil, "quantity")]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "shipDate")]],
      ["shipNode", ["SOAP::SOAPString", XSD::QName.new(nil, "shipNode")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::UnavailableItemDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "UnavailableItemDTO"),
    :schema_element => [
      ["brandName", ["SOAP::SOAPString", XSD::QName.new(nil, "brandName")]],
      ["assignedQty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "assignedQty")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(nil, "itemID")]],
      ["lineID", ["SOAP::SOAPInt", XSD::QName.new(nil, "lineID")]],
      ["requiredQty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "requiredQty")]],
      ["unavailableQty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "unavailableQty")]],
      ["unavailableReason", ["SOAP::SOAPString", XSD::QName.new(nil, "unavailableReason")]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface491263::ArrayOf_tns2_PromiseLineDTO,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "PromiseLineDTO") }
  )

  EncodedRegistry.set(
    MySoap::Interface491263::ArrayOf_tns2_AvailableItemDTO,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "AvailableItemDTO") }
  )

  EncodedRegistry.set(
    MySoap::Interface491263::ArrayOf_tns2_UnavailableItemDTO,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "UnavailableItemDTO") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::EnvironmentDTO,
    :schema_type => XSD::QName.new(NsDtoYantraimplServicesCommonGidGapCom, "EnvironmentDTO"),
    :schema_element => [
      ["progId", ["SOAP::SOAPString", XSD::QName.new(nil, "progId")]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(nil, "userId")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface491263::FindInventoryServiceException,
    :schema_type => XSD::QName.new(NsExceptionProviderV1FindInventoryServicesGidGapCom, "FindInventoryServiceException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::FindInventoryRequestDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "FindInventoryRequestDTO"),
    :schema_element => [
      ["promiseObj", ["MySoap::Interface491263::PromiseDTO", XSD::QName.new(nil, "promiseObj")]],
      ["envObj", ["MySoap::Interface491263::EnvironmentDTO", XSD::QName.new(nil, "envObj")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::PromiseDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "PromiseDTO"),
    :schema_element => [
      ["sellerOrgCode", ["SOAP::SOAPString", XSD::QName.new(nil, "sellerOrgCode")]],
      ["promiseLines", ["MySoap::Interface491263::ArrayOf_tns2_PromiseLineDTO", XSD::QName.new(nil, "promiseLines")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::PromiseLineDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "PromiseLineDTO"),
    :schema_element => [
      ["isOrderable", ["SOAP::SOAPString", XSD::QName.new(nil, "isOrderable")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(nil, "itemID")]],
      ["lineId", ["SOAP::SOAPInt", XSD::QName.new(nil, "lineId")]],
      ["requiredQty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "requiredQty")]],
      ["brandName", ["SOAP::SOAPString", XSD::QName.new(nil, "brandName")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::FindInventoryResponseDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "FindInventoryResponseDTO"),
    :schema_element => [
      ["itemList", ["MySoap::Interface491263::ItemListDTO", XSD::QName.new(nil, "itemList")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::ItemListDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "ItemListDTO"),
    :schema_element => [
      ["availableItems", ["MySoap::Interface491263::ArrayOf_tns2_AvailableItemDTO", XSD::QName.new(nil, "availableItems")]],
      ["unavailableItems", ["MySoap::Interface491263::ArrayOf_tns2_UnavailableItemDTO", XSD::QName.new(nil, "unavailableItems")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::AvailableItemDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "AvailableItemDTO"),
    :schema_element => [
      ["brandName", ["SOAP::SOAPString", XSD::QName.new(nil, "brandName")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(nil, "itemID")]],
      ["lineID", ["SOAP::SOAPInt", XSD::QName.new(nil, "lineID")]],
      ["onOrder", ["SOAP::SOAPString", XSD::QName.new(nil, "onOrder")]],
      ["quantity", ["SOAP::SOAPDouble", XSD::QName.new(nil, "quantity")]],
      ["shipDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "shipDate")]],
      ["shipNode", ["SOAP::SOAPString", XSD::QName.new(nil, "shipNode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::UnavailableItemDTO,
    :schema_type => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "UnavailableItemDTO"),
    :schema_element => [
      ["brandName", ["SOAP::SOAPString", XSD::QName.new(nil, "brandName")]],
      ["assignedQty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "assignedQty")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(nil, "itemID")]],
      ["lineID", ["SOAP::SOAPInt", XSD::QName.new(nil, "lineID")]],
      ["requiredQty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "requiredQty")]],
      ["unavailableQty", ["SOAP::SOAPDouble", XSD::QName.new(nil, "unavailableQty")]],
      ["unavailableReason", ["SOAP::SOAPString", XSD::QName.new(nil, "unavailableReason")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::EnvironmentDTO,
    :schema_type => XSD::QName.new(NsDtoYantraimplServicesCommonGidGapCom, "EnvironmentDTO"),
    :schema_element => [
      ["progId", ["SOAP::SOAPString", XSD::QName.new(nil, "progId")]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(nil, "userId")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::FindInventoryServiceException,
    :schema_type => XSD::QName.new(NsExceptionProviderV1FindInventoryServicesGidGapCom, "FindInventoryServiceException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::FindInventoryRequestDTO,
    :schema_name => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "FindInventoryRequestDTO"),
    :schema_element => [
      ["promiseObj", ["MySoap::Interface491263::PromiseDTO", XSD::QName.new(nil, "promiseObj")]],
      ["envObj", ["MySoap::Interface491263::EnvironmentDTO", XSD::QName.new(nil, "envObj")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::FindInventoryResponseDTO,
    :schema_name => XSD::QName.new(NsDtoV1FindInventoryServicesGidGapCom, "FindInventoryResponseDTO"),
    :schema_element => [
      ["itemList", ["MySoap::Interface491263::ItemListDTO", XSD::QName.new(nil, "itemList")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface491263::FindInventoryServiceException,
    :schema_name => XSD::QName.new(NsExceptionProviderV1FindInventoryServicesGidGapCom, "FindInventoryServiceException"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )
end

end; end
