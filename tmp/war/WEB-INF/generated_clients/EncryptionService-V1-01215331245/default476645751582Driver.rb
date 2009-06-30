require 'default476645751582.rb'
require 'default476645751582MappingRegistry.rb'
require 'soap/rpc/driver'

module MySoap::Interface150886566

class EncryptionServicePortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://ws-vault.vdev.gid.gap.com/EncryptionProvider-V1-0/services/EncryptionService"

  Methods = [
    [ "serviceAlive",
      "serviceAlive",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/encryption/v1", "ServiceAliveRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/encryption/v1", "ServiceAliveResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "retrieve",
      "retrieve",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/encryption/v1", "RetrieveRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/encryption/v1", "RetrieveResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface150886566::ServiceUnavailableFault"=>{:ns=>"http://services.gid.gap.com/encryption/v1", :name=>"ServiceUnavailableFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "store",
      "store",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/encryption/v1", "StoreRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/encryption/v1", "StoreResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface150886566::ServiceUnavailableFault"=>{:ns=>"http://services.gid.gap.com/encryption/v1", :name=>"ServiceUnavailableFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ],
    [ "getVaultID",
      "getVaultID",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/encryption/v1", "GetVaultIDRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/encryption/v1", "GetVaultIDResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface150886566::ServiceUnavailableFault"=>{:ns=>"http://services.gid.gap.com/encryption/v1", :name=>"ServiceUnavailableFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
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
