require 'AmazonSearch1242284604.rb'
require 'AmazonSearch1242284604MappingRegistry.rb'
require 'soap/rpc/driver'

module MySoap::Interface11858031

class AmazonSearchPort < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://soap.amazon.com/onca/soap2"
  NsSoapAmazonCom = "http://soap.amazon.com"

  Methods = [
    [ XSD::QName.new(NsSoapAmazonCom, "KeywordSearchRequest"),
      "http://soap.amazon.com",
      "keywordSearchRequest",
      [ ["in", "KeywordSearchRequest", ["MySoap::Interface11858031::KeywordRequest", "http://soap.amazon.com", "KeywordRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductInfo", "http://soap.amazon.com", "ProductInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "PowerSearchRequest"),
      "http://soap.amazon.com",
      "powerSearchRequest",
      [ ["in", "PowerSearchRequest", ["MySoap::Interface11858031::PowerRequest", "http://soap.amazon.com", "PowerRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductInfo", "http://soap.amazon.com", "ProductInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "BrowseNodeSearchRequest"),
      "http://soap.amazon.com",
      "browseNodeSearchRequest",
      [ ["in", "BrowseNodeSearchRequest", ["MySoap::Interface11858031::BrowseNodeRequest", "http://soap.amazon.com", "BrowseNodeRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductInfo", "http://soap.amazon.com", "ProductInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "AsinSearchRequest"),
      "http://soap.amazon.com",
      "asinSearchRequest",
      [ ["in", "AsinSearchRequest", ["MySoap::Interface11858031::AsinRequest", "http://soap.amazon.com", "AsinRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductInfo", "http://soap.amazon.com", "ProductInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "BlendedSearchRequest"),
      "http://soap.amazon.com",
      "blendedSearchRequest",
      [ ["in", "BlendedSearchRequest", ["MySoap::Interface11858031::BlendedRequest", "http://soap.amazon.com", "BlendedRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductLineArray", "http://soap.amazon.com", "ProductLineArray"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "UpcSearchRequest"),
      "http://soap.amazon.com",
      "upcSearchRequest",
      [ ["in", "UpcSearchRequest", ["MySoap::Interface11858031::UpcRequest", "http://soap.amazon.com", "UpcRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductInfo", "http://soap.amazon.com", "ProductInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "AuthorSearchRequest"),
      "http://soap.amazon.com",
      "authorSearchRequest",
      [ ["in", "AuthorSearchRequest", ["MySoap::Interface11858031::AuthorRequest", "http://soap.amazon.com", "AuthorRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductInfo", "http://soap.amazon.com", "ProductInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "ArtistSearchRequest"),
      "http://soap.amazon.com",
      "artistSearchRequest",
      [ ["in", "ArtistSearchRequest", ["MySoap::Interface11858031::ArtistRequest", "http://soap.amazon.com", "ArtistRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductInfo", "http://soap.amazon.com", "ProductInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "ActorSearchRequest"),
      "http://soap.amazon.com",
      "actorSearchRequest",
      [ ["in", "ActorSearchRequest", ["MySoap::Interface11858031::ActorRequest", "http://soap.amazon.com", "ActorRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductInfo", "http://soap.amazon.com", "ProductInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "ManufacturerSearchRequest"),
      "http://soap.amazon.com",
      "manufacturerSearchRequest",
      [ ["in", "ManufacturerSearchRequest", ["MySoap::Interface11858031::ManufacturerRequest", "http://soap.amazon.com", "ManufacturerRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductInfo", "http://soap.amazon.com", "ProductInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "DirectorSearchRequest"),
      "http://soap.amazon.com",
      "directorSearchRequest",
      [ ["in", "DirectorSearchRequest", ["MySoap::Interface11858031::DirectorRequest", "http://soap.amazon.com", "DirectorRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductInfo", "http://soap.amazon.com", "ProductInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "ExchangeSearchRequest"),
      "http://soap.amazon.com",
      "exchangeSearchRequest",
      [ ["in", "ExchangeSearchRequest", ["MySoap::Interface11858031::ExchangeRequest", "http://soap.amazon.com", "ExchangeRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ListingProductDetails", "http://soap.amazon.com", "ListingProductDetails"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "ListManiaSearchRequest"),
      "http://soap.amazon.com",
      "listManiaSearchRequest",
      [ ["in", "ListManiaSearchRequest", ["MySoap::Interface11858031::ListManiaRequest", "http://soap.amazon.com", "ListManiaRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductInfo", "http://soap.amazon.com", "ProductInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "WishlistSearchRequest"),
      "http://soap.amazon.com",
      "wishlistSearchRequest",
      [ ["in", "WishlistSearchRequest", ["MySoap::Interface11858031::WishlistRequest", "http://soap.amazon.com", "WishlistRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductInfo", "http://soap.amazon.com", "ProductInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "SellerProfileSearchRequest"),
      "http://soap.amazon.com",
      "sellerProfileSearchRequest",
      [ ["in", "SellerProfileSearchRequest", ["MySoap::Interface11858031::SellerProfileRequest", "http://soap.amazon.com", "SellerProfileRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::SellerProfile", "http://soap.amazon.com", "SellerProfile"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "SellerSearchRequest"),
      "http://soap.amazon.com",
      "sellerSearchRequest",
      [ ["in", "SellerSearchRequest", ["MySoap::Interface11858031::SellerRequest", "http://soap.amazon.com", "SellerRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::SellerSearch", "http://soap.amazon.com", "SellerSearch"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "MarketplaceSearchRequest"),
      "http://soap.amazon.com",
      "marketplaceSearchRequest",
      [ ["in", "MarketplaceSearchRequest", ["MySoap::Interface11858031::MarketplaceRequest", "http://soap.amazon.com", "MarketplaceRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::MarketplaceSearch", "http://soap.amazon.com", "MarketplaceSearch"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "SimilaritySearchRequest"),
      "http://soap.amazon.com",
      "similaritySearchRequest",
      [ ["in", "SimilaritySearchRequest", ["MySoap::Interface11858031::SimilarityRequest", "http://soap.amazon.com", "SimilarityRequest"]],
        ["retval", "return", ["MySoap::Interface11858031::ProductInfo", "http://soap.amazon.com", "ProductInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "GetShoppingCartRequest"),
      "http://soap.amazon.com",
      "getShoppingCartRequest",
      [ ["in", "GetShoppingCartRequest", ["MySoap::Interface11858031::GetShoppingCartRequest", "http://soap.amazon.com", "GetShoppingCartRequest"]],
        ["retval", "ShoppingCart", ["MySoap::Interface11858031::ShoppingCart", "http://soap.amazon.com", "ShoppingCart"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "ClearShoppingCartRequest"),
      "http://soap.amazon.com",
      "clearShoppingCartRequest",
      [ ["in", "ClearShoppingCartRequest", ["MySoap::Interface11858031::ClearShoppingCartRequest", "http://soap.amazon.com", "ClearShoppingCartRequest"]],
        ["retval", "ShoppingCart", ["MySoap::Interface11858031::ShoppingCart", "http://soap.amazon.com", "ShoppingCart"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "AddShoppingCartItemsRequest"),
      "http://soap.amazon.com",
      "addShoppingCartItemsRequest",
      [ ["in", "AddShoppingCartItemsRequest", ["MySoap::Interface11858031::AddShoppingCartItemsRequest", "http://soap.amazon.com", "AddShoppingCartItemsRequest"]],
        ["retval", "ShoppingCart", ["MySoap::Interface11858031::ShoppingCart", "http://soap.amazon.com", "ShoppingCart"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "RemoveShoppingCartItemsRequest"),
      "http://soap.amazon.com",
      "removeShoppingCartItemsRequest",
      [ ["in", "RemoveShoppingCartItemsRequest", ["MySoap::Interface11858031::RemoveShoppingCartItemsRequest", "http://soap.amazon.com", "RemoveShoppingCartItemsRequest"]],
        ["retval", "ShoppingCart", ["MySoap::Interface11858031::ShoppingCart", "http://soap.amazon.com", "ShoppingCart"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapAmazonCom, "ModifyShoppingCartItemsRequest"),
      "http://soap.amazon.com",
      "modifyShoppingCartItemsRequest",
      [ ["in", "ModifyShoppingCartItemsRequest", ["MySoap::Interface11858031::ModifyShoppingCartItemsRequest", "http://soap.amazon.com", "ModifyShoppingCartItemsRequest"]],
        ["retval", "ShoppingCart", ["MySoap::Interface11858031::ShoppingCart", "http://soap.amazon.com", "ShoppingCart"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = AmazonSearchMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = AmazonSearchMappingRegistry::LiteralRegistry
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
