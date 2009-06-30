require 'xsd/qname'

module MySoap; module InterfaceOne


# {http://schemas.gid.gap.com/inventorylookup/v2}FindInventoryRequestType
#   requestor - MySoap::InterfaceOne::RequestorType
#   findItems - MySoap::InterfaceOne::FindItemsType
class FindInventoryRequestType
  attr_accessor :requestor
  attr_accessor :findItems

  def initialize(requestor = nil, findItems = nil)
    @requestor = requestor
    @findItems = findItems
  end
end

# {http://schemas.gid.gap.com/inventorylookup/v2}RequestorType
#   programId - SOAP::SOAPString
#   userId - SOAP::SOAPString
class RequestorType
  attr_accessor :programId
  attr_accessor :userId

  def initialize(programId = nil, userId = nil)
    @programId = programId
    @userId = userId
  end
end

# {http://schemas.gid.gap.com/inventorylookup/v2}FindItemsType
class FindItemsType < ::Array
end

# {http://schemas.gid.gap.com/inventorylookup/v2}FindItemType
#   brandCode - SOAP::SOAPString
#   itemId - SOAP::SOAPString
#   lineId - SOAP::SOAPInt
#   isOrderable - SOAP::SOAPString
#   requestedQuantity - SOAP::SOAPInt
class FindItemType
  attr_accessor :brandCode
  attr_accessor :itemId
  attr_accessor :lineId
  attr_accessor :isOrderable
  attr_accessor :requestedQuantity

  def initialize(brandCode = nil, itemId = nil, lineId = nil, isOrderable = nil, requestedQuantity = nil)
    @brandCode = brandCode
    @itemId = itemId
    @lineId = lineId
    @isOrderable = isOrderable
    @requestedQuantity = requestedQuantity
  end
end

# {http://schemas.gid.gap.com/inventorylookup/v2}FindInventoryResponseType
#   itemList - MySoap::InterfaceOne::ItemListType
class FindInventoryResponseType
  attr_accessor :itemList

  def initialize(itemList = nil)
    @itemList = itemList
  end
end

# {http://schemas.gid.gap.com/inventorylookup/v2}ItemListType
#   availableItems - MySoap::InterfaceOne::AvailableItemsType
#   unavailableItems - MySoap::InterfaceOne::UnavailableItemsType
class ItemListType
  attr_accessor :availableItems
  attr_accessor :unavailableItems

  def initialize(availableItems = nil, unavailableItems = nil)
    @availableItems = availableItems
    @unavailableItems = unavailableItems
  end
end

# {http://schemas.gid.gap.com/inventorylookup/v2}AvailableItemsType
class AvailableItemsType < ::Array
end

# {http://schemas.gid.gap.com/inventorylookup/v2}UnavailableItemsType
class UnavailableItemsType < ::Array
end

# {http://schemas.gid.gap.com/inventorylookup/v2}AvailableItemType
#   brandCode - SOAP::SOAPString
#   itemId - SOAP::SOAPString
#   lineId - SOAP::SOAPInt
#   isOrderable - SOAP::SOAPString
#   availableQuantity - SOAP::SOAPInt
#   availableShipDate - SOAP::SOAPDateTime
#   distributionCenter - SOAP::SOAPString
class AvailableItemType
  attr_accessor :brandCode
  attr_accessor :itemId
  attr_accessor :lineId
  attr_accessor :isOrderable
  attr_accessor :availableQuantity
  attr_accessor :availableShipDate
  attr_accessor :distributionCenter

  def initialize(brandCode = nil, itemId = nil, lineId = nil, isOrderable = nil, availableQuantity = nil, availableShipDate = nil, distributionCenter = nil)
    @brandCode = brandCode
    @itemId = itemId
    @lineId = lineId
    @isOrderable = isOrderable
    @availableQuantity = availableQuantity
    @availableShipDate = availableShipDate
    @distributionCenter = distributionCenter
  end
end

# {http://schemas.gid.gap.com/inventorylookup/v2}UnavailableItemType
#   brandCode - SOAP::SOAPString
#   itemId - SOAP::SOAPString
#   lineId - SOAP::SOAPInt
#   requestedQuantity - SOAP::SOAPInt
#   availableQuantity - SOAP::SOAPInt
#   unavailableQuantity - SOAP::SOAPInt
#   unavailableReason - SOAP::SOAPString
class UnavailableItemType
  attr_accessor :brandCode
  attr_accessor :itemId
  attr_accessor :lineId
  attr_accessor :requestedQuantity
  attr_accessor :availableQuantity
  attr_accessor :unavailableQuantity
  attr_accessor :unavailableReason

  def initialize(brandCode = nil, itemId = nil, lineId = nil, requestedQuantity = nil, availableQuantity = nil, unavailableQuantity = nil, unavailableReason = nil)
    @brandCode = brandCode
    @itemId = itemId
    @lineId = lineId
    @requestedQuantity = requestedQuantity
    @availableQuantity = availableQuantity
    @unavailableQuantity = unavailableQuantity
    @unavailableReason = unavailableReason
  end
end

# {http://schemas.gid.gap.com/inventorylookup/v2}InventoryLookupServiceFaultMessageType
#   errorCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class InventoryLookupServiceFaultMessageType
  attr_accessor :errorCode
  attr_accessor :message

  def initialize(errorCode = nil, message = nil)
    @errorCode = errorCode
    @message = message
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
