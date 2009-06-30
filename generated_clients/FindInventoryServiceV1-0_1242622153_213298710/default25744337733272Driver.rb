require 'default25744337733272.rb'
require 'default25744337733272MappingRegistry.rb'
require 'soap/rpc/driver'

module MySoap::Interface111352301

class FindInventoryServiceBean < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://ws-inventory.vdev.gid.gap.com/FindInventoryServiceV1-0/services/FindInventoryServiceBean"
  NsProviderV1FindInventoryServicesGidGapCom = "http://provider.v1.findInventory.services.gid.gap.com"

  Methods = [
    [ XSD::QName.new(NsProviderV1FindInventoryServicesGidGapCom, "findInventory"),
      "",
      "findInventory",
      [ ["in", "findInvReqObj", ["MySoap::Interface111352301::FindInventoryRequestDTO", "http://dto.v1.findInventory.services.gid.gap.com", "FindInventoryRequestDTO"]],
        ["retval", "findInventoryReturn", ["MySoap::Interface111352301::FindInventoryResponseDTO", "http://dto.v1.findInventory.services.gid.gap.com", "FindInventoryResponseDTO"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"MySoap::Interface111352301::FindInventoryServiceException_"=>{:namespace=>nil, :use=>"encoded", :ns=>"http://provider.v1.findInventory.services.gid.gap.com", :encodingstyle=>"http://schemas.xmlsoap.org/soap/encoding/", :name=>"FindInventoryServiceException"}} }
    ],
    [ XSD::QName.new(NsProviderV1FindInventoryServicesGidGapCom, "isServiceAlive"),
      "",
      "isServiceAlive",
      [ ["retval", "isServiceAliveReturn", ["::SOAP::SOAPBoolean"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
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
