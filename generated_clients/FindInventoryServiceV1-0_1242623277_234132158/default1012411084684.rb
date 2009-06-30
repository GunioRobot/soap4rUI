require 'xsd/qname'

module MySoap; module Interface479867034


# {http://dto.v1.findInventory.services.gid.gap.com}FindInventoryRequestDTO
#   promiseObj - MySoap::Interface479867034::PromiseDTO
#   envObj - MySoap::Interface479867034::EnvironmentDTO
class FindInventoryRequestDTO
  attr_accessor :promiseObj
  attr_accessor :envObj

  def initialize(promiseObj = nil, envObj = nil)
    @promiseObj = promiseObj
    @envObj = envObj
  end
end

# {http://dto.v1.findInventory.services.gid.gap.com}PromiseDTO
#   sellerOrgCode - SOAP::SOAPString
#   promiseLines - MySoap::Interface479867034::ArrayOf_tns2_PromiseLineDTO
class PromiseDTO
  attr_accessor :sellerOrgCode
  attr_accessor :promiseLines

  def initialize(sellerOrgCode = nil, promiseLines = nil)
    @sellerOrgCode = sellerOrgCode
    @promiseLines = promiseLines
  end
end

# {http://dto.v1.findInventory.services.gid.gap.com}PromiseLineDTO
#   isOrderable - SOAP::SOAPString
#   itemID - SOAP::SOAPString
#   lineId - SOAP::SOAPInt
#   requiredQty - SOAP::SOAPDouble
#   brandName - SOAP::SOAPString
class PromiseLineDTO
  attr_accessor :isOrderable
  attr_accessor :itemID
  attr_accessor :lineId
  attr_accessor :requiredQty
  attr_accessor :brandName

  def initialize(isOrderable = nil, itemID = nil, lineId = nil, requiredQty = nil, brandName = nil)
    @isOrderable = isOrderable
    @itemID = itemID
    @lineId = lineId
    @requiredQty = requiredQty
    @brandName = brandName
  end
end

# {http://dto.v1.findInventory.services.gid.gap.com}FindInventoryResponseDTO
#   itemList - MySoap::Interface479867034::ItemListDTO
class FindInventoryResponseDTO
  attr_accessor :itemList

  def initialize(itemList = nil)
    @itemList = itemList
  end
end

# {http://dto.v1.findInventory.services.gid.gap.com}ItemListDTO
#   availableItems - MySoap::Interface479867034::ArrayOf_tns2_AvailableItemDTO
#   unavailableItems - MySoap::Interface479867034::ArrayOf_tns2_UnavailableItemDTO
class ItemListDTO
  attr_accessor :availableItems
  attr_accessor :unavailableItems

  def initialize(availableItems = nil, unavailableItems = nil)
    @availableItems = availableItems
    @unavailableItems = unavailableItems
  end
end

# {http://dto.v1.findInventory.services.gid.gap.com}AvailableItemDTO
#   brandName - SOAP::SOAPString
#   itemID - SOAP::SOAPString
#   lineID - SOAP::SOAPInt
#   onOrder - SOAP::SOAPString
#   quantity - SOAP::SOAPDouble
#   shipDate - SOAP::SOAPDateTime
#   shipNode - SOAP::SOAPString
class AvailableItemDTO
  attr_accessor :brandName
  attr_accessor :itemID
  attr_accessor :lineID
  attr_accessor :onOrder
  attr_accessor :quantity
  attr_accessor :shipDate
  attr_accessor :shipNode

  def initialize(brandName = nil, itemID = nil, lineID = nil, onOrder = nil, quantity = nil, shipDate = nil, shipNode = nil)
    @brandName = brandName
    @itemID = itemID
    @lineID = lineID
    @onOrder = onOrder
    @quantity = quantity
    @shipDate = shipDate
    @shipNode = shipNode
  end
end

# {http://dto.v1.findInventory.services.gid.gap.com}UnavailableItemDTO
#   brandName - SOAP::SOAPString
#   assignedQty - SOAP::SOAPDouble
#   itemID - SOAP::SOAPString
#   lineID - SOAP::SOAPInt
#   requiredQty - SOAP::SOAPDouble
#   unavailableQty - SOAP::SOAPDouble
#   unavailableReason - SOAP::SOAPString
class UnavailableItemDTO
  attr_accessor :brandName
  attr_accessor :assignedQty
  attr_accessor :itemID
  attr_accessor :lineID
  attr_accessor :requiredQty
  attr_accessor :unavailableQty
  attr_accessor :unavailableReason

  def initialize(brandName = nil, assignedQty = nil, itemID = nil, lineID = nil, requiredQty = nil, unavailableQty = nil, unavailableReason = nil)
    @brandName = brandName
    @assignedQty = assignedQty
    @itemID = itemID
    @lineID = lineID
    @requiredQty = requiredQty
    @unavailableQty = unavailableQty
    @unavailableReason = unavailableReason
  end
end

# {http://dto.yantraimpl.services.common.gid.gap.com}EnvironmentDTO
#   progId - SOAP::SOAPString
#   userId - SOAP::SOAPString
class EnvironmentDTO
  attr_accessor :progId
  attr_accessor :userId

  def initialize(progId = nil, userId = nil)
    @progId = progId
    @userId = userId
  end
end

# {http://exception.provider.v1.findInventory.services.gid.gap.com}FindInventoryServiceException
#   message - SOAP::SOAPString
class FindInventoryServiceException < ::StandardError
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://provider.v1.findInventory.services.gid.gap.com}ArrayOf_tns2_PromiseLineDTO
class ArrayOf_tns2_PromiseLineDTO < ::Array
end

# {http://provider.v1.findInventory.services.gid.gap.com}ArrayOf_tns2_AvailableItemDTO
class ArrayOf_tns2_AvailableItemDTO < ::Array
end

# {http://provider.v1.findInventory.services.gid.gap.com}ArrayOf_tns2_UnavailableItemDTO
class ArrayOf_tns2_UnavailableItemDTO < ::Array
end


end; end
