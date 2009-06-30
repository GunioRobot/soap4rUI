require 'default75294644838574.rb'
require 'default75294644838574MappingRegistry.rb'
require 'soap/rpc/driver'

module MySoap::Interface893988089

class TaxQuotationServicePortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://ws-tax-quote.vdev.gid.gap.com/TaxQuotationProvider-V1-0/services/TaxQuotationService"

  Methods = [
    [ "serviceAlive",
      "serviceAlive",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/taxquotation/v1", "ServiceAliveRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/taxquotation/v1", "ServiceAliveResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "validateJurisdiction",
      "validateJurisdiction",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/taxquotation/v1", "ValidateJurisdictionRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/taxquotation/v1", "ValidateJurisdictionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface893988089::TaxQuotationServiceFault"=>{:namespace=>nil, :use=>"literal", :ns=>"http://services.gid.gap.com/taxquotation/v1", :name=>"TaxQuotationServiceFault", :encodingstyle=>"document"}} }
    ],
    [ "calculateTaxes",
      "calculateTaxes",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/taxquotation/v1", "TaxQuotationRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/taxquotation/v1", "TaxQuotationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface893988089::TaxQuotationServiceFault"=>{:namespace=>nil, :use=>"literal", :ns=>"http://services.gid.gap.com/taxquotation/v1", :name=>"TaxQuotationServiceFault", :encodingstyle=>"document"}} }
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
