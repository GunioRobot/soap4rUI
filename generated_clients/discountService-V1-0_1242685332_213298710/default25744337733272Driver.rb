require 'default25744337733272.rb'
require 'default25744337733272MappingRegistry.rb'
require 'soap/rpc/driver'

module MySoap::Interface111352301

class DiscountServicePortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://ws-mpc-store.vdev.gid.gap.com/DiscountServiceProvider-V1-0/services/DiscountService"

  Methods = [
    [ "serviceAlive",
      "serviceAlive",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/discountService/v1", "ServiceAliveRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/discountService/v1", "ServiceAliveResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "applyDiscount",
      "applyDiscount",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/discountService/v1", "DiscountServiceRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/discountService/v1", "DiscountServiceResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface111352301::DiscountServiceFault"=>{:namespace=>nil, :use=>"literal", :ns=>"http://services.gid.gap.com/discountService/v1", :name=>"DiscountServiceFault", :encodingstyle=>"document"}} }
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
