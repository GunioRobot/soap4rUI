require 'default.rb'
require 'defaultMappingRegistry.rb'
require 'soap/rpc/driver'

module MySoap::InterfaceOne

class OrderLookupServicePortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://ws-return.vdev.gid.gap.com/OrderLookupProvider-V2-0/services/OrderLookupService"

  Methods = [
    [ "getOrderDetails",
      "getOrderDetails",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/orderlookup/v2", "GetOrderDetailsRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/orderlookup/v2", "GetOrderDetailsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::InterfaceOne::OrderSystemFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"http://services.gid.gap.com/orderlookup/v2", :namespace=>nil, :name=>"OrderSystemFault"}, "MySoap::InterfaceOne::OrderNotFoundFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"http://services.gid.gap.com/orderlookup/v2", :namespace=>nil, :name=>"OrderNotFoundFault"}, "MySoap::InterfaceOne::InvalidTransactionIdFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"http://services.gid.gap.com/orderlookup/v2", :namespace=>nil, :name=>"InvalidTransactionIdFault"}} }
    ],
    [ "getOrderDetailsForNonInvoice",
      "getOrderDetailsForNonInvoice",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/orderlookup/v2", "GetOrderDetailsForNonInvoiceRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/orderlookup/v2", "GetOrderDetailsForNonInvoiceResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::InterfaceOne::OrderSystemFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"http://services.gid.gap.com/orderlookup/v2", :namespace=>nil, :name=>"OrderSystemFault"}, "MySoap::InterfaceOne::OrderNotFoundFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"http://services.gid.gap.com/orderlookup/v2", :namespace=>nil, :name=>"OrderNotFoundFault"}, "MySoap::InterfaceOne::MaxOrdersLimitExceedFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"http://services.gid.gap.com/orderlookup/v2", :namespace=>nil, :name=>"MaxOrdersLimitExceedFault"}} }
    ],
    [ "serviceAlive",
      "serviceAlive",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/orderlookup/v2", "ServiceAliveRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/orderlookup/v2", "ServiceAliveResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
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
