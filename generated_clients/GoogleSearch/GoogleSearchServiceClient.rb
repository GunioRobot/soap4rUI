#!/usr/bin/env ruby
require 'GoogleSearchDriver.rb'


module MySoap::InterfaceOne

endpoint_url = ARGV.shift
obj = GoogleSearchPort.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   doGetCachedPage(key, url)
#
# ARGS
#   key             C_String - {http://www.w3.org/2001/XMLSchema}string
#   url             C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Base64Binary - {http://www.w3.org/2001/XMLSchema}base64Binary
#
key = url = nil
puts obj.doGetCachedPage(key, url)

# SYNOPSIS
#   doSpellingSuggestion(key, phrase)
#
# ARGS
#   key             C_String - {http://www.w3.org/2001/XMLSchema}string
#   phrase          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
key = phrase = nil
puts obj.doSpellingSuggestion(key, phrase)

# SYNOPSIS
#   doGoogleSearch(key, q, start, maxResults, filter, restrict, safeSearch, lr, ie, oe)
#
# ARGS
#   key             C_String - {http://www.w3.org/2001/XMLSchema}string
#   q               C_String - {http://www.w3.org/2001/XMLSchema}string
#   start           Int - {http://www.w3.org/2001/XMLSchema}int
#   maxResults      Int - {http://www.w3.org/2001/XMLSchema}int
#   filter          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#   restrict        C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeSearch      Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#   lr              C_String - {http://www.w3.org/2001/XMLSchema}string
#   ie              C_String - {http://www.w3.org/2001/XMLSchema}string
#   oe              C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        GoogleSearchResult - {urn:GoogleSearch}GoogleSearchResult
#
key = q = start = maxResults = filter = restrict = safeSearch = lr = ie = oe = nil
puts obj.doGoogleSearch(key, q, start, maxResults, filter, restrict, safeSearch, lr, ie, oe)




end
