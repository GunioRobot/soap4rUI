require 'GoogleSearch1242284212.rb'
require 'soap/mapping'

module MySoap; module Interface817296067

module GoogleSearchMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsGoogleSearch = "urn:GoogleSearch"

  EncodedRegistry.register(
    :class => MySoap::Interface817296067::GoogleSearchResult,
    :schema_type => XSD::QName.new(NsGoogleSearch, "GoogleSearchResult"),
    :schema_element => [
      ["documentFiltering", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "documentFiltering")]],
      ["searchComments", ["SOAP::SOAPString", XSD::QName.new(nil, "searchComments")]],
      ["estimatedTotalResultsCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "estimatedTotalResultsCount")]],
      ["estimateIsExact", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "estimateIsExact")]],
      ["resultElements", ["MySoap::Interface817296067::ResultElementArray", XSD::QName.new(nil, "resultElements")]],
      ["searchQuery", ["SOAP::SOAPString", XSD::QName.new(nil, "searchQuery")]],
      ["startIndex", ["SOAP::SOAPInt", XSD::QName.new(nil, "startIndex")]],
      ["endIndex", ["SOAP::SOAPInt", XSD::QName.new(nil, "endIndex")]],
      ["searchTips", ["SOAP::SOAPString", XSD::QName.new(nil, "searchTips")]],
      ["directoryCategories", ["MySoap::Interface817296067::DirectoryCategoryArray", XSD::QName.new(nil, "directoryCategories")]],
      ["searchTime", ["SOAP::SOAPDouble", XSD::QName.new(nil, "searchTime")]]
    ]
  )

  EncodedRegistry.register(
    :class => MySoap::Interface817296067::ResultElement,
    :schema_type => XSD::QName.new(NsGoogleSearch, "ResultElement"),
    :schema_element => [
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "summary")]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(nil, "URL")]],
      ["snippet", ["SOAP::SOAPString", XSD::QName.new(nil, "snippet")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["cachedSize", ["SOAP::SOAPString", XSD::QName.new(nil, "cachedSize")]],
      ["relatedInformationPresent", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "relatedInformationPresent")]],
      ["hostName", ["SOAP::SOAPString", XSD::QName.new(nil, "hostName")]],
      ["directoryCategory", ["MySoap::Interface817296067::DirectoryCategory", XSD::QName.new(nil, "directoryCategory")]],
      ["directoryTitle", ["SOAP::SOAPString", XSD::QName.new(nil, "directoryTitle")]]
    ]
  )

  EncodedRegistry.set(
    MySoap::Interface817296067::ResultElementArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsGoogleSearch, "ResultElement") }
  )

  EncodedRegistry.set(
    MySoap::Interface817296067::DirectoryCategoryArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsGoogleSearch, "DirectoryCategory") }
  )

  EncodedRegistry.register(
    :class => MySoap::Interface817296067::DirectoryCategory,
    :schema_type => XSD::QName.new(NsGoogleSearch, "DirectoryCategory"),
    :schema_element => [
      ["fullViewableName", ["SOAP::SOAPString", XSD::QName.new(nil, "fullViewableName")]],
      ["specialEncoding", ["SOAP::SOAPString", XSD::QName.new(nil, "specialEncoding")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface817296067::GoogleSearchResult,
    :schema_type => XSD::QName.new(NsGoogleSearch, "GoogleSearchResult"),
    :schema_element => [
      ["documentFiltering", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "documentFiltering")]],
      ["searchComments", ["SOAP::SOAPString", XSD::QName.new(nil, "searchComments")]],
      ["estimatedTotalResultsCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "estimatedTotalResultsCount")]],
      ["estimateIsExact", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "estimateIsExact")]],
      ["resultElements", ["MySoap::Interface817296067::ResultElementArray", XSD::QName.new(nil, "resultElements")]],
      ["searchQuery", ["SOAP::SOAPString", XSD::QName.new(nil, "searchQuery")]],
      ["startIndex", ["SOAP::SOAPInt", XSD::QName.new(nil, "startIndex")]],
      ["endIndex", ["SOAP::SOAPInt", XSD::QName.new(nil, "endIndex")]],
      ["searchTips", ["SOAP::SOAPString", XSD::QName.new(nil, "searchTips")]],
      ["directoryCategories", ["MySoap::Interface817296067::DirectoryCategoryArray", XSD::QName.new(nil, "directoryCategories")]],
      ["searchTime", ["SOAP::SOAPDouble", XSD::QName.new(nil, "searchTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface817296067::ResultElement,
    :schema_type => XSD::QName.new(NsGoogleSearch, "ResultElement"),
    :schema_element => [
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "summary")]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(nil, "URL")]],
      ["snippet", ["SOAP::SOAPString", XSD::QName.new(nil, "snippet")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]],
      ["cachedSize", ["SOAP::SOAPString", XSD::QName.new(nil, "cachedSize")]],
      ["relatedInformationPresent", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "relatedInformationPresent")]],
      ["hostName", ["SOAP::SOAPString", XSD::QName.new(nil, "hostName")]],
      ["directoryCategory", ["MySoap::Interface817296067::DirectoryCategory", XSD::QName.new(nil, "directoryCategory")]],
      ["directoryTitle", ["SOAP::SOAPString", XSD::QName.new(nil, "directoryTitle")]]
    ]
  )

  LiteralRegistry.register(
    :class => MySoap::Interface817296067::DirectoryCategory,
    :schema_type => XSD::QName.new(NsGoogleSearch, "DirectoryCategory"),
    :schema_element => [
      ["fullViewableName", ["SOAP::SOAPString", XSD::QName.new(nil, "fullViewableName")]],
      ["specialEncoding", ["SOAP::SOAPString", XSD::QName.new(nil, "specialEncoding")]]
    ]
  )
end

end; end
