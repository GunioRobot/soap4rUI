require 'default1242251284.rb'
require 'soap/mapping'

module MySoap; module Interface473397799

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV1 = "http://schemas.gid.gap.com/servicealive/v1"
  NsV2 = "http://schemas.gid.gap.com/catalog/faults/v2"
  NsV2_0 = "http://schemas.gid.gap.com/servicecatalog/v2"
  NsV2_1 = "http://schemas.gid.gap.com/catalog/v2"

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::CatalogServiceFault,
    :schema_type => XSD::QName.new(NsV2, "CatalogServiceFault"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::ItemNotFoundFault,
    :schema_type => XSD::QName.new(NsV2, "ItemNotFoundFault"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::ProductInfoRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "ProductInfoRequestType"),
    :schema_element => [
      ["categoryBusinessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "CategoryBusinessCatalogItemId")]],
      ["categoryCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CategoryCatalogItemId")]],
      ["mapKey", ["SOAP::SOAPString", XSD::QName.new(nil, "MapKey")], [0, 1]],
      ["skuBusinessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuBusinessCatalogItemId")]],
      ["skuCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SkuCatalogItemId")]],
      ["styleColorBusinessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleColorBusinessCatalogItemId")], [0, 1]],
      ["viewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ViewDate")], [0, 1]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(nil, "Index")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::ProductInfoResultType,
    :schema_type => XSD::QName.new(NsV2_0, "ProductInfoResultType"),
    :schema_element => [
      ["siImageUri", ["SOAP::SOAPString", XSD::QName.new(nil, "SiImageUri")], [0, 1]],
      ["thumbnailImageUri", ["SOAP::SOAPString", XSD::QName.new(nil, "ThumbnailImageUri")], [0, 1]],
      ["active", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Active")]],
      ["baseColorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BaseColorCode")], [0, 1]],
      ["baseColorName", ["SOAP::SOAPString", XSD::QName.new(nil, "BaseColorName")], [0, 1]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CategoryId")]],
      ["categoryName", ["SOAP::SOAPString", XSD::QName.new(nil, "CategoryName")], [0, 1]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")], [0, 1]],
      ["categoryNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "CategoryNumber")], [0, 1]],
      ["colorCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ColorCatalogItemId")]],
      ["colorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ColorCode")], [0, 1]],
      ["colorDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ColorDescription")], [0, 1]],
      ["businessParentIds", ["SOAP::SOAPString[]", XSD::QName.new(nil, "BusinessParentIds")], [0, nil]],
      ["companyCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CompanyCatalogItemId")]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(nil, "CompanyName")], [0, 1]],
      ["companyNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "CompanyNumber")]],
      ["divisionCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "DivisionCatalogItemId")]],
      ["divisionName", ["SOAP::SOAPString", XSD::QName.new(nil, "DivisionName")], [0, 1]],
      ["divisionNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "DivisionNumber")]],
      ["giftWrappable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "GiftWrappable")]],
      ["hazMat", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HazMat")]],
      ["imageURI", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageURI")], [0, 1]],
      ["inventoryLevel", ["SOAP::SOAPInt", XSD::QName.new(nil, "InventoryLevel")]],
      ["marketingFlags", ["SOAP::SOAPString", XSD::QName.new(nil, "MarketingFlags")], [0, 1]],
      ["maxOrderQuantityAllowed", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxOrderQuantityAllowed")]],
      ["mktFlagfmtTypId", ["SOAP::SOAPInt", XSD::QName.new(nil, "MktFlagfmtTypId")]],
      ["mktFlagId", ["SOAP::SOAPInt", XSD::QName.new(nil, "MktFlagId")]],
      ["onSale", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "OnSale")]],
      ["orderDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "OrderDate")], [0, 1]],
      ["productTypeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ProductTypeId")]],
      ["productTypeName", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductTypeName")], [0, 1]],
      ["purchaseSizeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurchaseSizeId")]],
      ["size1Description", ["SOAP::SOAPString", XSD::QName.new(nil, "Size1Description")], [0, 1]],
      ["size2Description", ["SOAP::SOAPString", XSD::QName.new(nil, "Size2Description")], [0, 1]],
      ["sizeCode", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeCode")], [0, 1]],
      ["sizeDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeDescription")], [0, 1]],
      ["skuCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SkuCatalogItemId")]],
      ["skuDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuDescription")], [0, 1]],
      ["skuNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuNumber")], [0, 1]],
      ["styleCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "StyleCatalogItemId")]],
      ["styleColorMarketingFlagIds", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "StyleColorMarketingFlagIds")], [0, nil]],
      ["styleColorNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleColorNumber")], [0, 1]],
      ["styleDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleDescription")], [0, 1]],
      ["styleInventoryStatus", ["SOAP::SOAPInt", XSD::QName.new(nil, "StyleInventoryStatus")]],
      ["styleMarketingFlagIds", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "StyleMarketingFlagIds")], [0, nil]],
      ["parentItemIds", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "ParentItemIds")], [0, nil]],
      ["styleNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleNumber")], [0, 1]],
      ["styleOverViewDesc", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleOverViewDesc")], [0, 1]],
      ["variantDesc", ["SOAP::SOAPString", XSD::QName.new(nil, "VariantDesc")], [0, 1]],
      ["variantId", ["SOAP::SOAPInt", XSD::QName.new(nil, "VariantId")]],
      ["colorLabelName", ["SOAP::SOAPString", XSD::QName.new(nil, "ColorLabelName")], [0, 1]],
      ["listPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "ListPrice")], [0, 1]],
      ["merchandise", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Merchandise")]],
      ["merchandiseType", ["SOAP::SOAPInt", XSD::QName.new(nil, "MerchandiseType")]],
      ["orderable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Orderable")]],
      ["priceType", ["SOAP::SOAPShort", XSD::QName.new(nil, "PriceType")]],
      ["promptVendorName", ["SOAP::SOAPString", XSD::QName.new(nil, "PromptVendorName")], [0, 1]],
      ["sellPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "SellPrice")], [0, 1]],
      ["sizeDim1LabelName", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeDim1LabelName")], [0, 1]],
      ["sizeDim2LabelName", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeDim2LabelName")], [0, 1]],
      ["taxCode", ["SOAP::SOAPString", XSD::QName.new(nil, "taxCode")], [0, 1]],
      ["upcCode", ["SOAP::SOAPString", XSD::QName.new(nil, "UpcCode")], [0, 1]],
      ["vendorId", ["SOAP::SOAPString", XSD::QName.new(nil, "VendorId")], [0, 1]],
      ["vendorStyleNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "VendorStyleNumber")], [0, 1]],
      ["vendorUpcCode", ["SOAP::SOAPString", XSD::QName.new(nil, "VendorUpcCode")], [0, 1]],
      ["webVendorName", ["SOAP::SOAPString", XSD::QName.new(nil, "WebVendorName")], [0, 1]],
      ["productAvailabilityDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductAvailabilityDescription")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(nil, "Index")]],
      ["inDcDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "InDcDate")], [0, 1]],
      ["siteStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteStatus")], [0, 1]],
      ["eligibleReturnLocationCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EligibleReturnLocationCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::CatalogItemInfoRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "CatalogItemInfoRequestType"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPString", XSD::QName.new(nil, "BusinessId")]],
      ["catalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CatalogItemId")]],
      ["previewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "PreviewDate")]],
      ["catalogItemTypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "CatalogItemTypeId")]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::CatalogItemInfoResultType,
    :schema_type => XSD::QName.new(NsV2_0, "CatalogItemInfoResultType"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPString", XSD::QName.new(nil, "BusinessId")], [0, 1]],
      ["previewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "PreviewDate")], [0, 1]],
      ["catalogItemSubtypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "CatalogItemSubtypeId")]],
      ["catalogItemTypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "CatalogItemTypeId")]],
      ["onSale", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "OnSale")]],
      ["priceableItem", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PriceableItem")]],
      ["catalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CatalogItemId")]],
      ["parentStyleBusId", ["SOAP::SOAPString", XSD::QName.new(nil, "ParentStyleBusId")], [0, 1]],
      ["parentStyleColorBusId", ["SOAP::SOAPString", XSD::QName.new(nil, "ParentStyleColorBusId")], [0, 1]],
      ["parentStyleColorId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ParentStyleColorId")]],
      ["regularPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "RegularPrice")], [0, 1]],
      ["sellPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "SellPrice")], [0, 1]],
      ["parentStyleId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ParentStyleId")]],
      ["categoryDisplaySubtypeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CategoryDisplaySubtypeId")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::CatalogItemIdByLegacyCodeRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "CatalogItemIdByLegacyCodeRequestType"),
    :schema_element => [
      ["businessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "BusinessCatalogItemId")]],
      ["catalogItemType", ["SOAP::SOAPShort", XSD::QName.new(nil, "CatalogItemType")]],
      ["viewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ViewDate")]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::BaseSizeValueResponseType,
    :schema_type => XSD::QName.new(NsV2_0, "BaseSizeValueResponseType"),
    :schema_element => [
      ["baseSizeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "BaseSizeId")]],
      ["productDimensionId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ProductDimensionId")]],
      ["sizeCategoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeCategoryId")]],
      ["sizeDataTypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "SizeDataTypeId")]],
      ["sizeDimensionValueId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeDimensionValueId")]],
      ["sizeDimensionValueSortOrder", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeDimensionValueSortOrder")]],
      ["sizeVariantId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeVariantId")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::CatalogItemIdRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "CatalogItemIdRequestType"),
    :schema_element => [
      ["childItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ChildItemId")]],
      ["childType", ["SOAP::SOAPShort", XSD::QName.new(nil, "ChildType")]],
      ["parentItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ParentItemId")]],
      ["parentType", ["SOAP::SOAPShort", XSD::QName.new(nil, "ParentType")]],
      ["viewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ViewDate")]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::BaseSizeValueRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "BaseSizeValueRequestType"),
    :schema_element => [
      ["productDimensionId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ProductDimensionId")]],
      ["sizeCategoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeCategoryId")]],
      ["sizeDataTypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "SizeDataTypeId")]],
      ["sizeDimensionValueId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeDimensionValueId")]],
      ["sizeVariantId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeVariantId")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::ProductInfosRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "ProductInfosRequestType"),
    :schema_element => [
      ["productInfoRequestType", ["MySoap::Interface473397799::ProductInfoRequestType[]", XSD::QName.new(nil, "ProductInfoRequestType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::ProductInfosResponseType,
    :schema_type => XSD::QName.new(NsV2_0, "ProductInfosResponseType"),
    :schema_element => [
      ["productInfoResponseType", ["MySoap::Interface473397799::ProductInfoResultType[]", XSD::QName.new(nil, "ProductInfoResponseType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::NonMerchandiseItemsRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "NonMerchandiseItemsRequestType"),
    :schema_element => [
      ["nonMerchandiseCatalogItemType", ["SOAP::SOAPShort", XSD::QName.new(nil, "NonMerchandiseCatalogItemType")]],
      ["viewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ViewDate")]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::NonMerchandiseItemsResponseType,
    :schema_type => XSD::QName.new(NsV2_0, "NonMerchandiseItemsResponseType"),
    :schema_element => [
      ["nonMerchandiseItemResponseType", ["MySoap::Interface473397799::ProductInfoResultType[]", XSD::QName.new(nil, "NonMerchandiseItemResponseType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveRequestType"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface473397799::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::CatalogServiceFault,
    :schema_type => XSD::QName.new(NsV2, "CatalogServiceFault"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ItemNotFoundFault,
    :schema_type => XSD::QName.new(NsV2, "ItemNotFoundFault"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ProductInfoRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "ProductInfoRequestType"),
    :schema_element => [
      ["categoryBusinessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "CategoryBusinessCatalogItemId")]],
      ["categoryCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CategoryCatalogItemId")]],
      ["mapKey", ["SOAP::SOAPString", XSD::QName.new(nil, "MapKey")], [0, 1]],
      ["skuBusinessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuBusinessCatalogItemId")]],
      ["skuCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SkuCatalogItemId")]],
      ["styleColorBusinessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleColorBusinessCatalogItemId")], [0, 1]],
      ["viewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ViewDate")], [0, 1]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(nil, "Index")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ProductInfoResultType,
    :schema_type => XSD::QName.new(NsV2_0, "ProductInfoResultType"),
    :schema_element => [
      ["siImageUri", ["SOAP::SOAPString", XSD::QName.new(nil, "SiImageUri")], [0, 1]],
      ["thumbnailImageUri", ["SOAP::SOAPString", XSD::QName.new(nil, "ThumbnailImageUri")], [0, 1]],
      ["active", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Active")]],
      ["baseColorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BaseColorCode")], [0, 1]],
      ["baseColorName", ["SOAP::SOAPString", XSD::QName.new(nil, "BaseColorName")], [0, 1]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CategoryId")]],
      ["categoryName", ["SOAP::SOAPString", XSD::QName.new(nil, "CategoryName")], [0, 1]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")], [0, 1]],
      ["categoryNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "CategoryNumber")], [0, 1]],
      ["colorCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ColorCatalogItemId")]],
      ["colorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ColorCode")], [0, 1]],
      ["colorDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ColorDescription")], [0, 1]],
      ["businessParentIds", ["SOAP::SOAPString[]", XSD::QName.new(nil, "BusinessParentIds")], [0, nil]],
      ["companyCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CompanyCatalogItemId")]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(nil, "CompanyName")], [0, 1]],
      ["companyNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "CompanyNumber")]],
      ["divisionCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "DivisionCatalogItemId")]],
      ["divisionName", ["SOAP::SOAPString", XSD::QName.new(nil, "DivisionName")], [0, 1]],
      ["divisionNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "DivisionNumber")]],
      ["giftWrappable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "GiftWrappable")]],
      ["hazMat", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HazMat")]],
      ["imageURI", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageURI")], [0, 1]],
      ["inventoryLevel", ["SOAP::SOAPInt", XSD::QName.new(nil, "InventoryLevel")]],
      ["marketingFlags", ["SOAP::SOAPString", XSD::QName.new(nil, "MarketingFlags")], [0, 1]],
      ["maxOrderQuantityAllowed", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxOrderQuantityAllowed")]],
      ["mktFlagfmtTypId", ["SOAP::SOAPInt", XSD::QName.new(nil, "MktFlagfmtTypId")]],
      ["mktFlagId", ["SOAP::SOAPInt", XSD::QName.new(nil, "MktFlagId")]],
      ["onSale", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "OnSale")]],
      ["orderDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "OrderDate")], [0, 1]],
      ["productTypeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ProductTypeId")]],
      ["productTypeName", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductTypeName")], [0, 1]],
      ["purchaseSizeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurchaseSizeId")]],
      ["size1Description", ["SOAP::SOAPString", XSD::QName.new(nil, "Size1Description")], [0, 1]],
      ["size2Description", ["SOAP::SOAPString", XSD::QName.new(nil, "Size2Description")], [0, 1]],
      ["sizeCode", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeCode")], [0, 1]],
      ["sizeDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeDescription")], [0, 1]],
      ["skuCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SkuCatalogItemId")]],
      ["skuDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuDescription")], [0, 1]],
      ["skuNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuNumber")], [0, 1]],
      ["styleCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "StyleCatalogItemId")]],
      ["styleColorMarketingFlagIds", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "StyleColorMarketingFlagIds")], [0, nil]],
      ["styleColorNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleColorNumber")], [0, 1]],
      ["styleDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleDescription")], [0, 1]],
      ["styleInventoryStatus", ["SOAP::SOAPInt", XSD::QName.new(nil, "StyleInventoryStatus")]],
      ["styleMarketingFlagIds", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "StyleMarketingFlagIds")], [0, nil]],
      ["parentItemIds", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "ParentItemIds")], [0, nil]],
      ["styleNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleNumber")], [0, 1]],
      ["styleOverViewDesc", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleOverViewDesc")], [0, 1]],
      ["variantDesc", ["SOAP::SOAPString", XSD::QName.new(nil, "VariantDesc")], [0, 1]],
      ["variantId", ["SOAP::SOAPInt", XSD::QName.new(nil, "VariantId")]],
      ["colorLabelName", ["SOAP::SOAPString", XSD::QName.new(nil, "ColorLabelName")], [0, 1]],
      ["listPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "ListPrice")], [0, 1]],
      ["merchandise", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Merchandise")]],
      ["merchandiseType", ["SOAP::SOAPInt", XSD::QName.new(nil, "MerchandiseType")]],
      ["orderable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Orderable")]],
      ["priceType", ["SOAP::SOAPShort", XSD::QName.new(nil, "PriceType")]],
      ["promptVendorName", ["SOAP::SOAPString", XSD::QName.new(nil, "PromptVendorName")], [0, 1]],
      ["sellPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "SellPrice")], [0, 1]],
      ["sizeDim1LabelName", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeDim1LabelName")], [0, 1]],
      ["sizeDim2LabelName", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeDim2LabelName")], [0, 1]],
      ["taxCode", ["SOAP::SOAPString", XSD::QName.new(nil, "taxCode")], [0, 1]],
      ["upcCode", ["SOAP::SOAPString", XSD::QName.new(nil, "UpcCode")], [0, 1]],
      ["vendorId", ["SOAP::SOAPString", XSD::QName.new(nil, "VendorId")], [0, 1]],
      ["vendorStyleNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "VendorStyleNumber")], [0, 1]],
      ["vendorUpcCode", ["SOAP::SOAPString", XSD::QName.new(nil, "VendorUpcCode")], [0, 1]],
      ["webVendorName", ["SOAP::SOAPString", XSD::QName.new(nil, "WebVendorName")], [0, 1]],
      ["productAvailabilityDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductAvailabilityDescription")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(nil, "Index")]],
      ["inDcDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "InDcDate")], [0, 1]],
      ["siteStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteStatus")], [0, 1]],
      ["eligibleReturnLocationCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EligibleReturnLocationCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::CatalogItemInfoRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "CatalogItemInfoRequestType"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPString", XSD::QName.new(nil, "BusinessId")]],
      ["catalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CatalogItemId")]],
      ["previewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "PreviewDate")]],
      ["catalogItemTypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "CatalogItemTypeId")]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::CatalogItemInfoResultType,
    :schema_type => XSD::QName.new(NsV2_0, "CatalogItemInfoResultType"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPString", XSD::QName.new(nil, "BusinessId")], [0, 1]],
      ["previewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "PreviewDate")], [0, 1]],
      ["catalogItemSubtypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "CatalogItemSubtypeId")]],
      ["catalogItemTypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "CatalogItemTypeId")]],
      ["onSale", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "OnSale")]],
      ["priceableItem", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PriceableItem")]],
      ["catalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CatalogItemId")]],
      ["parentStyleBusId", ["SOAP::SOAPString", XSD::QName.new(nil, "ParentStyleBusId")], [0, 1]],
      ["parentStyleColorBusId", ["SOAP::SOAPString", XSD::QName.new(nil, "ParentStyleColorBusId")], [0, 1]],
      ["parentStyleColorId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ParentStyleColorId")]],
      ["regularPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "RegularPrice")], [0, 1]],
      ["sellPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "SellPrice")], [0, 1]],
      ["parentStyleId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ParentStyleId")]],
      ["categoryDisplaySubtypeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CategoryDisplaySubtypeId")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::CatalogItemIdByLegacyCodeRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "CatalogItemIdByLegacyCodeRequestType"),
    :schema_element => [
      ["businessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "BusinessCatalogItemId")]],
      ["catalogItemType", ["SOAP::SOAPShort", XSD::QName.new(nil, "CatalogItemType")]],
      ["viewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ViewDate")]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::BaseSizeValueResponseType,
    :schema_type => XSD::QName.new(NsV2_0, "BaseSizeValueResponseType"),
    :schema_element => [
      ["baseSizeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "BaseSizeId")]],
      ["productDimensionId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ProductDimensionId")]],
      ["sizeCategoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeCategoryId")]],
      ["sizeDataTypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "SizeDataTypeId")]],
      ["sizeDimensionValueId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeDimensionValueId")]],
      ["sizeDimensionValueSortOrder", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeDimensionValueSortOrder")]],
      ["sizeVariantId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeVariantId")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::CatalogItemIdRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "CatalogItemIdRequestType"),
    :schema_element => [
      ["childItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ChildItemId")]],
      ["childType", ["SOAP::SOAPShort", XSD::QName.new(nil, "ChildType")]],
      ["parentItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ParentItemId")]],
      ["parentType", ["SOAP::SOAPShort", XSD::QName.new(nil, "ParentType")]],
      ["viewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ViewDate")]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::BaseSizeValueRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "BaseSizeValueRequestType"),
    :schema_element => [
      ["productDimensionId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ProductDimensionId")]],
      ["sizeCategoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeCategoryId")]],
      ["sizeDataTypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "SizeDataTypeId")]],
      ["sizeDimensionValueId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeDimensionValueId")]],
      ["sizeVariantId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeVariantId")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ProductInfosRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "ProductInfosRequestType"),
    :schema_element => [
      ["productInfoRequestType", ["MySoap::Interface473397799::ProductInfoRequestType[]", XSD::QName.new(nil, "ProductInfoRequestType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ProductInfosResponseType,
    :schema_type => XSD::QName.new(NsV2_0, "ProductInfosResponseType"),
    :schema_element => [
      ["productInfoResponseType", ["MySoap::Interface473397799::ProductInfoResultType[]", XSD::QName.new(nil, "ProductInfoResponseType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::NonMerchandiseItemsRequestType,
    :schema_type => XSD::QName.new(NsV2_0, "NonMerchandiseItemsRequestType"),
    :schema_element => [
      ["nonMerchandiseCatalogItemType", ["SOAP::SOAPShort", XSD::QName.new(nil, "NonMerchandiseCatalogItemType")]],
      ["viewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ViewDate")]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::NonMerchandiseItemsResponseType,
    :schema_type => XSD::QName.new(NsV2_0, "NonMerchandiseItemsResponseType"),
    :schema_element => [
      ["nonMerchandiseItemResponseType", ["MySoap::Interface473397799::ProductInfoResultType[]", XSD::QName.new(nil, "NonMerchandiseItemResponseType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ServiceAliveRequestType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveRequestType"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ServiceAliveResponseType,
    :schema_type => XSD::QName.new(NsV1, "ServiceAliveResponseType"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ServiceUnavailableFaultMessageType,
    :schema_type => XSD::QName.new(NsV1, "ServiceUnavailableFaultMessageType"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ProductInfoRequestType,
    :schema_name => XSD::QName.new(NsV2_1, "ProductInfoRequest"),
    :schema_element => [
      ["categoryBusinessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "CategoryBusinessCatalogItemId")]],
      ["categoryCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CategoryCatalogItemId")]],
      ["mapKey", ["SOAP::SOAPString", XSD::QName.new(nil, "MapKey")], [0, 1]],
      ["skuBusinessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuBusinessCatalogItemId")]],
      ["skuCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SkuCatalogItemId")]],
      ["styleColorBusinessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleColorBusinessCatalogItemId")], [0, 1]],
      ["viewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ViewDate")], [0, 1]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(nil, "Index")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ProductInfoResultType,
    :schema_name => XSD::QName.new(NsV2_1, "ProductInfoResponse"),
    :schema_element => [
      ["siImageUri", ["SOAP::SOAPString", XSD::QName.new(nil, "SiImageUri")], [0, 1]],
      ["thumbnailImageUri", ["SOAP::SOAPString", XSD::QName.new(nil, "ThumbnailImageUri")], [0, 1]],
      ["active", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Active")]],
      ["baseColorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BaseColorCode")], [0, 1]],
      ["baseColorName", ["SOAP::SOAPString", XSD::QName.new(nil, "BaseColorName")], [0, 1]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CategoryId")]],
      ["categoryName", ["SOAP::SOAPString", XSD::QName.new(nil, "CategoryName")], [0, 1]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")], [0, 1]],
      ["categoryNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "CategoryNumber")], [0, 1]],
      ["colorCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ColorCatalogItemId")]],
      ["colorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ColorCode")], [0, 1]],
      ["colorDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ColorDescription")], [0, 1]],
      ["businessParentIds", ["SOAP::SOAPString[]", XSD::QName.new(nil, "BusinessParentIds")], [0, nil]],
      ["companyCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CompanyCatalogItemId")]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(nil, "CompanyName")], [0, 1]],
      ["companyNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "CompanyNumber")]],
      ["divisionCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "DivisionCatalogItemId")]],
      ["divisionName", ["SOAP::SOAPString", XSD::QName.new(nil, "DivisionName")], [0, 1]],
      ["divisionNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "DivisionNumber")]],
      ["giftWrappable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "GiftWrappable")]],
      ["hazMat", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HazMat")]],
      ["imageURI", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageURI")], [0, 1]],
      ["inventoryLevel", ["SOAP::SOAPInt", XSD::QName.new(nil, "InventoryLevel")]],
      ["marketingFlags", ["SOAP::SOAPString", XSD::QName.new(nil, "MarketingFlags")], [0, 1]],
      ["maxOrderQuantityAllowed", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxOrderQuantityAllowed")]],
      ["mktFlagfmtTypId", ["SOAP::SOAPInt", XSD::QName.new(nil, "MktFlagfmtTypId")]],
      ["mktFlagId", ["SOAP::SOAPInt", XSD::QName.new(nil, "MktFlagId")]],
      ["onSale", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "OnSale")]],
      ["orderDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "OrderDate")], [0, 1]],
      ["productTypeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ProductTypeId")]],
      ["productTypeName", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductTypeName")], [0, 1]],
      ["purchaseSizeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurchaseSizeId")]],
      ["size1Description", ["SOAP::SOAPString", XSD::QName.new(nil, "Size1Description")], [0, 1]],
      ["size2Description", ["SOAP::SOAPString", XSD::QName.new(nil, "Size2Description")], [0, 1]],
      ["sizeCode", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeCode")], [0, 1]],
      ["sizeDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeDescription")], [0, 1]],
      ["skuCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SkuCatalogItemId")]],
      ["skuDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuDescription")], [0, 1]],
      ["skuNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuNumber")], [0, 1]],
      ["styleCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "StyleCatalogItemId")]],
      ["styleColorMarketingFlagIds", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "StyleColorMarketingFlagIds")], [0, nil]],
      ["styleColorNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleColorNumber")], [0, 1]],
      ["styleDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleDescription")], [0, 1]],
      ["styleInventoryStatus", ["SOAP::SOAPInt", XSD::QName.new(nil, "StyleInventoryStatus")]],
      ["styleMarketingFlagIds", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "StyleMarketingFlagIds")], [0, nil]],
      ["parentItemIds", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "ParentItemIds")], [0, nil]],
      ["styleNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleNumber")], [0, 1]],
      ["styleOverViewDesc", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleOverViewDesc")], [0, 1]],
      ["variantDesc", ["SOAP::SOAPString", XSD::QName.new(nil, "VariantDesc")], [0, 1]],
      ["variantId", ["SOAP::SOAPInt", XSD::QName.new(nil, "VariantId")]],
      ["colorLabelName", ["SOAP::SOAPString", XSD::QName.new(nil, "ColorLabelName")], [0, 1]],
      ["listPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "ListPrice")], [0, 1]],
      ["merchandise", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Merchandise")]],
      ["merchandiseType", ["SOAP::SOAPInt", XSD::QName.new(nil, "MerchandiseType")]],
      ["orderable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Orderable")]],
      ["priceType", ["SOAP::SOAPShort", XSD::QName.new(nil, "PriceType")]],
      ["promptVendorName", ["SOAP::SOAPString", XSD::QName.new(nil, "PromptVendorName")], [0, 1]],
      ["sellPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "SellPrice")], [0, 1]],
      ["sizeDim1LabelName", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeDim1LabelName")], [0, 1]],
      ["sizeDim2LabelName", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeDim2LabelName")], [0, 1]],
      ["taxCode", ["SOAP::SOAPString", XSD::QName.new(nil, "taxCode")], [0, 1]],
      ["upcCode", ["SOAP::SOAPString", XSD::QName.new(nil, "UpcCode")], [0, 1]],
      ["vendorId", ["SOAP::SOAPString", XSD::QName.new(nil, "VendorId")], [0, 1]],
      ["vendorStyleNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "VendorStyleNumber")], [0, 1]],
      ["vendorUpcCode", ["SOAP::SOAPString", XSD::QName.new(nil, "VendorUpcCode")], [0, 1]],
      ["webVendorName", ["SOAP::SOAPString", XSD::QName.new(nil, "WebVendorName")], [0, 1]],
      ["productAvailabilityDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductAvailabilityDescription")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(nil, "Index")]],
      ["inDcDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "InDcDate")], [0, 1]],
      ["siteStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteStatus")], [0, 1]],
      ["eligibleReturnLocationCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EligibleReturnLocationCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ProductInfosRequestType,
    :schema_name => XSD::QName.new(NsV2_1, "ProductInfosRequest"),
    :schema_element => [
      ["productInfoRequestType", ["MySoap::Interface473397799::ProductInfoRequestType[]", XSD::QName.new(nil, "ProductInfoRequestType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ProductInfosResponseType,
    :schema_name => XSD::QName.new(NsV2_1, "ProductInfosResponse"),
    :schema_element => [
      ["productInfoResponseType", ["MySoap::Interface473397799::ProductInfoResultType[]", XSD::QName.new(nil, "ProductInfoResponseType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::CatalogItemInfoRequestType,
    :schema_name => XSD::QName.new(NsV2_1, "CatalogItemInfoRequest"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPString", XSD::QName.new(nil, "BusinessId")]],
      ["catalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CatalogItemId")]],
      ["previewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "PreviewDate")]],
      ["catalogItemTypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "CatalogItemTypeId")]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::CatalogItemInfoResultType,
    :schema_name => XSD::QName.new(NsV2_1, "CatalogItemInfoResponse"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPString", XSD::QName.new(nil, "BusinessId")], [0, 1]],
      ["previewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "PreviewDate")], [0, 1]],
      ["catalogItemSubtypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "CatalogItemSubtypeId")]],
      ["catalogItemTypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "CatalogItemTypeId")]],
      ["onSale", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "OnSale")]],
      ["priceableItem", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PriceableItem")]],
      ["catalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CatalogItemId")]],
      ["parentStyleBusId", ["SOAP::SOAPString", XSD::QName.new(nil, "ParentStyleBusId")], [0, 1]],
      ["parentStyleColorBusId", ["SOAP::SOAPString", XSD::QName.new(nil, "ParentStyleColorBusId")], [0, 1]],
      ["parentStyleColorId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ParentStyleColorId")]],
      ["regularPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "RegularPrice")], [0, 1]],
      ["sellPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "SellPrice")], [0, 1]],
      ["parentStyleId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ParentStyleId")]],
      ["categoryDisplaySubtypeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CategoryDisplaySubtypeId")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ProductInfoRequestType,
    :schema_name => XSD::QName.new(NsV2_1, "StyleColorIdAndInDCDateByLegacyCodeRequest"),
    :schema_element => [
      ["categoryBusinessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "CategoryBusinessCatalogItemId")]],
      ["categoryCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CategoryCatalogItemId")]],
      ["mapKey", ["SOAP::SOAPString", XSD::QName.new(nil, "MapKey")], [0, 1]],
      ["skuBusinessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuBusinessCatalogItemId")]],
      ["skuCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SkuCatalogItemId")]],
      ["styleColorBusinessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleColorBusinessCatalogItemId")], [0, 1]],
      ["viewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ViewDate")], [0, 1]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(nil, "Index")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ProductInfoResultType,
    :schema_name => XSD::QName.new(NsV2_1, "StyleColorIdAndInDCDateByLegacyCodeResponse"),
    :schema_element => [
      ["siImageUri", ["SOAP::SOAPString", XSD::QName.new(nil, "SiImageUri")], [0, 1]],
      ["thumbnailImageUri", ["SOAP::SOAPString", XSD::QName.new(nil, "ThumbnailImageUri")], [0, 1]],
      ["active", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Active")]],
      ["baseColorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BaseColorCode")], [0, 1]],
      ["baseColorName", ["SOAP::SOAPString", XSD::QName.new(nil, "BaseColorName")], [0, 1]],
      ["categoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CategoryId")]],
      ["categoryName", ["SOAP::SOAPString", XSD::QName.new(nil, "CategoryName")], [0, 1]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")], [0, 1]],
      ["categoryNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "CategoryNumber")], [0, 1]],
      ["colorCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ColorCatalogItemId")]],
      ["colorCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ColorCode")], [0, 1]],
      ["colorDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ColorDescription")], [0, 1]],
      ["businessParentIds", ["SOAP::SOAPString[]", XSD::QName.new(nil, "BusinessParentIds")], [0, nil]],
      ["companyCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "CompanyCatalogItemId")]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(nil, "CompanyName")], [0, 1]],
      ["companyNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "CompanyNumber")]],
      ["divisionCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "DivisionCatalogItemId")]],
      ["divisionName", ["SOAP::SOAPString", XSD::QName.new(nil, "DivisionName")], [0, 1]],
      ["divisionNumber", ["SOAP::SOAPInt", XSD::QName.new(nil, "DivisionNumber")]],
      ["giftWrappable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "GiftWrappable")]],
      ["hazMat", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HazMat")]],
      ["imageURI", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageURI")], [0, 1]],
      ["inventoryLevel", ["SOAP::SOAPInt", XSD::QName.new(nil, "InventoryLevel")]],
      ["marketingFlags", ["SOAP::SOAPString", XSD::QName.new(nil, "MarketingFlags")], [0, 1]],
      ["maxOrderQuantityAllowed", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxOrderQuantityAllowed")]],
      ["mktFlagfmtTypId", ["SOAP::SOAPInt", XSD::QName.new(nil, "MktFlagfmtTypId")]],
      ["mktFlagId", ["SOAP::SOAPInt", XSD::QName.new(nil, "MktFlagId")]],
      ["onSale", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "OnSale")]],
      ["orderDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "OrderDate")], [0, 1]],
      ["productTypeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ProductTypeId")]],
      ["productTypeName", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductTypeName")], [0, 1]],
      ["purchaseSizeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurchaseSizeId")]],
      ["size1Description", ["SOAP::SOAPString", XSD::QName.new(nil, "Size1Description")], [0, 1]],
      ["size2Description", ["SOAP::SOAPString", XSD::QName.new(nil, "Size2Description")], [0, 1]],
      ["sizeCode", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeCode")], [0, 1]],
      ["sizeDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeDescription")], [0, 1]],
      ["skuCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SkuCatalogItemId")]],
      ["skuDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuDescription")], [0, 1]],
      ["skuNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "SkuNumber")], [0, 1]],
      ["styleCatalogItemId", ["SOAP::SOAPInt", XSD::QName.new(nil, "StyleCatalogItemId")]],
      ["styleColorMarketingFlagIds", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "StyleColorMarketingFlagIds")], [0, nil]],
      ["styleColorNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleColorNumber")], [0, 1]],
      ["styleDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleDescription")], [0, 1]],
      ["styleInventoryStatus", ["SOAP::SOAPInt", XSD::QName.new(nil, "StyleInventoryStatus")]],
      ["styleMarketingFlagIds", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "StyleMarketingFlagIds")], [0, nil]],
      ["parentItemIds", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "ParentItemIds")], [0, nil]],
      ["styleNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleNumber")], [0, 1]],
      ["styleOverViewDesc", ["SOAP::SOAPString", XSD::QName.new(nil, "StyleOverViewDesc")], [0, 1]],
      ["variantDesc", ["SOAP::SOAPString", XSD::QName.new(nil, "VariantDesc")], [0, 1]],
      ["variantId", ["SOAP::SOAPInt", XSD::QName.new(nil, "VariantId")]],
      ["colorLabelName", ["SOAP::SOAPString", XSD::QName.new(nil, "ColorLabelName")], [0, 1]],
      ["listPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "ListPrice")], [0, 1]],
      ["merchandise", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Merchandise")]],
      ["merchandiseType", ["SOAP::SOAPInt", XSD::QName.new(nil, "MerchandiseType")]],
      ["orderable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Orderable")]],
      ["priceType", ["SOAP::SOAPShort", XSD::QName.new(nil, "PriceType")]],
      ["promptVendorName", ["SOAP::SOAPString", XSD::QName.new(nil, "PromptVendorName")], [0, 1]],
      ["sellPrice", ["SOAP::SOAPDecimal", XSD::QName.new(nil, "SellPrice")], [0, 1]],
      ["sizeDim1LabelName", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeDim1LabelName")], [0, 1]],
      ["sizeDim2LabelName", ["SOAP::SOAPString", XSD::QName.new(nil, "SizeDim2LabelName")], [0, 1]],
      ["taxCode", ["SOAP::SOAPString", XSD::QName.new(nil, "taxCode")], [0, 1]],
      ["upcCode", ["SOAP::SOAPString", XSD::QName.new(nil, "UpcCode")], [0, 1]],
      ["vendorId", ["SOAP::SOAPString", XSD::QName.new(nil, "VendorId")], [0, 1]],
      ["vendorStyleNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "VendorStyleNumber")], [0, 1]],
      ["vendorUpcCode", ["SOAP::SOAPString", XSD::QName.new(nil, "VendorUpcCode")], [0, 1]],
      ["webVendorName", ["SOAP::SOAPString", XSD::QName.new(nil, "WebVendorName")], [0, 1]],
      ["productAvailabilityDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductAvailabilityDescription")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(nil, "Index")]],
      ["inDcDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "InDcDate")], [0, 1]],
      ["siteStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteStatus")], [0, 1]],
      ["eligibleReturnLocationCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EligibleReturnLocationCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::CatalogItemIdByLegacyCodeRequestType,
    :schema_name => XSD::QName.new(NsV2_1, "CatalogItemIdByLegacyCodeRequest"),
    :schema_element => [
      ["businessCatalogItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "BusinessCatalogItemId")]],
      ["catalogItemType", ["SOAP::SOAPShort", XSD::QName.new(nil, "CatalogItemType")]],
      ["viewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ViewDate")]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::BaseSizeValueRequestType,
    :schema_name => XSD::QName.new(NsV2_1, "BaseSizeValueRequest"),
    :schema_element => [
      ["productDimensionId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ProductDimensionId")]],
      ["sizeCategoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeCategoryId")]],
      ["sizeDataTypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "SizeDataTypeId")]],
      ["sizeDimensionValueId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeDimensionValueId")]],
      ["sizeVariantId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeVariantId")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::BaseSizeValueResponseType,
    :schema_name => XSD::QName.new(NsV2_1, "BaseSizeValueResponse"),
    :schema_element => [
      ["baseSizeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "BaseSizeId")]],
      ["productDimensionId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ProductDimensionId")]],
      ["sizeCategoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeCategoryId")]],
      ["sizeDataTypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "SizeDataTypeId")]],
      ["sizeDimensionValueId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeDimensionValueId")]],
      ["sizeDimensionValueSortOrder", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeDimensionValueSortOrder")]],
      ["sizeVariantId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeVariantId")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::CatalogItemIdRequestType,
    :schema_name => XSD::QName.new(NsV2_1, "ParentCatalogItemIdRequest"),
    :schema_element => [
      ["childItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ChildItemId")]],
      ["childType", ["SOAP::SOAPShort", XSD::QName.new(nil, "ChildType")]],
      ["parentItemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ParentItemId")]],
      ["parentType", ["SOAP::SOAPShort", XSD::QName.new(nil, "ParentType")]],
      ["viewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ViewDate")]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::BaseSizeValueResponseType,
    :schema_name => XSD::QName.new(NsV2_1, "BaseSizeDetailsResponse"),
    :schema_element => [
      ["baseSizeId", ["SOAP::SOAPInt", XSD::QName.new(nil, "BaseSizeId")]],
      ["productDimensionId", ["SOAP::SOAPInt", XSD::QName.new(nil, "ProductDimensionId")]],
      ["sizeCategoryId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeCategoryId")]],
      ["sizeDataTypeId", ["SOAP::SOAPShort", XSD::QName.new(nil, "SizeDataTypeId")]],
      ["sizeDimensionValueId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeDimensionValueId")]],
      ["sizeDimensionValueSortOrder", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeDimensionValueSortOrder")]],
      ["sizeVariantId", ["SOAP::SOAPInt", XSD::QName.new(nil, "SizeVariantId")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::NonMerchandiseItemsRequestType,
    :schema_name => XSD::QName.new(NsV2_1, "NonMerchandiseItemsRequest"),
    :schema_element => [
      ["nonMerchandiseCatalogItemType", ["SOAP::SOAPShort", XSD::QName.new(nil, "NonMerchandiseCatalogItemType")]],
      ["viewDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ViewDate")]],
      ["brandCode", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::NonMerchandiseItemsResponseType,
    :schema_name => XSD::QName.new(NsV2_1, "NonMerchandiseItemsResponse"),
    :schema_element => [
      ["nonMerchandiseItemResponseType", ["MySoap::Interface473397799::ProductInfoResultType[]", XSD::QName.new(nil, "NonMerchandiseItemResponseType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::CatalogServiceFault,
    :schema_name => XSD::QName.new(NsV2_1, "CatalogServiceFault"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ItemNotFoundFault,
    :schema_name => XSD::QName.new(NsV2_1, "ItemNotFoundFault"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "message")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ServiceAliveRequestType,
    :schema_name => XSD::QName.new(NsV2_1, "ServiceAliveRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ServiceAliveResponseType,
    :schema_name => XSD::QName.new(NsV2_1, "ServiceAliveResponse"),
    :schema_element => [
      ["serviceName", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceName")]],
      ["serviceVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "ServiceVersion")]],
      ["isServiceAlive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsServiceAlive")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface473397799::ServiceUnavailableFaultMessageType,
    :schema_name => XSD::QName.new(NsV2_1, "ServiceUnavailableFaultMessage"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]]
    ]
  )
end

end; end
