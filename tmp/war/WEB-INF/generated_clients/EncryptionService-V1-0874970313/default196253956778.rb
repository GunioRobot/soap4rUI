require 'xsd/qname'

module MySoap; module Interface880641847


# {http://schemas.gid.gap.com/encryption/v1}VaultID
#   iD - SOAP::SOAPString
#   dataType - SOAP::SOAPString
class VaultID
  attr_accessor :iD
  attr_accessor :dataType

  def initialize(iD = nil, dataType = nil)
    @iD = iD
    @dataType = dataType
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

# {http://schemas.gid.gap.com/encryption/v1}GetVaultIDRequest
#   data - SOAP::SOAPString
#   dataType - SOAP::SOAPString
class GetVaultIDRequest
  attr_accessor :data
  attr_accessor :dataType

  def initialize(data = nil, dataType = nil)
    @data = data
    @dataType = dataType
  end
end

# {http://schemas.gid.gap.com/encryption/v1}GetVaultIDResponse
#   getVaultIDReturn - MySoap::Interface880641847::VaultID
class GetVaultIDResponse
  attr_accessor :getVaultIDReturn

  def initialize(getVaultIDReturn = nil)
    @getVaultIDReturn = getVaultIDReturn
  end
end

# {http://schemas.gid.gap.com/encryption/v1}StoreRequest
#   data - SOAP::SOAPString
#   dataType - SOAP::SOAPString
class StoreRequest
  attr_accessor :data
  attr_accessor :dataType

  def initialize(data = nil, dataType = nil)
    @data = data
    @dataType = dataType
  end
end

# {http://schemas.gid.gap.com/encryption/v1}StoreResponse
#   storeReturn - MySoap::Interface880641847::VaultID
class StoreResponse
  attr_accessor :storeReturn

  def initialize(storeReturn = nil)
    @storeReturn = storeReturn
  end
end

# {http://schemas.gid.gap.com/encryption/v1}RetrieveRequest
#   id - MySoap::Interface880641847::VaultID
class RetrieveRequest
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://schemas.gid.gap.com/encryption/v1}RetrieveResponse
#   retrieveReturn - SOAP::SOAPString
class RetrieveResponse
  attr_accessor :retrieveReturn

  def initialize(retrieveReturn = nil)
    @retrieveReturn = retrieveReturn
  end
end


end; end
