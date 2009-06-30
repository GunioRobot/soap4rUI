require 'GoogleSearch1242251429.rb'
require 'GoogleSearch1242251429MappingRegistry.rb'
require 'soap/rpc/driver'

module MySoap::Interface334562106

class GoogleSearchPort < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://api.google.com/search/beta2"
  NsGoogleSearch = "urn:GoogleSearch"

  Methods = [
    [ XSD::QName.new(NsGoogleSearch, "doGetCachedPage"),
      "urn:GoogleSearchAction",
      "doGetCachedPage",
      [ ["in", "key", ["::SOAP::SOAPString"]],
        ["in", "url", ["::SOAP::SOAPString"]],
        ["retval", "return", ["::SOAP::SOAPBase64"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsGoogleSearch, "doSpellingSuggestion"),
      "urn:GoogleSearchAction",
      "doSpellingSuggestion",
      [ ["in", "key", ["::SOAP::SOAPString"]],
        ["in", "phrase", ["::SOAP::SOAPString"]],
        ["retval", "return", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsGoogleSearch, "doGoogleSearch"),
      "urn:GoogleSearchAction",
      "doGoogleSearch",
      [ ["in", "key", ["::SOAP::SOAPString"]],
        ["in", "q", ["::SOAP::SOAPString"]],
        ["in", "start", ["::SOAP::SOAPInt"]],
        ["in", "maxResults", ["::SOAP::SOAPInt"]],
        ["in", "filter", ["::SOAP::SOAPBoolean"]],
        ["in", "restrict", ["::SOAP::SOAPString"]],
        ["in", "safeSearch", ["::SOAP::SOAPBoolean"]],
        ["in", "lr", ["::SOAP::SOAPString"]],
        ["in", "ie", ["::SOAP::SOAPString"]],
        ["in", "oe", ["::SOAP::SOAPString"]],
        ["retval", "return", ["MySoap::Interface334562106::GoogleSearchResult", "urn:GoogleSearch", "GoogleSearchResult"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = GoogleSearchMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = GoogleSearchMappingRegistry::LiteralRegistry
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
