require 'xsd/qname'

module MySoap; module Interface11858031


# {http://soap.amazon.com}ProductLine
#   mode - SOAP::SOAPString
#   productInfo - MySoap::Interface11858031::ProductInfo
class ProductLine
  attr_accessor :mode
  attr_accessor :productInfo

  def initialize(mode = nil, productInfo = nil)
    @mode = mode
    @productInfo = productInfo
  end
end

# {http://soap.amazon.com}ProductInfo
#   totalResults - SOAP::SOAPString
#   totalPages - SOAP::SOAPString
#   listName - SOAP::SOAPString
#   details - MySoap::Interface11858031::DetailsArray
class ProductInfo
  attr_accessor :totalResults
  attr_accessor :totalPages
  attr_accessor :listName
  attr_accessor :details

  def initialize(totalResults = nil, totalPages = nil, listName = nil, details = nil)
    @totalResults = totalResults
    @totalPages = totalPages
    @listName = listName
    @details = details
  end
end

# {http://soap.amazon.com}Details
#   url - SOAP::SOAPString
#   asin - SOAP::SOAPString
#   productName - SOAP::SOAPString
#   catalog - SOAP::SOAPString
#   keyPhrases - MySoap::Interface11858031::KeyPhraseArray
#   artists - MySoap::Interface11858031::ArtistArray
#   authors - MySoap::Interface11858031::AuthorArray
#   mpn - SOAP::SOAPString
#   starring - MySoap::Interface11858031::StarringArray
#   directors - MySoap::Interface11858031::DirectorArray
#   theatricalReleaseDate - SOAP::SOAPString
#   releaseDate - SOAP::SOAPString
#   manufacturer - SOAP::SOAPString
#   distributor - SOAP::SOAPString
#   imageUrlSmall - SOAP::SOAPString
#   imageUrlMedium - SOAP::SOAPString
#   imageUrlLarge - SOAP::SOAPString
#   listPrice - SOAP::SOAPString
#   ourPrice - SOAP::SOAPString
#   usedPrice - SOAP::SOAPString
#   refurbishedPrice - SOAP::SOAPString
#   collectiblePrice - SOAP::SOAPString
#   thirdPartyNewPrice - SOAP::SOAPString
#   numberOfOfferings - SOAP::SOAPString
#   thirdPartyNewCount - SOAP::SOAPString
#   usedCount - SOAP::SOAPString
#   collectibleCount - SOAP::SOAPString
#   refurbishedCount - SOAP::SOAPString
#   thirdPartyProductInfo - MySoap::Interface11858031::ThirdPartyProductInfo
#   salesRank - SOAP::SOAPString
#   browseList - MySoap::Interface11858031::BrowseNodeArray
#   media - SOAP::SOAPString
#   readingLevel - SOAP::SOAPString
#   numberOfPages - SOAP::SOAPString
#   numberOfIssues - SOAP::SOAPString
#   issuesPerYear - SOAP::SOAPString
#   subscriptionLength - SOAP::SOAPString
#   deweyNumber - SOAP::SOAPString
#   runningTime - SOAP::SOAPString
#   publisher - SOAP::SOAPString
#   numMedia - SOAP::SOAPString
#   isbn - SOAP::SOAPString
#   features - MySoap::Interface11858031::FeaturesArray
#   mpaaRating - SOAP::SOAPString
#   esrbRating - SOAP::SOAPString
#   ageGroup - SOAP::SOAPString
#   availability - SOAP::SOAPString
#   upc - SOAP::SOAPString
#   tracks - MySoap::Interface11858031::TrackArray
#   accessories - MySoap::Interface11858031::AccessoryArray
#   platforms - MySoap::Interface11858031::PlatformArray
#   encoding - SOAP::SOAPString
#   reviews - MySoap::Interface11858031::Reviews
#   similarProducts - MySoap::Interface11858031::SimilarProductsArray
#   lists - MySoap::Interface11858031::ListArray
#   status - SOAP::SOAPString
class Details
  attr_accessor :url
  attr_accessor :asin
  attr_accessor :productName
  attr_accessor :catalog
  attr_accessor :keyPhrases
  attr_accessor :artists
  attr_accessor :authors
  attr_accessor :mpn
  attr_accessor :starring
  attr_accessor :directors
  attr_accessor :theatricalReleaseDate
  attr_accessor :releaseDate
  attr_accessor :manufacturer
  attr_accessor :distributor
  attr_accessor :imageUrlSmall
  attr_accessor :imageUrlMedium
  attr_accessor :imageUrlLarge
  attr_accessor :listPrice
  attr_accessor :ourPrice
  attr_accessor :usedPrice
  attr_accessor :refurbishedPrice
  attr_accessor :collectiblePrice
  attr_accessor :thirdPartyNewPrice
  attr_accessor :numberOfOfferings
  attr_accessor :thirdPartyNewCount
  attr_accessor :usedCount
  attr_accessor :collectibleCount
  attr_accessor :refurbishedCount
  attr_accessor :thirdPartyProductInfo
  attr_accessor :salesRank
  attr_accessor :browseList
  attr_accessor :media
  attr_accessor :readingLevel
  attr_accessor :numberOfPages
  attr_accessor :numberOfIssues
  attr_accessor :issuesPerYear
  attr_accessor :subscriptionLength
  attr_accessor :deweyNumber
  attr_accessor :runningTime
  attr_accessor :publisher
  attr_accessor :numMedia
  attr_accessor :isbn
  attr_accessor :features
  attr_accessor :mpaaRating
  attr_accessor :esrbRating
  attr_accessor :ageGroup
  attr_accessor :availability
  attr_accessor :upc
  attr_accessor :tracks
  attr_accessor :accessories
  attr_accessor :platforms
  attr_accessor :encoding
  attr_accessor :reviews
  attr_accessor :similarProducts
  attr_accessor :lists
  attr_accessor :status

  def initialize(url = nil, asin = nil, productName = nil, catalog = nil, keyPhrases = nil, artists = nil, authors = nil, mpn = nil, starring = nil, directors = nil, theatricalReleaseDate = nil, releaseDate = nil, manufacturer = nil, distributor = nil, imageUrlSmall = nil, imageUrlMedium = nil, imageUrlLarge = nil, listPrice = nil, ourPrice = nil, usedPrice = nil, refurbishedPrice = nil, collectiblePrice = nil, thirdPartyNewPrice = nil, numberOfOfferings = nil, thirdPartyNewCount = nil, usedCount = nil, collectibleCount = nil, refurbishedCount = nil, thirdPartyProductInfo = nil, salesRank = nil, browseList = nil, media = nil, readingLevel = nil, numberOfPages = nil, numberOfIssues = nil, issuesPerYear = nil, subscriptionLength = nil, deweyNumber = nil, runningTime = nil, publisher = nil, numMedia = nil, isbn = nil, features = nil, mpaaRating = nil, esrbRating = nil, ageGroup = nil, availability = nil, upc = nil, tracks = nil, accessories = nil, platforms = nil, encoding = nil, reviews = nil, similarProducts = nil, lists = nil, status = nil)
    @url = url
    @asin = asin
    @productName = productName
    @catalog = catalog
    @keyPhrases = keyPhrases
    @artists = artists
    @authors = authors
    @mpn = mpn
    @starring = starring
    @directors = directors
    @theatricalReleaseDate = theatricalReleaseDate
    @releaseDate = releaseDate
    @manufacturer = manufacturer
    @distributor = distributor
    @imageUrlSmall = imageUrlSmall
    @imageUrlMedium = imageUrlMedium
    @imageUrlLarge = imageUrlLarge
    @listPrice = listPrice
    @ourPrice = ourPrice
    @usedPrice = usedPrice
    @refurbishedPrice = refurbishedPrice
    @collectiblePrice = collectiblePrice
    @thirdPartyNewPrice = thirdPartyNewPrice
    @numberOfOfferings = numberOfOfferings
    @thirdPartyNewCount = thirdPartyNewCount
    @usedCount = usedCount
    @collectibleCount = collectibleCount
    @refurbishedCount = refurbishedCount
    @thirdPartyProductInfo = thirdPartyProductInfo
    @salesRank = salesRank
    @browseList = browseList
    @media = media
    @readingLevel = readingLevel
    @numberOfPages = numberOfPages
    @numberOfIssues = numberOfIssues
    @issuesPerYear = issuesPerYear
    @subscriptionLength = subscriptionLength
    @deweyNumber = deweyNumber
    @runningTime = runningTime
    @publisher = publisher
    @numMedia = numMedia
    @isbn = isbn
    @features = features
    @mpaaRating = mpaaRating
    @esrbRating = esrbRating
    @ageGroup = ageGroup
    @availability = availability
    @upc = upc
    @tracks = tracks
    @accessories = accessories
    @platforms = platforms
    @encoding = encoding
    @reviews = reviews
    @similarProducts = similarProducts
    @lists = lists
    @status = status
  end
end

# {http://soap.amazon.com}KeyPhrase
#   keyPhrase - SOAP::SOAPString
#   type - SOAP::SOAPString
class KeyPhrase
  attr_accessor :keyPhrase
  attr_accessor :type

  def initialize(keyPhrase = nil, type = nil)
    @keyPhrase = keyPhrase
    @type = type
  end
end

# {http://soap.amazon.com}BrowseNode
#   browseId - SOAP::SOAPString
#   browseName - SOAP::SOAPString
class BrowseNode
  attr_accessor :browseId
  attr_accessor :browseName

  def initialize(browseId = nil, browseName = nil)
    @browseId = browseId
    @browseName = browseName
  end
end

# {http://soap.amazon.com}Track
#   trackName - SOAP::SOAPString
#   byArtist - SOAP::SOAPString
class Track
  attr_accessor :trackName
  attr_accessor :byArtist

  def initialize(trackName = nil, byArtist = nil)
    @trackName = trackName
    @byArtist = byArtist
  end
end

# {http://soap.amazon.com}Reviews
#   avgCustomerRating - SOAP::SOAPString
#   totalCustomerReviews - SOAP::SOAPString
#   customerReviews - MySoap::Interface11858031::CustomerReviewArray
class Reviews
  attr_accessor :avgCustomerRating
  attr_accessor :totalCustomerReviews
  attr_accessor :customerReviews

  def initialize(avgCustomerRating = nil, totalCustomerReviews = nil, customerReviews = nil)
    @avgCustomerRating = avgCustomerRating
    @totalCustomerReviews = totalCustomerReviews
    @customerReviews = customerReviews
  end
end

# {http://soap.amazon.com}CustomerReview
#   rating - SOAP::SOAPString
#   summary - SOAP::SOAPString
#   comment - SOAP::SOAPString
class CustomerReview
  attr_accessor :rating
  attr_accessor :summary
  attr_accessor :comment

  def initialize(rating = nil, summary = nil, comment = nil)
    @rating = rating
    @summary = summary
    @comment = comment
  end
end

# {http://soap.amazon.com}MarketplaceSearch
#   marketplaceSearchDetails - MySoap::Interface11858031::MarketplaceSearchDetailsArray
class MarketplaceSearch
  attr_accessor :marketplaceSearchDetails

  def initialize(marketplaceSearchDetails = nil)
    @marketplaceSearchDetails = marketplaceSearchDetails
  end
end

# {http://soap.amazon.com}SellerProfile
#   sellerProfileDetails - MySoap::Interface11858031::SellerProfileDetailsArray
class SellerProfile
  attr_accessor :sellerProfileDetails

  def initialize(sellerProfileDetails = nil)
    @sellerProfileDetails = sellerProfileDetails
  end
end

# {http://soap.amazon.com}SellerSearch
#   sellerSearchDetails - MySoap::Interface11858031::SellerSearchDetailsArray
class SellerSearch
  attr_accessor :sellerSearchDetails

  def initialize(sellerSearchDetails = nil)
    @sellerSearchDetails = sellerSearchDetails
  end
end

# {http://soap.amazon.com}MarketplaceSearchDetails
#   numberOfOpenListings - SOAP::SOAPString
#   listingProductInfo - MySoap::Interface11858031::ListingProductInfo
class MarketplaceSearchDetails
  attr_accessor :numberOfOpenListings
  attr_accessor :listingProductInfo

  def initialize(numberOfOpenListings = nil, listingProductInfo = nil)
    @numberOfOpenListings = numberOfOpenListings
    @listingProductInfo = listingProductInfo
  end
end

# {http://soap.amazon.com}SellerProfileDetails
#   sellerNickname - SOAP::SOAPString
#   overallFeedbackRating - SOAP::SOAPString
#   numberOfFeedback - SOAP::SOAPString
#   numberOfCanceledBids - SOAP::SOAPString
#   numberOfCanceledAuctions - SOAP::SOAPString
#   storeId - SOAP::SOAPString
#   storeName - SOAP::SOAPString
#   sellerFeedback - MySoap::Interface11858031::SellerFeedback
class SellerProfileDetails
  attr_accessor :sellerNickname
  attr_accessor :overallFeedbackRating
  attr_accessor :numberOfFeedback
  attr_accessor :numberOfCanceledBids
  attr_accessor :numberOfCanceledAuctions
  attr_accessor :storeId
  attr_accessor :storeName
  attr_accessor :sellerFeedback

  def initialize(sellerNickname = nil, overallFeedbackRating = nil, numberOfFeedback = nil, numberOfCanceledBids = nil, numberOfCanceledAuctions = nil, storeId = nil, storeName = nil, sellerFeedback = nil)
    @sellerNickname = sellerNickname
    @overallFeedbackRating = overallFeedbackRating
    @numberOfFeedback = numberOfFeedback
    @numberOfCanceledBids = numberOfCanceledBids
    @numberOfCanceledAuctions = numberOfCanceledAuctions
    @storeId = storeId
    @storeName = storeName
    @sellerFeedback = sellerFeedback
  end
end

# {http://soap.amazon.com}SellerSearchDetails
#   sellerNickname - SOAP::SOAPString
#   storeId - SOAP::SOAPString
#   storeName - SOAP::SOAPString
#   numberOfOpenListings - SOAP::SOAPString
#   listingProductInfo - MySoap::Interface11858031::ListingProductInfo
class SellerSearchDetails
  attr_accessor :sellerNickname
  attr_accessor :storeId
  attr_accessor :storeName
  attr_accessor :numberOfOpenListings
  attr_accessor :listingProductInfo

  def initialize(sellerNickname = nil, storeId = nil, storeName = nil, numberOfOpenListings = nil, listingProductInfo = nil)
    @sellerNickname = sellerNickname
    @storeId = storeId
    @storeName = storeName
    @numberOfOpenListings = numberOfOpenListings
    @listingProductInfo = listingProductInfo
  end
end

# {http://soap.amazon.com}ListingProductInfo
#   listingProductDetails - MySoap::Interface11858031::ListingProductDetailsArray
class ListingProductInfo
  attr_accessor :listingProductDetails

  def initialize(listingProductDetails = nil)
    @listingProductDetails = listingProductDetails
  end
end

# {http://soap.amazon.com}ListingProductDetails
#   exchangeId - SOAP::SOAPString
#   listingId - SOAP::SOAPString
#   exchangeTitle - SOAP::SOAPString
#   exchangePrice - SOAP::SOAPString
#   exchangeAsin - SOAP::SOAPString
#   exchangeEndDate - SOAP::SOAPString
#   exchangeTinyImage - SOAP::SOAPString
#   exchangeSellerId - SOAP::SOAPString
#   exchangeSellerNickname - SOAP::SOAPString
#   exchangeStartDate - SOAP::SOAPString
#   exchangeStatus - SOAP::SOAPString
#   exchangeQuantity - SOAP::SOAPString
#   exchangeQuantityAllocated - SOAP::SOAPString
#   exchangeFeaturedCategory - SOAP::SOAPString
#   exchangeCondition - SOAP::SOAPString
#   exchangeConditionType - SOAP::SOAPString
#   exchangeAvailability - SOAP::SOAPString
#   exchangeOfferingType - SOAP::SOAPString
#   exchangeSellerState - SOAP::SOAPString
#   exchangeSellerCountry - SOAP::SOAPString
#   exchangeSellerRating - SOAP::SOAPString
class ListingProductDetails
  attr_accessor :exchangeId
  attr_accessor :listingId
  attr_accessor :exchangeTitle
  attr_accessor :exchangePrice
  attr_accessor :exchangeAsin
  attr_accessor :exchangeEndDate
  attr_accessor :exchangeTinyImage
  attr_accessor :exchangeSellerId
  attr_accessor :exchangeSellerNickname
  attr_accessor :exchangeStartDate
  attr_accessor :exchangeStatus
  attr_accessor :exchangeQuantity
  attr_accessor :exchangeQuantityAllocated
  attr_accessor :exchangeFeaturedCategory
  attr_accessor :exchangeCondition
  attr_accessor :exchangeConditionType
  attr_accessor :exchangeAvailability
  attr_accessor :exchangeOfferingType
  attr_accessor :exchangeSellerState
  attr_accessor :exchangeSellerCountry
  attr_accessor :exchangeSellerRating

  def initialize(exchangeId = nil, listingId = nil, exchangeTitle = nil, exchangePrice = nil, exchangeAsin = nil, exchangeEndDate = nil, exchangeTinyImage = nil, exchangeSellerId = nil, exchangeSellerNickname = nil, exchangeStartDate = nil, exchangeStatus = nil, exchangeQuantity = nil, exchangeQuantityAllocated = nil, exchangeFeaturedCategory = nil, exchangeCondition = nil, exchangeConditionType = nil, exchangeAvailability = nil, exchangeOfferingType = nil, exchangeSellerState = nil, exchangeSellerCountry = nil, exchangeSellerRating = nil)
    @exchangeId = exchangeId
    @listingId = listingId
    @exchangeTitle = exchangeTitle
    @exchangePrice = exchangePrice
    @exchangeAsin = exchangeAsin
    @exchangeEndDate = exchangeEndDate
    @exchangeTinyImage = exchangeTinyImage
    @exchangeSellerId = exchangeSellerId
    @exchangeSellerNickname = exchangeSellerNickname
    @exchangeStartDate = exchangeStartDate
    @exchangeStatus = exchangeStatus
    @exchangeQuantity = exchangeQuantity
    @exchangeQuantityAllocated = exchangeQuantityAllocated
    @exchangeFeaturedCategory = exchangeFeaturedCategory
    @exchangeCondition = exchangeCondition
    @exchangeConditionType = exchangeConditionType
    @exchangeAvailability = exchangeAvailability
    @exchangeOfferingType = exchangeOfferingType
    @exchangeSellerState = exchangeSellerState
    @exchangeSellerCountry = exchangeSellerCountry
    @exchangeSellerRating = exchangeSellerRating
  end
end

# {http://soap.amazon.com}SellerFeedback
#   feedback - MySoap::Interface11858031::FeedbackArray
class SellerFeedback
  attr_accessor :feedback

  def initialize(feedback = nil)
    @feedback = feedback
  end
end

# {http://soap.amazon.com}Feedback
#   feedbackRating - SOAP::SOAPString
#   feedbackComments - SOAP::SOAPString
#   feedbackDate - SOAP::SOAPString
#   feedbackRater - SOAP::SOAPString
class Feedback
  attr_accessor :feedbackRating
  attr_accessor :feedbackComments
  attr_accessor :feedbackDate
  attr_accessor :feedbackRater

  def initialize(feedbackRating = nil, feedbackComments = nil, feedbackDate = nil, feedbackRater = nil)
    @feedbackRating = feedbackRating
    @feedbackComments = feedbackComments
    @feedbackDate = feedbackDate
    @feedbackRater = feedbackRater
  end
end

# {http://soap.amazon.com}ThirdPartyProductInfo
#   thirdPartyProductDetails - MySoap::Interface11858031::ThirdPartyProductDetailsArray
class ThirdPartyProductInfo
  attr_accessor :thirdPartyProductDetails

  def initialize(thirdPartyProductDetails = nil)
    @thirdPartyProductDetails = thirdPartyProductDetails
  end
end

# {http://soap.amazon.com}ThirdPartyProductDetails
#   offeringType - SOAP::SOAPString
#   sellerId - SOAP::SOAPString
#   sellerNickname - SOAP::SOAPString
#   exchangeId - SOAP::SOAPString
#   offeringPrice - SOAP::SOAPString
#   condition - SOAP::SOAPString
#   conditionType - SOAP::SOAPString
#   exchangeAvailability - SOAP::SOAPString
#   sellerCountry - SOAP::SOAPString
#   sellerState - SOAP::SOAPString
#   shipComments - SOAP::SOAPString
#   sellerRating - SOAP::SOAPString
class ThirdPartyProductDetails
  attr_accessor :offeringType
  attr_accessor :sellerId
  attr_accessor :sellerNickname
  attr_accessor :exchangeId
  attr_accessor :offeringPrice
  attr_accessor :condition
  attr_accessor :conditionType
  attr_accessor :exchangeAvailability
  attr_accessor :sellerCountry
  attr_accessor :sellerState
  attr_accessor :shipComments
  attr_accessor :sellerRating

  def initialize(offeringType = nil, sellerId = nil, sellerNickname = nil, exchangeId = nil, offeringPrice = nil, condition = nil, conditionType = nil, exchangeAvailability = nil, sellerCountry = nil, sellerState = nil, shipComments = nil, sellerRating = nil)
    @offeringType = offeringType
    @sellerId = sellerId
    @sellerNickname = sellerNickname
    @exchangeId = exchangeId
    @offeringPrice = offeringPrice
    @condition = condition
    @conditionType = conditionType
    @exchangeAvailability = exchangeAvailability
    @sellerCountry = sellerCountry
    @sellerState = sellerState
    @shipComments = shipComments
    @sellerRating = sellerRating
  end
end

# {http://soap.amazon.com}KeywordRequest
#   keyword - SOAP::SOAPString
#   page - SOAP::SOAPString
#   mode - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   sort - SOAP::SOAPString
#   variations - SOAP::SOAPString
#   locale - SOAP::SOAPString
class KeywordRequest
  attr_accessor :keyword
  attr_accessor :page
  attr_accessor :mode
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :sort
  attr_accessor :variations
  attr_accessor :locale

  def initialize(keyword = nil, page = nil, mode = nil, tag = nil, type = nil, devtag = nil, sort = nil, variations = nil, locale = nil)
    @keyword = keyword
    @page = page
    @mode = mode
    @tag = tag
    @type = type
    @devtag = devtag
    @sort = sort
    @variations = variations
    @locale = locale
  end
end

# {http://soap.amazon.com}PowerRequest
#   power - SOAP::SOAPString
#   page - SOAP::SOAPString
#   mode - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   sort - SOAP::SOAPString
#   variations - SOAP::SOAPString
#   locale - SOAP::SOAPString
class PowerRequest
  attr_accessor :power
  attr_accessor :page
  attr_accessor :mode
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :sort
  attr_accessor :variations
  attr_accessor :locale

  def initialize(power = nil, page = nil, mode = nil, tag = nil, type = nil, devtag = nil, sort = nil, variations = nil, locale = nil)
    @power = power
    @page = page
    @mode = mode
    @tag = tag
    @type = type
    @devtag = devtag
    @sort = sort
    @variations = variations
    @locale = locale
  end
end

# {http://soap.amazon.com}BrowseNodeRequest
#   browse_node - SOAP::SOAPString
#   page - SOAP::SOAPString
#   mode - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   sort - SOAP::SOAPString
#   locale - SOAP::SOAPString
class BrowseNodeRequest
  attr_accessor :browse_node
  attr_accessor :page
  attr_accessor :mode
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :sort
  attr_accessor :locale

  def initialize(browse_node = nil, page = nil, mode = nil, tag = nil, type = nil, devtag = nil, sort = nil, locale = nil)
    @browse_node = browse_node
    @page = page
    @mode = mode
    @tag = tag
    @type = type
    @devtag = devtag
    @sort = sort
    @locale = locale
  end
end

# {http://soap.amazon.com}AsinRequest
#   asin - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   offer - SOAP::SOAPString
#   offerpage - SOAP::SOAPString
#   locale - SOAP::SOAPString
class AsinRequest
  attr_accessor :asin
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :offer
  attr_accessor :offerpage
  attr_accessor :locale

  def initialize(asin = nil, tag = nil, type = nil, devtag = nil, offer = nil, offerpage = nil, locale = nil)
    @asin = asin
    @tag = tag
    @type = type
    @devtag = devtag
    @offer = offer
    @offerpage = offerpage
    @locale = locale
  end
end

# {http://soap.amazon.com}BlendedRequest
#   blended - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   locale - SOAP::SOAPString
class BlendedRequest
  attr_accessor :blended
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :locale

  def initialize(blended = nil, tag = nil, type = nil, devtag = nil, locale = nil)
    @blended = blended
    @tag = tag
    @type = type
    @devtag = devtag
    @locale = locale
  end
end

# {http://soap.amazon.com}UpcRequest
#   upc - SOAP::SOAPString
#   mode - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   sort - SOAP::SOAPString
#   variations - SOAP::SOAPString
#   locale - SOAP::SOAPString
class UpcRequest
  attr_accessor :upc
  attr_accessor :mode
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :sort
  attr_accessor :variations
  attr_accessor :locale

  def initialize(upc = nil, mode = nil, tag = nil, type = nil, devtag = nil, sort = nil, variations = nil, locale = nil)
    @upc = upc
    @mode = mode
    @tag = tag
    @type = type
    @devtag = devtag
    @sort = sort
    @variations = variations
    @locale = locale
  end
end

# {http://soap.amazon.com}ArtistRequest
#   artist - SOAP::SOAPString
#   page - SOAP::SOAPString
#   mode - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   sort - SOAP::SOAPString
#   variations - SOAP::SOAPString
#   locale - SOAP::SOAPString
class ArtistRequest
  attr_accessor :artist
  attr_accessor :page
  attr_accessor :mode
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :sort
  attr_accessor :variations
  attr_accessor :locale

  def initialize(artist = nil, page = nil, mode = nil, tag = nil, type = nil, devtag = nil, sort = nil, variations = nil, locale = nil)
    @artist = artist
    @page = page
    @mode = mode
    @tag = tag
    @type = type
    @devtag = devtag
    @sort = sort
    @variations = variations
    @locale = locale
  end
end

# {http://soap.amazon.com}AuthorRequest
#   author - SOAP::SOAPString
#   page - SOAP::SOAPString
#   mode - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   sort - SOAP::SOAPString
#   variations - SOAP::SOAPString
#   locale - SOAP::SOAPString
class AuthorRequest
  attr_accessor :author
  attr_accessor :page
  attr_accessor :mode
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :sort
  attr_accessor :variations
  attr_accessor :locale

  def initialize(author = nil, page = nil, mode = nil, tag = nil, type = nil, devtag = nil, sort = nil, variations = nil, locale = nil)
    @author = author
    @page = page
    @mode = mode
    @tag = tag
    @type = type
    @devtag = devtag
    @sort = sort
    @variations = variations
    @locale = locale
  end
end

# {http://soap.amazon.com}ActorRequest
#   actor - SOAP::SOAPString
#   page - SOAP::SOAPString
#   mode - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   sort - SOAP::SOAPString
#   variations - SOAP::SOAPString
#   locale - SOAP::SOAPString
class ActorRequest
  attr_accessor :actor
  attr_accessor :page
  attr_accessor :mode
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :sort
  attr_accessor :variations
  attr_accessor :locale

  def initialize(actor = nil, page = nil, mode = nil, tag = nil, type = nil, devtag = nil, sort = nil, variations = nil, locale = nil)
    @actor = actor
    @page = page
    @mode = mode
    @tag = tag
    @type = type
    @devtag = devtag
    @sort = sort
    @variations = variations
    @locale = locale
  end
end

# {http://soap.amazon.com}DirectorRequest
#   director - SOAP::SOAPString
#   page - SOAP::SOAPString
#   mode - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   sort - SOAP::SOAPString
#   variations - SOAP::SOAPString
#   locale - SOAP::SOAPString
class DirectorRequest
  attr_accessor :director
  attr_accessor :page
  attr_accessor :mode
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :sort
  attr_accessor :variations
  attr_accessor :locale

  def initialize(director = nil, page = nil, mode = nil, tag = nil, type = nil, devtag = nil, sort = nil, variations = nil, locale = nil)
    @director = director
    @page = page
    @mode = mode
    @tag = tag
    @type = type
    @devtag = devtag
    @sort = sort
    @variations = variations
    @locale = locale
  end
end

# {http://soap.amazon.com}ExchangeRequest
#   exchange_id - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   locale - SOAP::SOAPString
class ExchangeRequest
  attr_accessor :exchange_id
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :locale

  def initialize(exchange_id = nil, tag = nil, type = nil, devtag = nil, locale = nil)
    @exchange_id = exchange_id
    @tag = tag
    @type = type
    @devtag = devtag
    @locale = locale
  end
end

# {http://soap.amazon.com}ManufacturerRequest
#   manufacturer - SOAP::SOAPString
#   page - SOAP::SOAPString
#   mode - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   sort - SOAP::SOAPString
#   variations - SOAP::SOAPString
#   locale - SOAP::SOAPString
class ManufacturerRequest
  attr_accessor :manufacturer
  attr_accessor :page
  attr_accessor :mode
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :sort
  attr_accessor :variations
  attr_accessor :locale

  def initialize(manufacturer = nil, page = nil, mode = nil, tag = nil, type = nil, devtag = nil, sort = nil, variations = nil, locale = nil)
    @manufacturer = manufacturer
    @page = page
    @mode = mode
    @tag = tag
    @type = type
    @devtag = devtag
    @sort = sort
    @variations = variations
    @locale = locale
  end
end

# {http://soap.amazon.com}ListManiaRequest
#   lm_id - SOAP::SOAPString
#   page - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   locale - SOAP::SOAPString
class ListManiaRequest
  attr_accessor :lm_id
  attr_accessor :page
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :locale

  def initialize(lm_id = nil, page = nil, tag = nil, type = nil, devtag = nil, locale = nil)
    @lm_id = lm_id
    @page = page
    @tag = tag
    @type = type
    @devtag = devtag
    @locale = locale
  end
end

# {http://soap.amazon.com}WishlistRequest
#   wishlist_id - SOAP::SOAPString
#   page - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   locale - SOAP::SOAPString
class WishlistRequest
  attr_accessor :wishlist_id
  attr_accessor :page
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :locale

  def initialize(wishlist_id = nil, page = nil, tag = nil, type = nil, devtag = nil, locale = nil)
    @wishlist_id = wishlist_id
    @page = page
    @tag = tag
    @type = type
    @devtag = devtag
    @locale = locale
  end
end

# {http://soap.amazon.com}MarketplaceRequest
#   marketplace_search - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   page - SOAP::SOAPString
#   keyword - SOAP::SOAPString
#   keyword_search - SOAP::SOAPString
#   browse_id - SOAP::SOAPString
#   zipcode - SOAP::SOAPString
#   area_id - SOAP::SOAPString
#   geo - SOAP::SOAPString
#   sort - SOAP::SOAPString
#   listing_id - SOAP::SOAPString
#   locale - SOAP::SOAPString
#   index - SOAP::SOAPString
class MarketplaceRequest
  attr_accessor :marketplace_search
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :page
  attr_accessor :keyword
  attr_accessor :keyword_search
  attr_accessor :browse_id
  attr_accessor :zipcode
  attr_accessor :area_id
  attr_accessor :geo
  attr_accessor :sort
  attr_accessor :listing_id
  attr_accessor :locale
  attr_accessor :index

  def initialize(marketplace_search = nil, tag = nil, type = nil, devtag = nil, page = nil, keyword = nil, keyword_search = nil, browse_id = nil, zipcode = nil, area_id = nil, geo = nil, sort = nil, listing_id = nil, locale = nil, index = nil)
    @marketplace_search = marketplace_search
    @tag = tag
    @type = type
    @devtag = devtag
    @page = page
    @keyword = keyword
    @keyword_search = keyword_search
    @browse_id = browse_id
    @zipcode = zipcode
    @area_id = area_id
    @geo = geo
    @sort = sort
    @listing_id = listing_id
    @locale = locale
    @index = index
  end
end

# {http://soap.amazon.com}SellerProfileRequest
#   seller_id - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   page - SOAP::SOAPString
#   locale - SOAP::SOAPString
class SellerProfileRequest
  attr_accessor :seller_id
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :page
  attr_accessor :locale

  def initialize(seller_id = nil, tag = nil, type = nil, devtag = nil, page = nil, locale = nil)
    @seller_id = seller_id
    @tag = tag
    @type = type
    @devtag = devtag
    @page = page
    @locale = locale
  end
end

# {http://soap.amazon.com}SellerRequest
#   seller_id - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   offerstatus - SOAP::SOAPString
#   page - SOAP::SOAPString
#   seller_browse_id - SOAP::SOAPString
#   keyword - SOAP::SOAPString
#   locale - SOAP::SOAPString
#   index - SOAP::SOAPString
class SellerRequest
  attr_accessor :seller_id
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :offerstatus
  attr_accessor :page
  attr_accessor :seller_browse_id
  attr_accessor :keyword
  attr_accessor :locale
  attr_accessor :index

  def initialize(seller_id = nil, tag = nil, type = nil, devtag = nil, offerstatus = nil, page = nil, seller_browse_id = nil, keyword = nil, locale = nil, index = nil)
    @seller_id = seller_id
    @tag = tag
    @type = type
    @devtag = devtag
    @offerstatus = offerstatus
    @page = page
    @seller_browse_id = seller_browse_id
    @keyword = keyword
    @locale = locale
    @index = index
  end
end

# {http://soap.amazon.com}SimilarityRequest
#   asin - SOAP::SOAPString
#   tag - SOAP::SOAPString
#   type - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   locale - SOAP::SOAPString
class SimilarityRequest
  attr_accessor :asin
  attr_accessor :tag
  attr_accessor :type
  attr_accessor :devtag
  attr_accessor :locale

  def initialize(asin = nil, tag = nil, type = nil, devtag = nil, locale = nil)
    @asin = asin
    @tag = tag
    @type = type
    @devtag = devtag
    @locale = locale
  end
end

# {http://soap.amazon.com}Item
#   itemId - SOAP::SOAPString
#   productName - SOAP::SOAPString
#   catalog - SOAP::SOAPString
#   asin - SOAP::SOAPString
#   exchangeId - SOAP::SOAPString
#   quantity - SOAP::SOAPString
#   listPrice - SOAP::SOAPString
#   ourPrice - SOAP::SOAPString
class Item
  attr_accessor :itemId
  attr_accessor :productName
  attr_accessor :catalog
  attr_accessor :asin
  attr_accessor :exchangeId
  attr_accessor :quantity
  attr_accessor :listPrice
  attr_accessor :ourPrice

  def initialize(itemId = nil, productName = nil, catalog = nil, asin = nil, exchangeId = nil, quantity = nil, listPrice = nil, ourPrice = nil)
    @itemId = itemId
    @productName = productName
    @catalog = catalog
    @asin = asin
    @exchangeId = exchangeId
    @quantity = quantity
    @listPrice = listPrice
    @ourPrice = ourPrice
  end
end

# {http://soap.amazon.com}ItemQuantity
#   itemId - SOAP::SOAPString
#   quantity - SOAP::SOAPString
class ItemQuantity
  attr_accessor :itemId
  attr_accessor :quantity

  def initialize(itemId = nil, quantity = nil)
    @itemId = itemId
    @quantity = quantity
  end
end

# {http://soap.amazon.com}AddItem
#   asin - SOAP::SOAPString
#   exchangeId - SOAP::SOAPString
#   quantity - SOAP::SOAPString
class AddItem
  attr_accessor :asin
  attr_accessor :exchangeId
  attr_accessor :quantity

  def initialize(asin = nil, exchangeId = nil, quantity = nil)
    @asin = asin
    @exchangeId = exchangeId
    @quantity = quantity
  end
end

# {http://soap.amazon.com}ShoppingCart
#   cartId - SOAP::SOAPString
#   hMAC - SOAP::SOAPString
#   purchaseUrl - SOAP::SOAPString
#   items - MySoap::Interface11858031::ItemArray
class ShoppingCart
  attr_accessor :cartId
  attr_accessor :hMAC
  attr_accessor :purchaseUrl
  attr_accessor :items

  def initialize(cartId = nil, hMAC = nil, purchaseUrl = nil, items = nil)
    @cartId = cartId
    @hMAC = hMAC
    @purchaseUrl = purchaseUrl
    @items = items
  end
end

# {http://soap.amazon.com}GetShoppingCartRequest
#   tag - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   cartId - SOAP::SOAPString
#   hMAC - SOAP::SOAPString
#   locale - SOAP::SOAPString
class GetShoppingCartRequest
  attr_accessor :tag
  attr_accessor :devtag
  attr_accessor :cartId
  attr_accessor :hMAC
  attr_accessor :locale

  def initialize(tag = nil, devtag = nil, cartId = nil, hMAC = nil, locale = nil)
    @tag = tag
    @devtag = devtag
    @cartId = cartId
    @hMAC = hMAC
    @locale = locale
  end
end

# {http://soap.amazon.com}ClearShoppingCartRequest
#   tag - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   cartId - SOAP::SOAPString
#   hMAC - SOAP::SOAPString
#   locale - SOAP::SOAPString
class ClearShoppingCartRequest
  attr_accessor :tag
  attr_accessor :devtag
  attr_accessor :cartId
  attr_accessor :hMAC
  attr_accessor :locale

  def initialize(tag = nil, devtag = nil, cartId = nil, hMAC = nil, locale = nil)
    @tag = tag
    @devtag = devtag
    @cartId = cartId
    @hMAC = hMAC
    @locale = locale
  end
end

# {http://soap.amazon.com}AddShoppingCartItemsRequest
#   tag - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   cartId - SOAP::SOAPString
#   hMAC - SOAP::SOAPString
#   items - MySoap::Interface11858031::AddItemArray
#   locale - SOAP::SOAPString
class AddShoppingCartItemsRequest
  attr_accessor :tag
  attr_accessor :devtag
  attr_accessor :cartId
  attr_accessor :hMAC
  attr_accessor :items
  attr_accessor :locale

  def initialize(tag = nil, devtag = nil, cartId = nil, hMAC = nil, items = nil, locale = nil)
    @tag = tag
    @devtag = devtag
    @cartId = cartId
    @hMAC = hMAC
    @items = items
    @locale = locale
  end
end

# {http://soap.amazon.com}RemoveShoppingCartItemsRequest
#   tag - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   cartId - SOAP::SOAPString
#   hMAC - SOAP::SOAPString
#   items - MySoap::Interface11858031::ItemIdArray
#   locale - SOAP::SOAPString
class RemoveShoppingCartItemsRequest
  attr_accessor :tag
  attr_accessor :devtag
  attr_accessor :cartId
  attr_accessor :hMAC
  attr_accessor :items
  attr_accessor :locale

  def initialize(tag = nil, devtag = nil, cartId = nil, hMAC = nil, items = nil, locale = nil)
    @tag = tag
    @devtag = devtag
    @cartId = cartId
    @hMAC = hMAC
    @items = items
    @locale = locale
  end
end

# {http://soap.amazon.com}ModifyShoppingCartItemsRequest
#   tag - SOAP::SOAPString
#   devtag - SOAP::SOAPString
#   cartId - SOAP::SOAPString
#   hMAC - SOAP::SOAPString
#   items - MySoap::Interface11858031::ItemQuantityArray
#   locale - SOAP::SOAPString
class ModifyShoppingCartItemsRequest
  attr_accessor :tag
  attr_accessor :devtag
  attr_accessor :cartId
  attr_accessor :hMAC
  attr_accessor :items
  attr_accessor :locale

  def initialize(tag = nil, devtag = nil, cartId = nil, hMAC = nil, items = nil, locale = nil)
    @tag = tag
    @devtag = devtag
    @cartId = cartId
    @hMAC = hMAC
    @items = items
    @locale = locale
  end
end

# {http://soap.amazon.com}ProductLineArray
class ProductLineArray < ::Array
end

# {http://soap.amazon.com}DetailsArray
class DetailsArray < ::Array
end

# {http://soap.amazon.com}KeyPhraseArray
class KeyPhraseArray < ::Array
end

# {http://soap.amazon.com}ArtistArray
class ArtistArray < ::Array
end

# {http://soap.amazon.com}AuthorArray
class AuthorArray < ::Array
end

# {http://soap.amazon.com}StarringArray
class StarringArray < ::Array
end

# {http://soap.amazon.com}DirectorArray
class DirectorArray < ::Array
end

# {http://soap.amazon.com}BrowseNodeArray
class BrowseNodeArray < ::Array
end

# {http://soap.amazon.com}FeaturesArray
class FeaturesArray < ::Array
end

# {http://soap.amazon.com}TrackArray
class TrackArray < ::Array
end

# {http://soap.amazon.com}AccessoryArray
class AccessoryArray < ::Array
end

# {http://soap.amazon.com}PlatformArray
class PlatformArray < ::Array
end

# {http://soap.amazon.com}CustomerReviewArray
class CustomerReviewArray < ::Array
end

# {http://soap.amazon.com}SimilarProductsArray
class SimilarProductsArray < ::Array
end

# {http://soap.amazon.com}ListArray
class ListArray < ::Array
end

# {http://soap.amazon.com}MarketplaceSearchDetailsArray
class MarketplaceSearchDetailsArray < ::Array
end

# {http://soap.amazon.com}SellerProfileDetailsArray
class SellerProfileDetailsArray < ::Array
end

# {http://soap.amazon.com}SellerSearchDetailsArray
class SellerSearchDetailsArray < ::Array
end

# {http://soap.amazon.com}ListingProductDetailsArray
class ListingProductDetailsArray < ::Array
end

# {http://soap.amazon.com}FeedbackArray
class FeedbackArray < ::Array
end

# {http://soap.amazon.com}ThirdPartyProductDetailsArray
class ThirdPartyProductDetailsArray < ::Array
end

# {http://soap.amazon.com}ItemIdArray
class ItemIdArray < ::Array
end

# {http://soap.amazon.com}ItemArray
class ItemArray < ::Array
end

# {http://soap.amazon.com}ItemQuantityArray
class ItemQuantityArray < ::Array
end

# {http://soap.amazon.com}AddItemArray
class AddItemArray < ::Array
end


end; end
