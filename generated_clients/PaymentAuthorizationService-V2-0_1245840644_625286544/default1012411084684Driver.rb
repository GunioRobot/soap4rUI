require 'default1012411084684.rb'
require 'default1012411084684MappingRegistry.rb'
require 'soap/rpc/driver'

module MySoap::Interface615174391

class PaymentAuthorizationServicePortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://ws-rtca-auth.vdev.gid.gap.com/PaymentAuthorizationProvider-V2-0/services/PaymentAuthorizationService"

  Methods = [
    [ "serviceAlive",
      "serviceAlive",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/rtca/v2", "ServiceAliveRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/rtca/v2", "ServiceAliveResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "checkBalanceOnGiftCard",
      "checkBalanceOnGiftCard",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/rtca/v2", "CheckBalanceOnGiftCardRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/rtca/v2", "CheckBalanceOnGiftCardResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface615174391::PaymentAuthorizationFault"=>{:namespace=>nil, :use=>"literal", :ns=>"http://services.gid.gap.com/rtca/v2", :name=>"PaymentAuthorizationFault", :encodingstyle=>"document"}} }
    ],
    [ "redeemGiftCard",
      "redeemGiftCard",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/rtca/v2", "RedeemGiftCardRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/rtca/v2", "RedeemGiftCardResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface615174391::PaymentAuthorizationFault"=>{:namespace=>nil, :use=>"literal", :ns=>"http://services.gid.gap.com/rtca/v2", :name=>"PaymentAuthorizationFault", :encodingstyle=>"document"}} }
    ],
    [ "voidRedeemGiftCard",
      "voidRedeemGiftCard",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/rtca/v2", "VoidRedeemGiftCardRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/rtca/v2", "VoidRedeemGiftCardResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface615174391::PaymentAuthorizationFault"=>{:namespace=>nil, :use=>"literal", :ns=>"http://services.gid.gap.com/rtca/v2", :name=>"PaymentAuthorizationFault", :encodingstyle=>"document"}} }
    ],
    [ "authorizeCreditCard",
      "authorizeCreditCard",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/rtca/v2", "CreditCardTransactionRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/rtca/v2", "CreditCardTransactionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface615174391::PaymentAuthorizationFault"=>{:namespace=>nil, :use=>"literal", :ns=>"http://services.gid.gap.com/rtca/v2", :name=>"PaymentAuthorizationFault", :encodingstyle=>"document"}} }
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
