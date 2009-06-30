require 'xsd/qname'

module MySoap; module Interface491263


# {http://schemas.gid.gap.com/icm/findInventory/v1}PromiseLinesInputType
#   skuId - SOAP::SOAPString
#   dc - SOAP::SOAPString
#   market - SOAP::SOAPString
class PromiseLinesInputType
  attr_accessor :skuId
  attr_accessor :dc
  attr_accessor :market

  def initialize(skuId = nil, dc = nil, market = nil)
    @skuId = skuId
    @dc = dc
    @market = market
  end
end

# {http://schemas.gid.gap.com/icm/findInventory/v1}FindInventoryResponseType
class FindInventoryResponseType < ::Array
end

# {http://schemas.gid.gap.com/icm/findInventory/v1}PromiseLinesOutputType
#   skuId - SOAP::SOAPString
#   quantity - SOAP::SOAPString
#   dc - SOAP::SOAPString
class PromiseLinesOutputType
  attr_accessor :skuId
  attr_accessor :quantity
  attr_accessor :dc

  def initialize(skuId = nil, quantity = nil, dc = nil)
    @skuId = skuId
    @quantity = quantity
    @dc = dc
  end
end

# {http://schemas.gid.gap.com/icm/findInventory/v1}FindGlobalInventoryRequestType
#   market - SOAP::SOAPString
#   itemId - SOAP::SOAPString
class FindGlobalInventoryRequestType
  attr_accessor :market
  attr_accessor :itemId

  def initialize(market = nil, itemId = [])
    @market = market
    @itemId = itemId
  end
end

# {http://schemas.gid.gap.com/icm/findInventory/v1}FindInventoryRequest
class FindInventoryRequest < ::Array
end

# {http://schemas.gid.gap.com/icm/findInventory/v1}FindInventoryByDCRequest
#   market - SOAP::SOAPString
#   itemId - SOAP::SOAPString
class FindInventoryByDCRequest
  attr_accessor :market
  attr_accessor :itemId

  def initialize(market = nil, itemId = [])
    @market = market
    @itemId = itemId
  end
end


end; end
