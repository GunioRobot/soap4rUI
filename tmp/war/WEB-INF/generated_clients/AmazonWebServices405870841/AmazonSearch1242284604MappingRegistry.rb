require 'AmazonSearch1242284604.rb'
require 'soap/mapping'

module MySoap; module Interface11858031

module AmazonSearchMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsSoapAmazonCom = "http://soap.amazon.com"

  EncodedRegistry.set(
    MySoap::Interface11858031::ProductLineArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://soap.amazon.com", "ProductLine") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ProductLine,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ProductLine"),
    :schema_element => [
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "Mode")], [0, 1]],
      ["productInfo", ["MySoap::Interface11858031::ProductInfo", XSD::QName.new(nil, "ProductInfo")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ProductInfo,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ProductInfo"),
    :schema_element => [
      ["totalResults", ["SOAP::SOAPString", XSD::QName.new(nil, "TotalResults")], [0, 1]],
      ["totalPages", ["SOAP::SOAPString", XSD::QName.new(nil, "TotalPages")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["details", ["MySoap::Interface11858031::DetailsArray", XSD::QName.new(nil, "Details")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::DetailsArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "Details") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::Details,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "Details"),
    :schema_element => [
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "Url")], [0, 1]],
      ["asin", ["SOAP::SOAPString", XSD::QName.new(nil, "Asin")], [0, 1]],
      ["productName", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductName")], [0, 1]],
      ["catalog", ["SOAP::SOAPString", XSD::QName.new(nil, "Catalog")], [0, 1]],
      ["keyPhrases", ["MySoap::Interface11858031::KeyPhraseArray", XSD::QName.new(nil, "KeyPhrases")], [0, 1]],
      ["artists", ["MySoap::Interface11858031::ArtistArray", XSD::QName.new(nil, "Artists")], [0, 1]],
      ["authors", ["MySoap::Interface11858031::AuthorArray", XSD::QName.new(nil, "Authors")], [0, 1]],
      ["mpn", ["SOAP::SOAPString", XSD::QName.new(nil, "Mpn")], [0, 1]],
      ["starring", ["MySoap::Interface11858031::StarringArray", XSD::QName.new(nil, "Starring")], [0, 1]],
      ["directors", ["MySoap::Interface11858031::DirectorArray", XSD::QName.new(nil, "Directors")], [0, 1]],
      ["theatricalReleaseDate", ["SOAP::SOAPString", XSD::QName.new(nil, "TheatricalReleaseDate")], [0, 1]],
      ["releaseDate", ["SOAP::SOAPString", XSD::QName.new(nil, "ReleaseDate")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(nil, "Manufacturer")], [0, 1]],
      ["distributor", ["SOAP::SOAPString", XSD::QName.new(nil, "Distributor")], [0, 1]],
      ["imageUrlSmall", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageUrlSmall")], [0, 1]],
      ["imageUrlMedium", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageUrlMedium")], [0, 1]],
      ["imageUrlLarge", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageUrlLarge")], [0, 1]],
      ["listPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "ListPrice")], [0, 1]],
      ["ourPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "OurPrice")], [0, 1]],
      ["usedPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "UsedPrice")], [0, 1]],
      ["refurbishedPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "RefurbishedPrice")], [0, 1]],
      ["collectiblePrice", ["SOAP::SOAPString", XSD::QName.new(nil, "CollectiblePrice")], [0, 1]],
      ["thirdPartyNewPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "ThirdPartyNewPrice")], [0, 1]],
      ["numberOfOfferings", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfOfferings")], [0, 1]],
      ["thirdPartyNewCount", ["SOAP::SOAPString", XSD::QName.new(nil, "ThirdPartyNewCount")], [0, 1]],
      ["usedCount", ["SOAP::SOAPString", XSD::QName.new(nil, "UsedCount")], [0, 1]],
      ["collectibleCount", ["SOAP::SOAPString", XSD::QName.new(nil, "CollectibleCount")], [0, 1]],
      ["refurbishedCount", ["SOAP::SOAPString", XSD::QName.new(nil, "RefurbishedCount")], [0, 1]],
      ["thirdPartyProductInfo", ["MySoap::Interface11858031::ThirdPartyProductInfo", XSD::QName.new(nil, "ThirdPartyProductInfo")], [0, 1]],
      ["salesRank", ["SOAP::SOAPString", XSD::QName.new(nil, "SalesRank")], [0, 1]],
      ["browseList", ["MySoap::Interface11858031::BrowseNodeArray", XSD::QName.new(nil, "BrowseList")], [0, 1]],
      ["media", ["SOAP::SOAPString", XSD::QName.new(nil, "Media")], [0, 1]],
      ["readingLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "ReadingLevel")], [0, 1]],
      ["numberOfPages", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfPages")], [0, 1]],
      ["numberOfIssues", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfIssues")], [0, 1]],
      ["issuesPerYear", ["SOAP::SOAPString", XSD::QName.new(nil, "IssuesPerYear")], [0, 1]],
      ["subscriptionLength", ["SOAP::SOAPString", XSD::QName.new(nil, "SubscriptionLength")], [0, 1]],
      ["deweyNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "DeweyNumber")], [0, 1]],
      ["runningTime", ["SOAP::SOAPString", XSD::QName.new(nil, "RunningTime")], [0, 1]],
      ["publisher", ["SOAP::SOAPString", XSD::QName.new(nil, "Publisher")], [0, 1]],
      ["numMedia", ["SOAP::SOAPString", XSD::QName.new(nil, "NumMedia")], [0, 1]],
      ["isbn", ["SOAP::SOAPString", XSD::QName.new(nil, "Isbn")], [0, 1]],
      ["features", ["MySoap::Interface11858031::FeaturesArray", XSD::QName.new(nil, "Features")], [0, 1]],
      ["mpaaRating", ["SOAP::SOAPString", XSD::QName.new(nil, "MpaaRating")], [0, 1]],
      ["esrbRating", ["SOAP::SOAPString", XSD::QName.new(nil, "EsrbRating")], [0, 1]],
      ["ageGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "AgeGroup")], [0, 1]],
      ["availability", ["SOAP::SOAPString", XSD::QName.new(nil, "Availability")], [0, 1]],
      ["upc", ["SOAP::SOAPString", XSD::QName.new(nil, "Upc")], [0, 1]],
      ["tracks", ["MySoap::Interface11858031::TrackArray", XSD::QName.new(nil, "Tracks")], [0, 1]],
      ["accessories", ["MySoap::Interface11858031::AccessoryArray", XSD::QName.new(nil, "Accessories")], [0, 1]],
      ["platforms", ["MySoap::Interface11858031::PlatformArray", XSD::QName.new(nil, "Platforms")], [0, 1]],
      ["encoding", ["SOAP::SOAPString", XSD::QName.new(nil, "Encoding")], [0, 1]],
      ["reviews", ["MySoap::Interface11858031::Reviews", XSD::QName.new(nil, "Reviews")], [0, 1]],
      ["similarProducts", ["MySoap::Interface11858031::SimilarProductsArray", XSD::QName.new(nil, "SimilarProducts")], [0, 1]],
      ["lists", ["MySoap::Interface11858031::ListArray", XSD::QName.new(nil, "Lists")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::KeyPhraseArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "KeyPhrase") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::KeyPhrase,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "KeyPhrase"),
    :schema_element => [
      ["keyPhrase", ["SOAP::SOAPString", XSD::QName.new(nil, "KeyPhrase")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::ArtistArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::AuthorArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::StarringArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::DirectorArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::BrowseNodeArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "BrowseNode") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::BrowseNode,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "BrowseNode"),
    :schema_element => [
      ["browseId", ["SOAP::SOAPString", XSD::QName.new(nil, "BrowseId")], [0, 1]],
      ["browseName", ["SOAP::SOAPString", XSD::QName.new(nil, "BrowseName")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::FeaturesArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::TrackArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "Track") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::Track,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "Track"),
    :schema_element => [
      ["trackName", ["SOAP::SOAPString", XSD::QName.new(nil, "TrackName")], [0, 1]],
      ["byArtist", ["SOAP::SOAPString", XSD::QName.new(nil, "ByArtist")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::AccessoryArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::PlatformArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::Reviews,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "Reviews"),
    :schema_element => [
      ["avgCustomerRating", ["SOAP::SOAPString", XSD::QName.new(nil, "AvgCustomerRating")], [0, 1]],
      ["totalCustomerReviews", ["SOAP::SOAPString", XSD::QName.new(nil, "TotalCustomerReviews")], [0, 1]],
      ["customerReviews", ["MySoap::Interface11858031::CustomerReviewArray", XSD::QName.new(nil, "CustomerReviews")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::CustomerReviewArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "CustomerReview") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::CustomerReview,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "CustomerReview"),
    :schema_element => [
      ["rating", ["SOAP::SOAPString", XSD::QName.new(nil, "Rating")], [0, 1]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "Summary")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "Comment")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::SimilarProductsArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::ListArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::MarketplaceSearch,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "MarketplaceSearch"),
    :schema_element => [
      ["marketplaceSearchDetails", ["MySoap::Interface11858031::MarketplaceSearchDetailsArray", XSD::QName.new(nil, "MarketplaceSearchDetails")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::SellerProfile,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerProfile"),
    :schema_element => [
      ["sellerProfileDetails", ["MySoap::Interface11858031::SellerProfileDetailsArray", XSD::QName.new(nil, "SellerProfileDetails")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::SellerSearch,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerSearch"),
    :schema_element => [
      ["sellerSearchDetails", ["MySoap::Interface11858031::SellerSearchDetailsArray", XSD::QName.new(nil, "SellerSearchDetails")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::MarketplaceSearchDetails,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "MarketplaceSearchDetails"),
    :schema_element => [
      ["numberOfOpenListings", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfOpenListings")], [0, 1]],
      ["listingProductInfo", ["MySoap::Interface11858031::ListingProductInfo", XSD::QName.new(nil, "ListingProductInfo")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::MarketplaceSearchDetailsArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "MarketplaceSearchDetails") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::SellerProfileDetails,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerProfileDetails"),
    :schema_element => [
      ["sellerNickname", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerNickname")], [0, 1]],
      ["overallFeedbackRating", ["SOAP::SOAPString", XSD::QName.new(nil, "OverallFeedbackRating")], [0, 1]],
      ["numberOfFeedback", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfFeedback")], [0, 1]],
      ["numberOfCanceledBids", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfCanceledBids")], [0, 1]],
      ["numberOfCanceledAuctions", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfCanceledAuctions")], [0, 1]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreId")], [0, 1]],
      ["storeName", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreName")], [0, 1]],
      ["sellerFeedback", ["MySoap::Interface11858031::SellerFeedback", XSD::QName.new(nil, "SellerFeedback")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::SellerProfileDetailsArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "SellerProfileDetails") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::SellerSearchDetails,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerSearchDetails"),
    :schema_element => [
      ["sellerNickname", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerNickname")], [0, 1]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreId")], [0, 1]],
      ["storeName", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreName")], [0, 1]],
      ["numberOfOpenListings", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfOpenListings")], [0, 1]],
      ["listingProductInfo", ["MySoap::Interface11858031::ListingProductInfo", XSD::QName.new(nil, "ListingProductInfo")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::SellerSearchDetailsArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "SellerSearchDetails") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ListingProductInfo,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ListingProductInfo"),
    :schema_element => [
      ["listingProductDetails", ["MySoap::Interface11858031::ListingProductDetailsArray", XSD::QName.new(nil, "ListingProductDetails")]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::ListingProductDetailsArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "ListingProductDetails") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ListingProductDetails,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ListingProductDetails"),
    :schema_element => [
      ["exchangeId", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeId")], [0, 1]],
      ["listingId", ["SOAP::SOAPString", XSD::QName.new(nil, "ListingId")], [0, 1]],
      ["exchangeTitle", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeTitle")], [0, 1]],
      ["exchangePrice", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangePrice")], [0, 1]],
      ["exchangeAsin", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeAsin")], [0, 1]],
      ["exchangeEndDate", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeEndDate")], [0, 1]],
      ["exchangeTinyImage", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeTinyImage")], [0, 1]],
      ["exchangeSellerId", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeSellerId")], [0, 1]],
      ["exchangeSellerNickname", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeSellerNickname")], [0, 1]],
      ["exchangeStartDate", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeStartDate")], [0, 1]],
      ["exchangeStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeStatus")], [0, 1]],
      ["exchangeQuantity", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeQuantity")], [0, 1]],
      ["exchangeQuantityAllocated", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeQuantityAllocated")], [0, 1]],
      ["exchangeFeaturedCategory", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeFeaturedCategory")], [0, 1]],
      ["exchangeCondition", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeCondition")], [0, 1]],
      ["exchangeConditionType", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeConditionType")], [0, 1]],
      ["exchangeAvailability", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeAvailability")], [0, 1]],
      ["exchangeOfferingType", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeOfferingType")], [0, 1]],
      ["exchangeSellerState", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeSellerState")], [0, 1]],
      ["exchangeSellerCountry", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeSellerCountry")], [0, 1]],
      ["exchangeSellerRating", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeSellerRating")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::SellerFeedback,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerFeedback"),
    :schema_element => [
      ["feedback", ["MySoap::Interface11858031::FeedbackArray", XSD::QName.new(nil, "Feedback")]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::FeedbackArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "Feedback") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::Feedback,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "Feedback"),
    :schema_element => [
      ["feedbackRating", ["SOAP::SOAPString", XSD::QName.new(nil, "FeedbackRating")], [0, 1]],
      ["feedbackComments", ["SOAP::SOAPString", XSD::QName.new(nil, "FeedbackComments")], [0, 1]],
      ["feedbackDate", ["SOAP::SOAPString", XSD::QName.new(nil, "FeedbackDate")], [0, 1]],
      ["feedbackRater", ["SOAP::SOAPString", XSD::QName.new(nil, "FeedbackRater")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ThirdPartyProductInfo,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ThirdPartyProductInfo"),
    :schema_element => [
      ["thirdPartyProductDetails", ["MySoap::Interface11858031::ThirdPartyProductDetailsArray", XSD::QName.new(nil, "ThirdPartyProductDetails")]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::ThirdPartyProductDetailsArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "ThirdPartyProductDetails") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ThirdPartyProductDetails,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ThirdPartyProductDetails"),
    :schema_element => [
      ["offeringType", ["SOAP::SOAPString", XSD::QName.new(nil, "OfferingType")], [0, 1]],
      ["sellerId", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerId")], [0, 1]],
      ["sellerNickname", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerNickname")], [0, 1]],
      ["exchangeId", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeId")], [0, 1]],
      ["offeringPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "OfferingPrice")], [0, 1]],
      ["condition", ["SOAP::SOAPString", XSD::QName.new(nil, "Condition")], [0, 1]],
      ["conditionType", ["SOAP::SOAPString", XSD::QName.new(nil, "ConditionType")], [0, 1]],
      ["exchangeAvailability", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeAvailability")], [0, 1]],
      ["sellerCountry", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerCountry")], [0, 1]],
      ["sellerState", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerState")], [0, 1]],
      ["shipComments", ["SOAP::SOAPString", XSD::QName.new(nil, "ShipComments")], [0, 1]],
      ["sellerRating", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerRating")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::KeywordRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "KeywordRequest"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(nil, "keyword")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::PowerRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "PowerRequest"),
    :schema_element => [
      ["power", ["SOAP::SOAPString", XSD::QName.new(nil, "power")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::BrowseNodeRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "BrowseNodeRequest"),
    :schema_element => [
      ["browse_node", ["SOAP::SOAPString", XSD::QName.new(nil, "browse_node")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::AsinRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "AsinRequest"),
    :schema_element => [
      ["asin", ["SOAP::SOAPString", XSD::QName.new(nil, "asin")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["offer", ["SOAP::SOAPString", XSD::QName.new(nil, "offer")], [0, 1]],
      ["offerpage", ["SOAP::SOAPString", XSD::QName.new(nil, "offerpage")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::BlendedRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "BlendedRequest"),
    :schema_element => [
      ["blended", ["SOAP::SOAPString", XSD::QName.new(nil, "blended")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::UpcRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "UpcRequest"),
    :schema_element => [
      ["upc", ["SOAP::SOAPString", XSD::QName.new(nil, "upc")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ArtistRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ArtistRequest"),
    :schema_element => [
      ["artist", ["SOAP::SOAPString", XSD::QName.new(nil, "artist")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::AuthorRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "AuthorRequest"),
    :schema_element => [
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ActorRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ActorRequest"),
    :schema_element => [
      ["actor", ["SOAP::SOAPString", XSD::QName.new(nil, "actor")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::DirectorRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "DirectorRequest"),
    :schema_element => [
      ["director", ["SOAP::SOAPString", XSD::QName.new(nil, "director")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ExchangeRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ExchangeRequest"),
    :schema_element => [
      ["exchange_id", ["SOAP::SOAPString", XSD::QName.new(nil, "exchange_id")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ManufacturerRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ManufacturerRequest"),
    :schema_element => [
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(nil, "manufacturer")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ListManiaRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ListManiaRequest"),
    :schema_element => [
      ["lm_id", ["SOAP::SOAPString", XSD::QName.new(nil, "lm_id")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::WishlistRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "WishlistRequest"),
    :schema_element => [
      ["wishlist_id", ["SOAP::SOAPString", XSD::QName.new(nil, "wishlist_id")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::MarketplaceRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "MarketplaceRequest"),
    :schema_element => [
      ["marketplace_search", ["SOAP::SOAPString", XSD::QName.new(nil, "marketplace_search")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(nil, "keyword")], [0, 1]],
      ["keyword_search", ["SOAP::SOAPString", XSD::QName.new(nil, "keyword_search")], [0, 1]],
      ["browse_id", ["SOAP::SOAPString", XSD::QName.new(nil, "browse_id")], [0, 1]],
      ["zipcode", ["SOAP::SOAPString", XSD::QName.new(nil, "zipcode")], [0, 1]],
      ["area_id", ["SOAP::SOAPString", XSD::QName.new(nil, "area_id")], [0, 1]],
      ["geo", ["SOAP::SOAPString", XSD::QName.new(nil, "geo")], [0, 1]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["listing_id", ["SOAP::SOAPString", XSD::QName.new(nil, "listing_id")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]],
      ["index", ["SOAP::SOAPString", XSD::QName.new(nil, "index")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::SellerProfileRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerProfileRequest"),
    :schema_element => [
      ["seller_id", ["SOAP::SOAPString", XSD::QName.new(nil, "seller_id")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::SellerRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerRequest"),
    :schema_element => [
      ["seller_id", ["SOAP::SOAPString", XSD::QName.new(nil, "seller_id")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["offerstatus", ["SOAP::SOAPString", XSD::QName.new(nil, "offerstatus")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["seller_browse_id", ["SOAP::SOAPString", XSD::QName.new(nil, "seller_browse_id")], [0, 1]],
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(nil, "keyword")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]],
      ["index", ["SOAP::SOAPString", XSD::QName.new(nil, "index")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::SimilarityRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SimilarityRequest"),
    :schema_element => [
      ["asin", ["SOAP::SOAPString", XSD::QName.new(nil, "asin")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::ItemIdArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::ItemArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "Item") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::Item,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "Item"),
    :schema_element => [
      ["itemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemId")]],
      ["productName", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductName")]],
      ["catalog", ["SOAP::SOAPString", XSD::QName.new(nil, "Catalog")]],
      ["asin", ["SOAP::SOAPString", XSD::QName.new(nil, "Asin")], [0, 1]],
      ["exchangeId", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeId")], [0, 1]],
      ["quantity", ["SOAP::SOAPString", XSD::QName.new(nil, "Quantity")]],
      ["listPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "ListPrice")], [0, 1]],
      ["ourPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "OurPrice")]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::ItemQuantityArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "ItemQuantity") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ItemQuantity,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ItemQuantity"),
    :schema_element => [
      ["itemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemId")]],
      ["quantity", ["SOAP::SOAPString", XSD::QName.new(nil, "Quantity")]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface11858031::AddItemArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoapAmazonCom, "AddItem") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::AddItem,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "AddItem"),
    :schema_element => [
      ["asin", ["SOAP::SOAPString", XSD::QName.new(nil, "Asin")], [0, 1]],
      ["exchangeId", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeId")], [0, 1]],
      ["quantity", ["SOAP::SOAPString", XSD::QName.new(nil, "Quantity")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ShoppingCart,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ShoppingCart"),
    :schema_element => [
      ["cartId", ["SOAP::SOAPString", XSD::QName.new(nil, "CartId")]],
      ["hMAC", ["SOAP::SOAPString", XSD::QName.new(nil, "HMAC")]],
      ["purchaseUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "PurchaseUrl")]],
      ["items", ["MySoap::Interface11858031::ItemArray", XSD::QName.new(nil, "Items")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::GetShoppingCartRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "GetShoppingCartRequest"),
    :schema_element => [
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["cartId", ["SOAP::SOAPString", XSD::QName.new(nil, "CartId")]],
      ["hMAC", ["SOAP::SOAPString", XSD::QName.new(nil, "HMAC")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ClearShoppingCartRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ClearShoppingCartRequest"),
    :schema_element => [
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["cartId", ["SOAP::SOAPString", XSD::QName.new(nil, "CartId")]],
      ["hMAC", ["SOAP::SOAPString", XSD::QName.new(nil, "HMAC")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::AddShoppingCartItemsRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "AddShoppingCartItemsRequest"),
    :schema_element => [
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["cartId", ["SOAP::SOAPString", XSD::QName.new(nil, "CartId")], [0, 1]],
      ["hMAC", ["SOAP::SOAPString", XSD::QName.new(nil, "HMAC")], [0, 1]],
      ["items", ["MySoap::Interface11858031::AddItemArray", XSD::QName.new(nil, "Items")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::RemoveShoppingCartItemsRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "RemoveShoppingCartItemsRequest"),
    :schema_element => [
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["cartId", ["SOAP::SOAPString", XSD::QName.new(nil, "CartId")]],
      ["hMAC", ["SOAP::SOAPString", XSD::QName.new(nil, "HMAC")]],
      ["items", ["MySoap::Interface11858031::ItemIdArray", XSD::QName.new(nil, "Items")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface11858031::ModifyShoppingCartItemsRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ModifyShoppingCartItemsRequest"),
    :schema_element => [
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["cartId", ["SOAP::SOAPString", XSD::QName.new(nil, "CartId")]],
      ["hMAC", ["SOAP::SOAPString", XSD::QName.new(nil, "HMAC")]],
      ["items", ["MySoap::Interface11858031::ItemQuantityArray", XSD::QName.new(nil, "Items")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ProductLine,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ProductLine"),
    :schema_element => [
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "Mode")], [0, 1]],
      ["productInfo", ["MySoap::Interface11858031::ProductInfo", XSD::QName.new(nil, "ProductInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ProductInfo,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ProductInfo"),
    :schema_element => [
      ["totalResults", ["SOAP::SOAPString", XSD::QName.new(nil, "TotalResults")], [0, 1]],
      ["totalPages", ["SOAP::SOAPString", XSD::QName.new(nil, "TotalPages")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["details", ["MySoap::Interface11858031::DetailsArray", XSD::QName.new(nil, "Details")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::Details,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "Details"),
    :schema_element => [
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "Url")], [0, 1]],
      ["asin", ["SOAP::SOAPString", XSD::QName.new(nil, "Asin")], [0, 1]],
      ["productName", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductName")], [0, 1]],
      ["catalog", ["SOAP::SOAPString", XSD::QName.new(nil, "Catalog")], [0, 1]],
      ["keyPhrases", ["MySoap::Interface11858031::KeyPhraseArray", XSD::QName.new(nil, "KeyPhrases")], [0, 1]],
      ["artists", ["MySoap::Interface11858031::ArtistArray", XSD::QName.new(nil, "Artists")], [0, 1]],
      ["authors", ["MySoap::Interface11858031::AuthorArray", XSD::QName.new(nil, "Authors")], [0, 1]],
      ["mpn", ["SOAP::SOAPString", XSD::QName.new(nil, "Mpn")], [0, 1]],
      ["starring", ["MySoap::Interface11858031::StarringArray", XSD::QName.new(nil, "Starring")], [0, 1]],
      ["directors", ["MySoap::Interface11858031::DirectorArray", XSD::QName.new(nil, "Directors")], [0, 1]],
      ["theatricalReleaseDate", ["SOAP::SOAPString", XSD::QName.new(nil, "TheatricalReleaseDate")], [0, 1]],
      ["releaseDate", ["SOAP::SOAPString", XSD::QName.new(nil, "ReleaseDate")], [0, 1]],
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(nil, "Manufacturer")], [0, 1]],
      ["distributor", ["SOAP::SOAPString", XSD::QName.new(nil, "Distributor")], [0, 1]],
      ["imageUrlSmall", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageUrlSmall")], [0, 1]],
      ["imageUrlMedium", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageUrlMedium")], [0, 1]],
      ["imageUrlLarge", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageUrlLarge")], [0, 1]],
      ["listPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "ListPrice")], [0, 1]],
      ["ourPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "OurPrice")], [0, 1]],
      ["usedPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "UsedPrice")], [0, 1]],
      ["refurbishedPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "RefurbishedPrice")], [0, 1]],
      ["collectiblePrice", ["SOAP::SOAPString", XSD::QName.new(nil, "CollectiblePrice")], [0, 1]],
      ["thirdPartyNewPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "ThirdPartyNewPrice")], [0, 1]],
      ["numberOfOfferings", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfOfferings")], [0, 1]],
      ["thirdPartyNewCount", ["SOAP::SOAPString", XSD::QName.new(nil, "ThirdPartyNewCount")], [0, 1]],
      ["usedCount", ["SOAP::SOAPString", XSD::QName.new(nil, "UsedCount")], [0, 1]],
      ["collectibleCount", ["SOAP::SOAPString", XSD::QName.new(nil, "CollectibleCount")], [0, 1]],
      ["refurbishedCount", ["SOAP::SOAPString", XSD::QName.new(nil, "RefurbishedCount")], [0, 1]],
      ["thirdPartyProductInfo", ["MySoap::Interface11858031::ThirdPartyProductInfo", XSD::QName.new(nil, "ThirdPartyProductInfo")], [0, 1]],
      ["salesRank", ["SOAP::SOAPString", XSD::QName.new(nil, "SalesRank")], [0, 1]],
      ["browseList", ["MySoap::Interface11858031::BrowseNodeArray", XSD::QName.new(nil, "BrowseList")], [0, 1]],
      ["media", ["SOAP::SOAPString", XSD::QName.new(nil, "Media")], [0, 1]],
      ["readingLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "ReadingLevel")], [0, 1]],
      ["numberOfPages", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfPages")], [0, 1]],
      ["numberOfIssues", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfIssues")], [0, 1]],
      ["issuesPerYear", ["SOAP::SOAPString", XSD::QName.new(nil, "IssuesPerYear")], [0, 1]],
      ["subscriptionLength", ["SOAP::SOAPString", XSD::QName.new(nil, "SubscriptionLength")], [0, 1]],
      ["deweyNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "DeweyNumber")], [0, 1]],
      ["runningTime", ["SOAP::SOAPString", XSD::QName.new(nil, "RunningTime")], [0, 1]],
      ["publisher", ["SOAP::SOAPString", XSD::QName.new(nil, "Publisher")], [0, 1]],
      ["numMedia", ["SOAP::SOAPString", XSD::QName.new(nil, "NumMedia")], [0, 1]],
      ["isbn", ["SOAP::SOAPString", XSD::QName.new(nil, "Isbn")], [0, 1]],
      ["features", ["MySoap::Interface11858031::FeaturesArray", XSD::QName.new(nil, "Features")], [0, 1]],
      ["mpaaRating", ["SOAP::SOAPString", XSD::QName.new(nil, "MpaaRating")], [0, 1]],
      ["esrbRating", ["SOAP::SOAPString", XSD::QName.new(nil, "EsrbRating")], [0, 1]],
      ["ageGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "AgeGroup")], [0, 1]],
      ["availability", ["SOAP::SOAPString", XSD::QName.new(nil, "Availability")], [0, 1]],
      ["upc", ["SOAP::SOAPString", XSD::QName.new(nil, "Upc")], [0, 1]],
      ["tracks", ["MySoap::Interface11858031::TrackArray", XSD::QName.new(nil, "Tracks")], [0, 1]],
      ["accessories", ["MySoap::Interface11858031::AccessoryArray", XSD::QName.new(nil, "Accessories")], [0, 1]],
      ["platforms", ["MySoap::Interface11858031::PlatformArray", XSD::QName.new(nil, "Platforms")], [0, 1]],
      ["encoding", ["SOAP::SOAPString", XSD::QName.new(nil, "Encoding")], [0, 1]],
      ["reviews", ["MySoap::Interface11858031::Reviews", XSD::QName.new(nil, "Reviews")], [0, 1]],
      ["similarProducts", ["MySoap::Interface11858031::SimilarProductsArray", XSD::QName.new(nil, "SimilarProducts")], [0, 1]],
      ["lists", ["MySoap::Interface11858031::ListArray", XSD::QName.new(nil, "Lists")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::KeyPhrase,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "KeyPhrase"),
    :schema_element => [
      ["keyPhrase", ["SOAP::SOAPString", XSD::QName.new(nil, "KeyPhrase")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::BrowseNode,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "BrowseNode"),
    :schema_element => [
      ["browseId", ["SOAP::SOAPString", XSD::QName.new(nil, "BrowseId")], [0, 1]],
      ["browseName", ["SOAP::SOAPString", XSD::QName.new(nil, "BrowseName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::Track,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "Track"),
    :schema_element => [
      ["trackName", ["SOAP::SOAPString", XSD::QName.new(nil, "TrackName")], [0, 1]],
      ["byArtist", ["SOAP::SOAPString", XSD::QName.new(nil, "ByArtist")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::Reviews,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "Reviews"),
    :schema_element => [
      ["avgCustomerRating", ["SOAP::SOAPString", XSD::QName.new(nil, "AvgCustomerRating")], [0, 1]],
      ["totalCustomerReviews", ["SOAP::SOAPString", XSD::QName.new(nil, "TotalCustomerReviews")], [0, 1]],
      ["customerReviews", ["MySoap::Interface11858031::CustomerReviewArray", XSD::QName.new(nil, "CustomerReviews")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::CustomerReview,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "CustomerReview"),
    :schema_element => [
      ["rating", ["SOAP::SOAPString", XSD::QName.new(nil, "Rating")], [0, 1]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "Summary")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "Comment")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::MarketplaceSearch,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "MarketplaceSearch"),
    :schema_element => [
      ["marketplaceSearchDetails", ["MySoap::Interface11858031::MarketplaceSearchDetailsArray", XSD::QName.new(nil, "MarketplaceSearchDetails")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::SellerProfile,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerProfile"),
    :schema_element => [
      ["sellerProfileDetails", ["MySoap::Interface11858031::SellerProfileDetailsArray", XSD::QName.new(nil, "SellerProfileDetails")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::SellerSearch,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerSearch"),
    :schema_element => [
      ["sellerSearchDetails", ["MySoap::Interface11858031::SellerSearchDetailsArray", XSD::QName.new(nil, "SellerSearchDetails")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::MarketplaceSearchDetails,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "MarketplaceSearchDetails"),
    :schema_element => [
      ["numberOfOpenListings", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfOpenListings")], [0, 1]],
      ["listingProductInfo", ["MySoap::Interface11858031::ListingProductInfo", XSD::QName.new(nil, "ListingProductInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::SellerProfileDetails,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerProfileDetails"),
    :schema_element => [
      ["sellerNickname", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerNickname")], [0, 1]],
      ["overallFeedbackRating", ["SOAP::SOAPString", XSD::QName.new(nil, "OverallFeedbackRating")], [0, 1]],
      ["numberOfFeedback", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfFeedback")], [0, 1]],
      ["numberOfCanceledBids", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfCanceledBids")], [0, 1]],
      ["numberOfCanceledAuctions", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfCanceledAuctions")], [0, 1]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreId")], [0, 1]],
      ["storeName", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreName")], [0, 1]],
      ["sellerFeedback", ["MySoap::Interface11858031::SellerFeedback", XSD::QName.new(nil, "SellerFeedback")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::SellerSearchDetails,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerSearchDetails"),
    :schema_element => [
      ["sellerNickname", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerNickname")], [0, 1]],
      ["storeId", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreId")], [0, 1]],
      ["storeName", ["SOAP::SOAPString", XSD::QName.new(nil, "StoreName")], [0, 1]],
      ["numberOfOpenListings", ["SOAP::SOAPString", XSD::QName.new(nil, "NumberOfOpenListings")], [0, 1]],
      ["listingProductInfo", ["MySoap::Interface11858031::ListingProductInfo", XSD::QName.new(nil, "ListingProductInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ListingProductInfo,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ListingProductInfo"),
    :schema_element => [
      ["listingProductDetails", ["MySoap::Interface11858031::ListingProductDetailsArray", XSD::QName.new(nil, "ListingProductDetails")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ListingProductDetails,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ListingProductDetails"),
    :schema_element => [
      ["exchangeId", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeId")], [0, 1]],
      ["listingId", ["SOAP::SOAPString", XSD::QName.new(nil, "ListingId")], [0, 1]],
      ["exchangeTitle", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeTitle")], [0, 1]],
      ["exchangePrice", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangePrice")], [0, 1]],
      ["exchangeAsin", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeAsin")], [0, 1]],
      ["exchangeEndDate", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeEndDate")], [0, 1]],
      ["exchangeTinyImage", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeTinyImage")], [0, 1]],
      ["exchangeSellerId", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeSellerId")], [0, 1]],
      ["exchangeSellerNickname", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeSellerNickname")], [0, 1]],
      ["exchangeStartDate", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeStartDate")], [0, 1]],
      ["exchangeStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeStatus")], [0, 1]],
      ["exchangeQuantity", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeQuantity")], [0, 1]],
      ["exchangeQuantityAllocated", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeQuantityAllocated")], [0, 1]],
      ["exchangeFeaturedCategory", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeFeaturedCategory")], [0, 1]],
      ["exchangeCondition", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeCondition")], [0, 1]],
      ["exchangeConditionType", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeConditionType")], [0, 1]],
      ["exchangeAvailability", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeAvailability")], [0, 1]],
      ["exchangeOfferingType", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeOfferingType")], [0, 1]],
      ["exchangeSellerState", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeSellerState")], [0, 1]],
      ["exchangeSellerCountry", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeSellerCountry")], [0, 1]],
      ["exchangeSellerRating", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeSellerRating")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::SellerFeedback,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerFeedback"),
    :schema_element => [
      ["feedback", ["MySoap::Interface11858031::FeedbackArray", XSD::QName.new(nil, "Feedback")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::Feedback,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "Feedback"),
    :schema_element => [
      ["feedbackRating", ["SOAP::SOAPString", XSD::QName.new(nil, "FeedbackRating")], [0, 1]],
      ["feedbackComments", ["SOAP::SOAPString", XSD::QName.new(nil, "FeedbackComments")], [0, 1]],
      ["feedbackDate", ["SOAP::SOAPString", XSD::QName.new(nil, "FeedbackDate")], [0, 1]],
      ["feedbackRater", ["SOAP::SOAPString", XSD::QName.new(nil, "FeedbackRater")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ThirdPartyProductInfo,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ThirdPartyProductInfo"),
    :schema_element => [
      ["thirdPartyProductDetails", ["MySoap::Interface11858031::ThirdPartyProductDetailsArray", XSD::QName.new(nil, "ThirdPartyProductDetails")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ThirdPartyProductDetails,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ThirdPartyProductDetails"),
    :schema_element => [
      ["offeringType", ["SOAP::SOAPString", XSD::QName.new(nil, "OfferingType")], [0, 1]],
      ["sellerId", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerId")], [0, 1]],
      ["sellerNickname", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerNickname")], [0, 1]],
      ["exchangeId", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeId")], [0, 1]],
      ["offeringPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "OfferingPrice")], [0, 1]],
      ["condition", ["SOAP::SOAPString", XSD::QName.new(nil, "Condition")], [0, 1]],
      ["conditionType", ["SOAP::SOAPString", XSD::QName.new(nil, "ConditionType")], [0, 1]],
      ["exchangeAvailability", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeAvailability")], [0, 1]],
      ["sellerCountry", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerCountry")], [0, 1]],
      ["sellerState", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerState")], [0, 1]],
      ["shipComments", ["SOAP::SOAPString", XSD::QName.new(nil, "ShipComments")], [0, 1]],
      ["sellerRating", ["SOAP::SOAPString", XSD::QName.new(nil, "SellerRating")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::KeywordRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "KeywordRequest"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(nil, "keyword")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::PowerRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "PowerRequest"),
    :schema_element => [
      ["power", ["SOAP::SOAPString", XSD::QName.new(nil, "power")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::BrowseNodeRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "BrowseNodeRequest"),
    :schema_element => [
      ["browse_node", ["SOAP::SOAPString", XSD::QName.new(nil, "browse_node")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::AsinRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "AsinRequest"),
    :schema_element => [
      ["asin", ["SOAP::SOAPString", XSD::QName.new(nil, "asin")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["offer", ["SOAP::SOAPString", XSD::QName.new(nil, "offer")], [0, 1]],
      ["offerpage", ["SOAP::SOAPString", XSD::QName.new(nil, "offerpage")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::BlendedRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "BlendedRequest"),
    :schema_element => [
      ["blended", ["SOAP::SOAPString", XSD::QName.new(nil, "blended")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::UpcRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "UpcRequest"),
    :schema_element => [
      ["upc", ["SOAP::SOAPString", XSD::QName.new(nil, "upc")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ArtistRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ArtistRequest"),
    :schema_element => [
      ["artist", ["SOAP::SOAPString", XSD::QName.new(nil, "artist")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::AuthorRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "AuthorRequest"),
    :schema_element => [
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ActorRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ActorRequest"),
    :schema_element => [
      ["actor", ["SOAP::SOAPString", XSD::QName.new(nil, "actor")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::DirectorRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "DirectorRequest"),
    :schema_element => [
      ["director", ["SOAP::SOAPString", XSD::QName.new(nil, "director")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ExchangeRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ExchangeRequest"),
    :schema_element => [
      ["exchange_id", ["SOAP::SOAPString", XSD::QName.new(nil, "exchange_id")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ManufacturerRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ManufacturerRequest"),
    :schema_element => [
      ["manufacturer", ["SOAP::SOAPString", XSD::QName.new(nil, "manufacturer")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["mode", ["SOAP::SOAPString", XSD::QName.new(nil, "mode")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["variations", ["SOAP::SOAPString", XSD::QName.new(nil, "variations")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ListManiaRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ListManiaRequest"),
    :schema_element => [
      ["lm_id", ["SOAP::SOAPString", XSD::QName.new(nil, "lm_id")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::WishlistRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "WishlistRequest"),
    :schema_element => [
      ["wishlist_id", ["SOAP::SOAPString", XSD::QName.new(nil, "wishlist_id")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::MarketplaceRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "MarketplaceRequest"),
    :schema_element => [
      ["marketplace_search", ["SOAP::SOAPString", XSD::QName.new(nil, "marketplace_search")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(nil, "keyword")], [0, 1]],
      ["keyword_search", ["SOAP::SOAPString", XSD::QName.new(nil, "keyword_search")], [0, 1]],
      ["browse_id", ["SOAP::SOAPString", XSD::QName.new(nil, "browse_id")], [0, 1]],
      ["zipcode", ["SOAP::SOAPString", XSD::QName.new(nil, "zipcode")], [0, 1]],
      ["area_id", ["SOAP::SOAPString", XSD::QName.new(nil, "area_id")], [0, 1]],
      ["geo", ["SOAP::SOAPString", XSD::QName.new(nil, "geo")], [0, 1]],
      ["sort", ["SOAP::SOAPString", XSD::QName.new(nil, "sort")], [0, 1]],
      ["listing_id", ["SOAP::SOAPString", XSD::QName.new(nil, "listing_id")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]],
      ["index", ["SOAP::SOAPString", XSD::QName.new(nil, "index")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::SellerProfileRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerProfileRequest"),
    :schema_element => [
      ["seller_id", ["SOAP::SOAPString", XSD::QName.new(nil, "seller_id")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::SellerRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SellerRequest"),
    :schema_element => [
      ["seller_id", ["SOAP::SOAPString", XSD::QName.new(nil, "seller_id")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["offerstatus", ["SOAP::SOAPString", XSD::QName.new(nil, "offerstatus")]],
      ["page", ["SOAP::SOAPString", XSD::QName.new(nil, "page")]],
      ["seller_browse_id", ["SOAP::SOAPString", XSD::QName.new(nil, "seller_browse_id")], [0, 1]],
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(nil, "keyword")], [0, 1]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]],
      ["index", ["SOAP::SOAPString", XSD::QName.new(nil, "index")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::SimilarityRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "SimilarityRequest"),
    :schema_element => [
      ["asin", ["SOAP::SOAPString", XSD::QName.new(nil, "asin")]],
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::Item,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "Item"),
    :schema_element => [
      ["itemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemId")]],
      ["productName", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductName")]],
      ["catalog", ["SOAP::SOAPString", XSD::QName.new(nil, "Catalog")]],
      ["asin", ["SOAP::SOAPString", XSD::QName.new(nil, "Asin")], [0, 1]],
      ["exchangeId", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeId")], [0, 1]],
      ["quantity", ["SOAP::SOAPString", XSD::QName.new(nil, "Quantity")]],
      ["listPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "ListPrice")], [0, 1]],
      ["ourPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "OurPrice")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ItemQuantity,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ItemQuantity"),
    :schema_element => [
      ["itemId", ["SOAP::SOAPString", XSD::QName.new(nil, "ItemId")]],
      ["quantity", ["SOAP::SOAPString", XSD::QName.new(nil, "Quantity")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::AddItem,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "AddItem"),
    :schema_element => [
      ["asin", ["SOAP::SOAPString", XSD::QName.new(nil, "Asin")], [0, 1]],
      ["exchangeId", ["SOAP::SOAPString", XSD::QName.new(nil, "ExchangeId")], [0, 1]],
      ["quantity", ["SOAP::SOAPString", XSD::QName.new(nil, "Quantity")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ShoppingCart,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ShoppingCart"),
    :schema_element => [
      ["cartId", ["SOAP::SOAPString", XSD::QName.new(nil, "CartId")]],
      ["hMAC", ["SOAP::SOAPString", XSD::QName.new(nil, "HMAC")]],
      ["purchaseUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "PurchaseUrl")]],
      ["items", ["MySoap::Interface11858031::ItemArray", XSD::QName.new(nil, "Items")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::GetShoppingCartRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "GetShoppingCartRequest"),
    :schema_element => [
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["cartId", ["SOAP::SOAPString", XSD::QName.new(nil, "CartId")]],
      ["hMAC", ["SOAP::SOAPString", XSD::QName.new(nil, "HMAC")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ClearShoppingCartRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ClearShoppingCartRequest"),
    :schema_element => [
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["cartId", ["SOAP::SOAPString", XSD::QName.new(nil, "CartId")]],
      ["hMAC", ["SOAP::SOAPString", XSD::QName.new(nil, "HMAC")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::AddShoppingCartItemsRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "AddShoppingCartItemsRequest"),
    :schema_element => [
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["cartId", ["SOAP::SOAPString", XSD::QName.new(nil, "CartId")], [0, 1]],
      ["hMAC", ["SOAP::SOAPString", XSD::QName.new(nil, "HMAC")], [0, 1]],
      ["items", ["MySoap::Interface11858031::AddItemArray", XSD::QName.new(nil, "Items")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::RemoveShoppingCartItemsRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "RemoveShoppingCartItemsRequest"),
    :schema_element => [
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["cartId", ["SOAP::SOAPString", XSD::QName.new(nil, "CartId")]],
      ["hMAC", ["SOAP::SOAPString", XSD::QName.new(nil, "HMAC")]],
      ["items", ["MySoap::Interface11858031::ItemIdArray", XSD::QName.new(nil, "Items")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface11858031::ModifyShoppingCartItemsRequest,
    :schema_type => XSD::QName.new(NsSoapAmazonCom, "ModifyShoppingCartItemsRequest"),
    :schema_element => [
      ["tag", ["SOAP::SOAPString", XSD::QName.new(nil, "tag")]],
      ["devtag", ["SOAP::SOAPString", XSD::QName.new(nil, "devtag")]],
      ["cartId", ["SOAP::SOAPString", XSD::QName.new(nil, "CartId")]],
      ["hMAC", ["SOAP::SOAPString", XSD::QName.new(nil, "HMAC")]],
      ["items", ["MySoap::Interface11858031::ItemQuantityArray", XSD::QName.new(nil, "Items")]],
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "locale")], [0, 1]]
    ]
  )
end

end; end
