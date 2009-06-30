require 'xsd/qname'

module MySoap; module Interface473397799


# {http://schemas.gid.gap.com/catalog/faults/v2}CatalogServiceFault
#   message - SOAP::SOAPString
class CatalogServiceFault
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://schemas.gid.gap.com/catalog/faults/v2}ItemNotFoundFault
#   message - SOAP::SOAPString
class ItemNotFoundFault
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://schemas.gid.gap.com/servicecatalog/v2}ProductInfoRequestType
#   categoryBusinessCatalogItemId - SOAP::SOAPString
#   categoryCatalogItemId - SOAP::SOAPInt
#   mapKey - SOAP::SOAPString
#   skuBusinessCatalogItemId - SOAP::SOAPString
#   skuCatalogItemId - SOAP::SOAPInt
#   styleColorBusinessCatalogItemId - SOAP::SOAPString
#   viewDate - SOAP::SOAPDateTime
#   brandCode - SOAP::SOAPString
#   index - SOAP::SOAPInt
class ProductInfoRequestType
  attr_accessor :categoryBusinessCatalogItemId
  attr_accessor :categoryCatalogItemId
  attr_accessor :mapKey
  attr_accessor :skuBusinessCatalogItemId
  attr_accessor :skuCatalogItemId
  attr_accessor :styleColorBusinessCatalogItemId
  attr_accessor :viewDate
  attr_accessor :brandCode
  attr_accessor :index

  def initialize(categoryBusinessCatalogItemId = nil, categoryCatalogItemId = nil, mapKey = nil, skuBusinessCatalogItemId = nil, skuCatalogItemId = nil, styleColorBusinessCatalogItemId = nil, viewDate = nil, brandCode = nil, index = nil)
    @categoryBusinessCatalogItemId = categoryBusinessCatalogItemId
    @categoryCatalogItemId = categoryCatalogItemId
    @mapKey = mapKey
    @skuBusinessCatalogItemId = skuBusinessCatalogItemId
    @skuCatalogItemId = skuCatalogItemId
    @styleColorBusinessCatalogItemId = styleColorBusinessCatalogItemId
    @viewDate = viewDate
    @brandCode = brandCode
    @index = index
  end
end

# {http://schemas.gid.gap.com/servicecatalog/v2}ProductInfoResultType
#   siImageUri - SOAP::SOAPString
#   thumbnailImageUri - SOAP::SOAPString
#   active - SOAP::SOAPBoolean
#   baseColorCode - SOAP::SOAPString
#   baseColorName - SOAP::SOAPString
#   categoryId - SOAP::SOAPInt
#   categoryName - SOAP::SOAPString
#   brandCode - SOAP::SOAPString
#   categoryNumber - SOAP::SOAPString
#   colorCatalogItemId - SOAP::SOAPInt
#   colorCode - SOAP::SOAPString
#   colorDescription - SOAP::SOAPString
#   businessParentIds - SOAP::SOAPString
#   companyCatalogItemId - SOAP::SOAPInt
#   companyName - SOAP::SOAPString
#   companyNumber - SOAP::SOAPInt
#   divisionCatalogItemId - SOAP::SOAPInt
#   divisionName - SOAP::SOAPString
#   divisionNumber - SOAP::SOAPInt
#   giftWrappable - SOAP::SOAPBoolean
#   hazMat - SOAP::SOAPBoolean
#   imageURI - SOAP::SOAPString
#   inventoryLevel - SOAP::SOAPInt
#   marketingFlags - SOAP::SOAPString
#   maxOrderQuantityAllowed - SOAP::SOAPInt
#   mktFlagfmtTypId - SOAP::SOAPInt
#   mktFlagId - SOAP::SOAPInt
#   onSale - SOAP::SOAPBoolean
#   orderDate - SOAP::SOAPDateTime
#   productTypeId - SOAP::SOAPInt
#   productTypeName - SOAP::SOAPString
#   purchaseSizeId - SOAP::SOAPInt
#   size1Description - SOAP::SOAPString
#   size2Description - SOAP::SOAPString
#   sizeCode - SOAP::SOAPString
#   sizeDescription - SOAP::SOAPString
#   skuCatalogItemId - SOAP::SOAPInt
#   skuDescription - SOAP::SOAPString
#   skuNumber - SOAP::SOAPString
#   styleCatalogItemId - SOAP::SOAPInt
#   styleColorMarketingFlagIds - SOAP::SOAPInt
#   styleColorNumber - SOAP::SOAPString
#   styleDescription - SOAP::SOAPString
#   styleInventoryStatus - SOAP::SOAPInt
#   styleMarketingFlagIds - SOAP::SOAPInt
#   parentItemIds - SOAP::SOAPInt
#   styleNumber - SOAP::SOAPString
#   styleOverViewDesc - SOAP::SOAPString
#   variantDesc - SOAP::SOAPString
#   variantId - SOAP::SOAPInt
#   colorLabelName - SOAP::SOAPString
#   listPrice - SOAP::SOAPDecimal
#   merchandise - SOAP::SOAPBoolean
#   merchandiseType - SOAP::SOAPInt
#   orderable - SOAP::SOAPBoolean
#   priceType - SOAP::SOAPShort
#   promptVendorName - SOAP::SOAPString
#   sellPrice - SOAP::SOAPDecimal
#   sizeDim1LabelName - SOAP::SOAPString
#   sizeDim2LabelName - SOAP::SOAPString
#   taxCode - SOAP::SOAPString
#   upcCode - SOAP::SOAPString
#   vendorId - SOAP::SOAPString
#   vendorStyleNumber - SOAP::SOAPString
#   vendorUpcCode - SOAP::SOAPString
#   webVendorName - SOAP::SOAPString
#   productAvailabilityDescription - SOAP::SOAPString
#   index - SOAP::SOAPInt
#   inDcDate - SOAP::SOAPDateTime
#   siteStatus - SOAP::SOAPString
#   eligibleReturnLocationCode - SOAP::SOAPString
class ProductInfoResultType
  attr_accessor :siImageUri
  attr_accessor :thumbnailImageUri
  attr_accessor :active
  attr_accessor :baseColorCode
  attr_accessor :baseColorName
  attr_accessor :categoryId
  attr_accessor :categoryName
  attr_accessor :brandCode
  attr_accessor :categoryNumber
  attr_accessor :colorCatalogItemId
  attr_accessor :colorCode
  attr_accessor :colorDescription
  attr_accessor :businessParentIds
  attr_accessor :companyCatalogItemId
  attr_accessor :companyName
  attr_accessor :companyNumber
  attr_accessor :divisionCatalogItemId
  attr_accessor :divisionName
  attr_accessor :divisionNumber
  attr_accessor :giftWrappable
  attr_accessor :hazMat
  attr_accessor :imageURI
  attr_accessor :inventoryLevel
  attr_accessor :marketingFlags
  attr_accessor :maxOrderQuantityAllowed
  attr_accessor :mktFlagfmtTypId
  attr_accessor :mktFlagId
  attr_accessor :onSale
  attr_accessor :orderDate
  attr_accessor :productTypeId
  attr_accessor :productTypeName
  attr_accessor :purchaseSizeId
  attr_accessor :size1Description
  attr_accessor :size2Description
  attr_accessor :sizeCode
  attr_accessor :sizeDescription
  attr_accessor :skuCatalogItemId
  attr_accessor :skuDescription
  attr_accessor :skuNumber
  attr_accessor :styleCatalogItemId
  attr_accessor :styleColorMarketingFlagIds
  attr_accessor :styleColorNumber
  attr_accessor :styleDescription
  attr_accessor :styleInventoryStatus
  attr_accessor :styleMarketingFlagIds
  attr_accessor :parentItemIds
  attr_accessor :styleNumber
  attr_accessor :styleOverViewDesc
  attr_accessor :variantDesc
  attr_accessor :variantId
  attr_accessor :colorLabelName
  attr_accessor :listPrice
  attr_accessor :merchandise
  attr_accessor :merchandiseType
  attr_accessor :orderable
  attr_accessor :priceType
  attr_accessor :promptVendorName
  attr_accessor :sellPrice
  attr_accessor :sizeDim1LabelName
  attr_accessor :sizeDim2LabelName
  attr_accessor :taxCode
  attr_accessor :upcCode
  attr_accessor :vendorId
  attr_accessor :vendorStyleNumber
  attr_accessor :vendorUpcCode
  attr_accessor :webVendorName
  attr_accessor :productAvailabilityDescription
  attr_accessor :index
  attr_accessor :inDcDate
  attr_accessor :siteStatus
  attr_accessor :eligibleReturnLocationCode

  def initialize(siImageUri = nil, thumbnailImageUri = nil, active = nil, baseColorCode = nil, baseColorName = nil, categoryId = nil, categoryName = nil, brandCode = nil, categoryNumber = nil, colorCatalogItemId = nil, colorCode = nil, colorDescription = nil, businessParentIds = [], companyCatalogItemId = nil, companyName = nil, companyNumber = nil, divisionCatalogItemId = nil, divisionName = nil, divisionNumber = nil, giftWrappable = nil, hazMat = nil, imageURI = nil, inventoryLevel = nil, marketingFlags = nil, maxOrderQuantityAllowed = nil, mktFlagfmtTypId = nil, mktFlagId = nil, onSale = nil, orderDate = nil, productTypeId = nil, productTypeName = nil, purchaseSizeId = nil, size1Description = nil, size2Description = nil, sizeCode = nil, sizeDescription = nil, skuCatalogItemId = nil, skuDescription = nil, skuNumber = nil, styleCatalogItemId = nil, styleColorMarketingFlagIds = [], styleColorNumber = nil, styleDescription = nil, styleInventoryStatus = nil, styleMarketingFlagIds = [], parentItemIds = [], styleNumber = nil, styleOverViewDesc = nil, variantDesc = nil, variantId = nil, colorLabelName = nil, listPrice = nil, merchandise = nil, merchandiseType = nil, orderable = nil, priceType = nil, promptVendorName = nil, sellPrice = nil, sizeDim1LabelName = nil, sizeDim2LabelName = nil, taxCode = nil, upcCode = nil, vendorId = nil, vendorStyleNumber = nil, vendorUpcCode = nil, webVendorName = nil, productAvailabilityDescription = nil, index = nil, inDcDate = nil, siteStatus = nil, eligibleReturnLocationCode = nil)
    @siImageUri = siImageUri
    @thumbnailImageUri = thumbnailImageUri
    @active = active
    @baseColorCode = baseColorCode
    @baseColorName = baseColorName
    @categoryId = categoryId
    @categoryName = categoryName
    @brandCode = brandCode
    @categoryNumber = categoryNumber
    @colorCatalogItemId = colorCatalogItemId
    @colorCode = colorCode
    @colorDescription = colorDescription
    @businessParentIds = businessParentIds
    @companyCatalogItemId = companyCatalogItemId
    @companyName = companyName
    @companyNumber = companyNumber
    @divisionCatalogItemId = divisionCatalogItemId
    @divisionName = divisionName
    @divisionNumber = divisionNumber
    @giftWrappable = giftWrappable
    @hazMat = hazMat
    @imageURI = imageURI
    @inventoryLevel = inventoryLevel
    @marketingFlags = marketingFlags
    @maxOrderQuantityAllowed = maxOrderQuantityAllowed
    @mktFlagfmtTypId = mktFlagfmtTypId
    @mktFlagId = mktFlagId
    @onSale = onSale
    @orderDate = orderDate
    @productTypeId = productTypeId
    @productTypeName = productTypeName
    @purchaseSizeId = purchaseSizeId
    @size1Description = size1Description
    @size2Description = size2Description
    @sizeCode = sizeCode
    @sizeDescription = sizeDescription
    @skuCatalogItemId = skuCatalogItemId
    @skuDescription = skuDescription
    @skuNumber = skuNumber
    @styleCatalogItemId = styleCatalogItemId
    @styleColorMarketingFlagIds = styleColorMarketingFlagIds
    @styleColorNumber = styleColorNumber
    @styleDescription = styleDescription
    @styleInventoryStatus = styleInventoryStatus
    @styleMarketingFlagIds = styleMarketingFlagIds
    @parentItemIds = parentItemIds
    @styleNumber = styleNumber
    @styleOverViewDesc = styleOverViewDesc
    @variantDesc = variantDesc
    @variantId = variantId
    @colorLabelName = colorLabelName
    @listPrice = listPrice
    @merchandise = merchandise
    @merchandiseType = merchandiseType
    @orderable = orderable
    @priceType = priceType
    @promptVendorName = promptVendorName
    @sellPrice = sellPrice
    @sizeDim1LabelName = sizeDim1LabelName
    @sizeDim2LabelName = sizeDim2LabelName
    @taxCode = taxCode
    @upcCode = upcCode
    @vendorId = vendorId
    @vendorStyleNumber = vendorStyleNumber
    @vendorUpcCode = vendorUpcCode
    @webVendorName = webVendorName
    @productAvailabilityDescription = productAvailabilityDescription
    @index = index
    @inDcDate = inDcDate
    @siteStatus = siteStatus
    @eligibleReturnLocationCode = eligibleReturnLocationCode
  end
end

# {http://schemas.gid.gap.com/servicecatalog/v2}CatalogItemInfoRequestType
#   businessId - SOAP::SOAPString
#   catalogItemId - SOAP::SOAPInt
#   previewDate - SOAP::SOAPDateTime
#   catalogItemTypeId - SOAP::SOAPShort
#   brandCode - SOAP::SOAPString
class CatalogItemInfoRequestType
  attr_accessor :businessId
  attr_accessor :catalogItemId
  attr_accessor :previewDate
  attr_accessor :catalogItemTypeId
  attr_accessor :brandCode

  def initialize(businessId = nil, catalogItemId = nil, previewDate = nil, catalogItemTypeId = nil, brandCode = nil)
    @businessId = businessId
    @catalogItemId = catalogItemId
    @previewDate = previewDate
    @catalogItemTypeId = catalogItemTypeId
    @brandCode = brandCode
  end
end

# {http://schemas.gid.gap.com/servicecatalog/v2}CatalogItemInfoResultType
#   businessId - SOAP::SOAPString
#   previewDate - SOAP::SOAPDateTime
#   catalogItemSubtypeId - SOAP::SOAPShort
#   catalogItemTypeId - SOAP::SOAPShort
#   onSale - SOAP::SOAPBoolean
#   priceableItem - SOAP::SOAPBoolean
#   catalogItemId - SOAP::SOAPInt
#   parentStyleBusId - SOAP::SOAPString
#   parentStyleColorBusId - SOAP::SOAPString
#   parentStyleColorId - SOAP::SOAPInt
#   regularPrice - SOAP::SOAPDecimal
#   sellPrice - SOAP::SOAPDecimal
#   parentStyleId - SOAP::SOAPInt
#   categoryDisplaySubtypeId - SOAP::SOAPInt
class CatalogItemInfoResultType
  attr_accessor :businessId
  attr_accessor :previewDate
  attr_accessor :catalogItemSubtypeId
  attr_accessor :catalogItemTypeId
  attr_accessor :onSale
  attr_accessor :priceableItem
  attr_accessor :catalogItemId
  attr_accessor :parentStyleBusId
  attr_accessor :parentStyleColorBusId
  attr_accessor :parentStyleColorId
  attr_accessor :regularPrice
  attr_accessor :sellPrice
  attr_accessor :parentStyleId
  attr_accessor :categoryDisplaySubtypeId

  def initialize(businessId = nil, previewDate = nil, catalogItemSubtypeId = nil, catalogItemTypeId = nil, onSale = nil, priceableItem = nil, catalogItemId = nil, parentStyleBusId = nil, parentStyleColorBusId = nil, parentStyleColorId = nil, regularPrice = nil, sellPrice = nil, parentStyleId = nil, categoryDisplaySubtypeId = nil)
    @businessId = businessId
    @previewDate = previewDate
    @catalogItemSubtypeId = catalogItemSubtypeId
    @catalogItemTypeId = catalogItemTypeId
    @onSale = onSale
    @priceableItem = priceableItem
    @catalogItemId = catalogItemId
    @parentStyleBusId = parentStyleBusId
    @parentStyleColorBusId = parentStyleColorBusId
    @parentStyleColorId = parentStyleColorId
    @regularPrice = regularPrice
    @sellPrice = sellPrice
    @parentStyleId = parentStyleId
    @categoryDisplaySubtypeId = categoryDisplaySubtypeId
  end
end

# {http://schemas.gid.gap.com/servicecatalog/v2}CatalogItemIdByLegacyCodeRequestType
#   businessCatalogItemId - SOAP::SOAPString
#   catalogItemType - SOAP::SOAPShort
#   viewDate - SOAP::SOAPDateTime
#   brandCode - SOAP::SOAPString
class CatalogItemIdByLegacyCodeRequestType
  attr_accessor :businessCatalogItemId
  attr_accessor :catalogItemType
  attr_accessor :viewDate
  attr_accessor :brandCode

  def initialize(businessCatalogItemId = nil, catalogItemType = nil, viewDate = nil, brandCode = nil)
    @businessCatalogItemId = businessCatalogItemId
    @catalogItemType = catalogItemType
    @viewDate = viewDate
    @brandCode = brandCode
  end
end

# {http://schemas.gid.gap.com/servicecatalog/v2}BaseSizeValueResponseType
#   baseSizeId - SOAP::SOAPInt
#   productDimensionId - SOAP::SOAPInt
#   sizeCategoryId - SOAP::SOAPInt
#   sizeDataTypeId - SOAP::SOAPShort
#   sizeDimensionValueId - SOAP::SOAPInt
#   sizeDimensionValueSortOrder - SOAP::SOAPInt
#   sizeVariantId - SOAP::SOAPInt
class BaseSizeValueResponseType
  attr_accessor :baseSizeId
  attr_accessor :productDimensionId
  attr_accessor :sizeCategoryId
  attr_accessor :sizeDataTypeId
  attr_accessor :sizeDimensionValueId
  attr_accessor :sizeDimensionValueSortOrder
  attr_accessor :sizeVariantId

  def initialize(baseSizeId = nil, productDimensionId = nil, sizeCategoryId = nil, sizeDataTypeId = nil, sizeDimensionValueId = nil, sizeDimensionValueSortOrder = nil, sizeVariantId = nil)
    @baseSizeId = baseSizeId
    @productDimensionId = productDimensionId
    @sizeCategoryId = sizeCategoryId
    @sizeDataTypeId = sizeDataTypeId
    @sizeDimensionValueId = sizeDimensionValueId
    @sizeDimensionValueSortOrder = sizeDimensionValueSortOrder
    @sizeVariantId = sizeVariantId
  end
end

# {http://schemas.gid.gap.com/servicecatalog/v2}CatalogItemIdRequestType
#   childItemId - SOAP::SOAPString
#   childType - SOAP::SOAPShort
#   parentItemId - SOAP::SOAPString
#   parentType - SOAP::SOAPShort
#   viewDate - SOAP::SOAPDateTime
#   brandCode - SOAP::SOAPString
class CatalogItemIdRequestType
  attr_accessor :childItemId
  attr_accessor :childType
  attr_accessor :parentItemId
  attr_accessor :parentType
  attr_accessor :viewDate
  attr_accessor :brandCode

  def initialize(childItemId = nil, childType = nil, parentItemId = nil, parentType = nil, viewDate = nil, brandCode = nil)
    @childItemId = childItemId
    @childType = childType
    @parentItemId = parentItemId
    @parentType = parentType
    @viewDate = viewDate
    @brandCode = brandCode
  end
end

# {http://schemas.gid.gap.com/servicecatalog/v2}BaseSizeValueRequestType
#   productDimensionId - SOAP::SOAPInt
#   sizeCategoryId - SOAP::SOAPInt
#   sizeDataTypeId - SOAP::SOAPShort
#   sizeDimensionValueId - SOAP::SOAPInt
#   sizeVariantId - SOAP::SOAPInt
class BaseSizeValueRequestType
  attr_accessor :productDimensionId
  attr_accessor :sizeCategoryId
  attr_accessor :sizeDataTypeId
  attr_accessor :sizeDimensionValueId
  attr_accessor :sizeVariantId

  def initialize(productDimensionId = nil, sizeCategoryId = nil, sizeDataTypeId = nil, sizeDimensionValueId = nil, sizeVariantId = nil)
    @productDimensionId = productDimensionId
    @sizeCategoryId = sizeCategoryId
    @sizeDataTypeId = sizeDataTypeId
    @sizeDimensionValueId = sizeDimensionValueId
    @sizeVariantId = sizeVariantId
  end
end

# {http://schemas.gid.gap.com/servicecatalog/v2}ProductInfosRequestType
class ProductInfosRequestType < ::Array
end

# {http://schemas.gid.gap.com/servicecatalog/v2}ProductInfosResponseType
class ProductInfosResponseType < ::Array
end

# {http://schemas.gid.gap.com/servicecatalog/v2}NonMerchandiseItemsRequestType
#   nonMerchandiseCatalogItemType - SOAP::SOAPShort
#   viewDate - SOAP::SOAPDateTime
#   brandCode - SOAP::SOAPString
class NonMerchandiseItemsRequestType
  attr_accessor :nonMerchandiseCatalogItemType
  attr_accessor :viewDate
  attr_accessor :brandCode

  def initialize(nonMerchandiseCatalogItemType = nil, viewDate = nil, brandCode = nil)
    @nonMerchandiseCatalogItemType = nonMerchandiseCatalogItemType
    @viewDate = viewDate
    @brandCode = brandCode
  end
end

# {http://schemas.gid.gap.com/servicecatalog/v2}NonMerchandiseItemsResponseType
class NonMerchandiseItemsResponseType < ::Array
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
