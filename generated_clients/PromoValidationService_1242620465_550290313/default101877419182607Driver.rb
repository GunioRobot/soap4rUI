require 'default101877419182607.rb'
require 'default101877419182607MappingRegistry.rb'
require 'soap/rpc/driver'

module MySoap::Interface491263

class PromoValidationServiceBean < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:9080/PromoValidationServiceProviderV1-0/services/PromoValidationServiceBean"
  NsProviderV1PromotionServicesGidGapCom = "http://provider.v1.promotion.services.gid.gap.com"

  Methods = [
    [ XSD::QName.new(NsProviderV1PromotionServicesGidGapCom, "validateCreditCard"),
      nil,
      "validateCreditCard",
      [ ["in", "validationRequest", ["MySoap::Interface491263::CreditCardValidationRequest", "http://provider.v1.promotion.services.gid.gap.com", "CreditCardValidationRequest"]],
        ["retval", "validationResponse", ["MySoap::Interface491263::CreditCardValidationResponse", "http://provider.v1.promotion.services.gid.gap.com", "CreditCardValidationResponse"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"MySoap::Interface491263::PromoValidationException"=>{:namespace=>nil, :use=>"encoded", :ns=>"http://provider.v1.promotion.services.gid.gap.com", :encodingstyle=>"http://schemas.xmlsoap.org/soap/encoding/", :name=>"PromoValidationException"}, "MySoap::Interface491263::PromotionServiceException"=>{:namespace=>nil, :use=>"encoded", :ns=>"http://provider.v1.promotion.services.gid.gap.com", :encodingstyle=>"http://schemas.xmlsoap.org/soap/encoding/", :name=>"PromotionServiceException"}} }
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
