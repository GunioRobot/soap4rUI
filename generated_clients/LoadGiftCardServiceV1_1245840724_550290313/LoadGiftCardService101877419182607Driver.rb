require 'LoadGiftCardService101877419182607.rb'
require 'LoadGiftCardService101877419182607MappingRegistry.rb'
require 'soap/rpc/driver'

module MySoap::Interface491263

class LoadGiftCard < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://ws-rtca-load.vdev.gid.gap.com/LoadGiftCardServiceProviderv1/services/LoadGiftCardService"
  NsLoadGiftCardService = "http://rtca.services.gid.gap.com/LoadGiftCardService/"

  Methods = [
    [ XSD::QName.new(NsLoadGiftCardService, "IsServiceAlive"),
      "http://provider.v1.rtca.services.gid.gap.com",
      "isServiceAlive",
      [ ["retval", "IsServiceAliveResponse", ["MySoap::Interface491263::IsServiceAliveResponse", "http://dto.v1.rtca.services.gid.gap.com", "IsServiceAliveResponse"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"MySoap::Interface491263::LoadGiftCardServiceException_"=>{:namespace=>nil, :use=>"encoded", :ns=>"http://provider.v1.rtca.services.gid.gap.com", :name=>"LoadGiftCardServiceException", :encodingstyle=>"http://schemas.xmlsoap.org/soap/encoding/"}} }
    ],
    [ XSD::QName.new(NsLoadGiftCardService, "IssueNewGiftCard"),
      "http://provider.v1.rtca.services.gid.gap.com",
      "issueNewGiftCard",
      [ ["in", "IssueNewGiftCardRequest", ["MySoap::Interface491263::GiftCardTransactionRequest", "http://dto.v1.rtca.services.gid.gap.com", "GiftCardTransactionRequest"]],
        ["retval", "IssueNewGiftCardResponse", ["MySoap::Interface491263::GiftCardTransactionResponse", "http://dto.v1.rtca.services.gid.gap.com", "GiftCardTransactionResponse"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"MySoap::Interface491263::LoadGiftCardServiceException_"=>{:namespace=>nil, :use=>"encoded", :ns=>"http://provider.v1.rtca.services.gid.gap.com", :name=>"LoadGiftCardServiceException", :encodingstyle=>"http://schemas.xmlsoap.org/soap/encoding/"}} }
    ],
    [ XSD::QName.new(NsLoadGiftCardService, "VoidIssueNewGiftCard"),
      "http://provider.v1.rtca.services.gid.gap.com",
      "voidIssueNewGiftCard",
      [ ["in", "VoidIssueNewGiftCardRequest", ["MySoap::Interface491263::GiftCardTransactionRequest", "http://dto.v1.rtca.services.gid.gap.com", "GiftCardTransactionRequest"]],
        ["retval", "VoidIssueNewGiftCardResponse", ["MySoap::Interface491263::GiftCardTransactionResponse", "http://dto.v1.rtca.services.gid.gap.com", "GiftCardTransactionResponse"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"MySoap::Interface491263::LoadGiftCardServiceException_"=>{:namespace=>nil, :use=>"encoded", :ns=>"http://provider.v1.rtca.services.gid.gap.com", :name=>"LoadGiftCardServiceException", :encodingstyle=>"http://schemas.xmlsoap.org/soap/encoding/"}} }
    ],
    [ XSD::QName.new(NsLoadGiftCardService, "RefundToGiftCard"),
      "http://provider.v1.rtca.services.gid.gap.com",
      "refundToGiftCard",
      [ ["in", "RefundToGiftCardRequest", ["MySoap::Interface491263::GiftCardTransactionRequest", "http://dto.v1.rtca.services.gid.gap.com", "GiftCardTransactionRequest"]],
        ["retval", "RefundToGiftCardResponse", ["MySoap::Interface491263::GiftCardTransactionResponse", "http://dto.v1.rtca.services.gid.gap.com", "GiftCardTransactionResponse"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"MySoap::Interface491263::LoadGiftCardServiceException_"=>{:namespace=>nil, :use=>"encoded", :ns=>"http://provider.v1.rtca.services.gid.gap.com", :name=>"LoadGiftCardServiceException", :encodingstyle=>"http://schemas.xmlsoap.org/soap/encoding/"}} }
    ],
    [ XSD::QName.new(NsLoadGiftCardService, "VoidRefundToGiftCard"),
      "http://provider.v1.rtca.services.gid.gap.com",
      "voidRefundToGiftCard",
      [ ["in", "VoidRefundToGiftCardRequest", ["MySoap::Interface491263::GiftCardTransactionRequest", "http://dto.v1.rtca.services.gid.gap.com", "GiftCardTransactionRequest"]],
        ["retval", "VoidRefundToGiftCardResponse", ["MySoap::Interface491263::GiftCardTransactionResponse", "http://dto.v1.rtca.services.gid.gap.com", "GiftCardTransactionResponse"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"MySoap::Interface491263::LoadGiftCardServiceException_"=>{:namespace=>nil, :use=>"encoded", :ns=>"http://provider.v1.rtca.services.gid.gap.com", :name=>"LoadGiftCardServiceException", :encodingstyle=>"http://schemas.xmlsoap.org/soap/encoding/"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = LoadGiftCardServiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = LoadGiftCardServiceMappingRegistry::LiteralRegistry
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
