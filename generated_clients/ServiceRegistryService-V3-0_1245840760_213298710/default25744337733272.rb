require 'xsd/qname'

module MySoap; module Interface111352301


# {http://schemas.gid.gap.com/serviceregistry/v3}FindServiceRequestType
#   serviceName - SOAP::SOAPString
#   majorVersion - SOAP::SOAPInt
#   minorVersion - SOAP::SOAPInt
#   brand - SOAP::SOAPString
class FindServiceRequestType
  attr_accessor :serviceName
  attr_accessor :majorVersion
  attr_accessor :minorVersion
  attr_accessor :brand

  def initialize(serviceName = nil, majorVersion = nil, minorVersion = nil, brand = nil)
    @serviceName = serviceName
    @majorVersion = majorVersion
    @minorVersion = minorVersion
    @brand = brand
  end
end

# {http://schemas.gid.gap.com/serviceregistry/v3}FindServiceResponseType
#   serviceName - SOAP::SOAPString
#   serviceClassName - SOAP::SOAPString
#   majorVersion - SOAP::SOAPInt
#   minorVersion - SOAP::SOAPInt
#   brand - SOAP::SOAPString
#   wsdlURL - SOAP::SOAPString
#   latestMinorFlag - SOAP::SOAPBoolean
class FindServiceResponseType
  attr_accessor :serviceName
  attr_accessor :serviceClassName
  attr_accessor :majorVersion
  attr_accessor :minorVersion
  attr_accessor :brand
  attr_accessor :wsdlURL
  attr_accessor :latestMinorFlag

  def initialize(serviceName = nil, serviceClassName = nil, majorVersion = nil, minorVersion = nil, brand = nil, wsdlURL = nil, latestMinorFlag = nil)
    @serviceName = serviceName
    @serviceClassName = serviceClassName
    @majorVersion = majorVersion
    @minorVersion = minorVersion
    @brand = brand
    @wsdlURL = wsdlURL
    @latestMinorFlag = latestMinorFlag
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

# {http://services.gid.gap.com/serviceregistry/v3/faults}ServiceRegistryServiceFaultMessageType
#   message - SOAP::SOAPString
class ServiceRegistryServiceFaultMessageType
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end


end; end
