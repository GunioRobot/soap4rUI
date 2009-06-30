require 'xsd/qname'

module MySoap; module Interface386283172


# {urn:GoogleSearch}GoogleSearchResult
#   documentFiltering - SOAP::SOAPBoolean
#   searchComments - SOAP::SOAPString
#   estimatedTotalResultsCount - SOAP::SOAPInt
#   estimateIsExact - SOAP::SOAPBoolean
#   resultElements - MySoap::Interface386283172::ResultElementArray
#   searchQuery - SOAP::SOAPString
#   startIndex - SOAP::SOAPInt
#   endIndex - SOAP::SOAPInt
#   searchTips - SOAP::SOAPString
#   directoryCategories - MySoap::Interface386283172::DirectoryCategoryArray
#   searchTime - SOAP::SOAPDouble
class GoogleSearchResult
  attr_accessor :documentFiltering
  attr_accessor :searchComments
  attr_accessor :estimatedTotalResultsCount
  attr_accessor :estimateIsExact
  attr_accessor :resultElements
  attr_accessor :searchQuery
  attr_accessor :startIndex
  attr_accessor :endIndex
  attr_accessor :searchTips
  attr_accessor :directoryCategories
  attr_accessor :searchTime

  def initialize(documentFiltering = nil, searchComments = nil, estimatedTotalResultsCount = nil, estimateIsExact = nil, resultElements = nil, searchQuery = nil, startIndex = nil, endIndex = nil, searchTips = nil, directoryCategories = nil, searchTime = nil)
    @documentFiltering = documentFiltering
    @searchComments = searchComments
    @estimatedTotalResultsCount = estimatedTotalResultsCount
    @estimateIsExact = estimateIsExact
    @resultElements = resultElements
    @searchQuery = searchQuery
    @startIndex = startIndex
    @endIndex = endIndex
    @searchTips = searchTips
    @directoryCategories = directoryCategories
    @searchTime = searchTime
  end
end

# {urn:GoogleSearch}ResultElement
#   summary - SOAP::SOAPString
#   uRL - SOAP::SOAPString
#   snippet - SOAP::SOAPString
#   title - SOAP::SOAPString
#   cachedSize - SOAP::SOAPString
#   relatedInformationPresent - SOAP::SOAPBoolean
#   hostName - SOAP::SOAPString
#   directoryCategory - MySoap::Interface386283172::DirectoryCategory
#   directoryTitle - SOAP::SOAPString
class ResultElement
  attr_accessor :summary
  attr_accessor :uRL
  attr_accessor :snippet
  attr_accessor :title
  attr_accessor :cachedSize
  attr_accessor :relatedInformationPresent
  attr_accessor :hostName
  attr_accessor :directoryCategory
  attr_accessor :directoryTitle

  def initialize(summary = nil, uRL = nil, snippet = nil, title = nil, cachedSize = nil, relatedInformationPresent = nil, hostName = nil, directoryCategory = nil, directoryTitle = nil)
    @summary = summary
    @uRL = uRL
    @snippet = snippet
    @title = title
    @cachedSize = cachedSize
    @relatedInformationPresent = relatedInformationPresent
    @hostName = hostName
    @directoryCategory = directoryCategory
    @directoryTitle = directoryTitle
  end
end

# {urn:GoogleSearch}DirectoryCategory
#   fullViewableName - SOAP::SOAPString
#   specialEncoding - SOAP::SOAPString
class DirectoryCategory
  attr_accessor :fullViewableName
  attr_accessor :specialEncoding

  def initialize(fullViewableName = nil, specialEncoding = nil)
    @fullViewableName = fullViewableName
    @specialEncoding = specialEncoding
  end
end

# {urn:GoogleSearch}ResultElementArray
class ResultElementArray < ::Array
end

# {urn:GoogleSearch}DirectoryCategoryArray
class DirectoryCategoryArray < ::Array
end


end; end
