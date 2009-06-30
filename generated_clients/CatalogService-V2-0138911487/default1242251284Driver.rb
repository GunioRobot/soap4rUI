require 'default1242251284.rb'
require 'default1242251284MappingRegistry.rb'
require 'soap/rpc/driver'

module MySoap::Interface473397799

class CatalogServicePortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:9082/CatalogServiceProvider-V2-0/services/CatalogService"

  Methods = [
    [ "http://services.gid.gap.com/catalog/v2/getProductInfo",
      "getProductInfo",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "ProductInfoRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "ProductInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface473397799::CatalogServiceFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"CatalogServiceFault"}, "MySoap::Interface473397799::ItemNotFoundFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"ItemNotFoundFault"}} }
    ],
    [ "http://services.gid.gap.com/catalog/v2/getProductInfos",
      "getProductInfos",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "ProductInfosRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "ProductInfosResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface473397799::CatalogServiceFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"CatalogServiceFault"}, "MySoap::Interface473397799::ItemNotFoundFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"ItemNotFoundFault"}} }
    ],
    [ "http://services.gid.gap.com/catalog/v2/getCatalogItemInfo",
      "getCatalogItemInfo",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "CatalogItemInfoRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "CatalogItemInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface473397799::CatalogServiceFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"CatalogServiceFault"}, "MySoap::Interface473397799::ItemNotFoundFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"ItemNotFoundFault"}} }
    ],
    [ "http://services.gid.gap.com/catalog/v2/getStyleColorIdAndInDCDateByLegacyCode",
      "getStyleColorIdAndInDCDateByLegacyCode",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "StyleColorIdAndInDCDateByLegacyCodeRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "StyleColorIdAndInDCDateByLegacyCodeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface473397799::CatalogServiceFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"CatalogServiceFault"}, "MySoap::Interface473397799::ItemNotFoundFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"ItemNotFoundFault"}} }
    ],
    [ "http://services.gid.gap.com/catalog/v2/getCatalogItemIdByLegacyCode",
      "getCatalogItemIdByLegacyCode",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "CatalogItemIdByLegacyCodeRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "CatalogItemIdByLegacyCodeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface473397799::CatalogServiceFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"CatalogServiceFault"}, "MySoap::Interface473397799::ItemNotFoundFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"ItemNotFoundFault"}} }
    ],
    [ "http://services.gid.gap.com/catalog/v2/getBaseSizeDetails",
      "getBaseSizeDetails",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "BaseSizeDetailsRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "BaseSizeDetailsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface473397799::CatalogServiceFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"CatalogServiceFault"}} }
    ],
    [ "http://services.gid.gap.com/catalog/v2/isParentCatalogItemId",
      "isParentCatalogItemId",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "ParentCatalogItemIdRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "ParentCatalogItemIdResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface473397799::CatalogServiceFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"CatalogServiceFault"}, "MySoap::Interface473397799::ItemNotFoundFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"ItemNotFoundFault"}} }
    ],
    [ "http://services.gid.gap.com/catalog/v2/getBaseSizeId",
      "getBaseSizeId",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "BaseSizeValueRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "BaseSizeValueResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface473397799::CatalogServiceFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"CatalogServiceFault"}} }
    ],
    [ "http://services.gid.gap.com/catalog/v2/getNonMerchandiseItems",
      "getNonMerchandiseItems",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "NonMerchandiseItemsRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "NonMerchandiseItemsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface473397799::CatalogServiceFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"CatalogServiceFault"}, "MySoap::Interface473397799::ItemNotFoundFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"ItemNotFoundFault"}} }
    ],
    [ "http://services.gid.gap.com/catalog/v2/getSiteBrand",
      "getSiteBrand",
      [ ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "SiteBrandResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface473397799::CatalogServiceFault_"=>{:use=>"literal", :encodingstyle=>"document", :ns=>"http://services.gid.gap.com/catalog/v2", :namespace=>nil, :name=>"CatalogServiceFault"}} }
    ],
    [ "http://services.gid.gap.com/catalog/v2/serviceAlive",
      "serviceAlive",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "ServiceAliveRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/catalog/v2", "ServiceAliveResponse"]] ],
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
