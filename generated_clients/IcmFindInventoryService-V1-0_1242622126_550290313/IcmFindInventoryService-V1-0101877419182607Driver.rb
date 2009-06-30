require 'IcmFindInventoryService-V1-0101877419182607.rb'
require 'IcmFindInventoryService-V1-0101877419182607MappingRegistry.rb'
require 'soap/rpc/driver'

module MySoap::Interface491263

class IcmFindInventory < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:8080/ICMFindInventoryServiceProvider-V1-0/services/IcmFindInventory"

  Methods = [
    [ "http://gid.gap.services.com/FindInventoryService-V1-0/FindInventory",
      "findInventory",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/icm/findInventory/v1", "FindInventoryRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/icm/findInventory/v1", "FindInventoryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://gid.gap.services.com/FindInventoryService-V1-0/FindInventoryByDC",
      "findInventoryByDC",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/icm/findInventory/v1", "FindInventoryByDCRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/icm/findInventory/v1", "FindInventoryByDCResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://gid.gap.services.com/FindInventoryService-V1-0/FindGlobalInventory",
      "findGlobalInventory",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/icm/findInventory/v1", "FindGlobalInventoryRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/icm/findInventory/v1", "FindGlobalInventoryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = IcmFindInventoryServiceV10MappingRegistry::EncodedRegistry
    self.literal_mapping_registry = IcmFindInventoryServiceV10MappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
