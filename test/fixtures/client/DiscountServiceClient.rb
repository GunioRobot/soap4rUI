#!/usr/bin/env ruby
require 'defaultDriver0.rb'

endpoint_url = ARGV.shift
obj = DiscountServicePortType.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   serviceAlive(input)
#
# ARGS
#   input           ServiceAliveRequestType - {http://schemas.gid.gap.com/servicealive/v1}ServiceAliveRequestType
#
# RETURNS
#   output          ServiceAliveResponseType - {http://schemas.gid.gap.com/servicealive/v1}ServiceAliveResponseType
#
input = nil
puts obj.serviceAlive(input)

# SYNOPSIS
#   applyDiscount(input)
#
# ARGS
#   input           DiscountServiceRequestType - {http://schemas.gid.gap.com/discountService/v1}DiscountServiceRequestType
#
# RETURNS
#   output          DiscountServiceResponseType - {http://schemas.gid.gap.com/discountService/v1}DiscountServiceResponseType
#
# RAISES
#   message         C_String - {http://www.w3.org/2001/XMLSchema}string
#
input = nil
puts obj.applyDiscount(input)


endpoint_url = ARGV.shift
obj = DiscountServicePortType.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   serviceAlive(input)
#
# ARGS
#   input           ServiceAliveRequestType - {http://schemas.gid.gap.com/servicealive/v1}ServiceAliveRequestType
#
# RETURNS
#   output          ServiceAliveResponseType - {http://schemas.gid.gap.com/servicealive/v1}ServiceAliveResponseType
#
input = nil
puts obj.serviceAlive(input)

# SYNOPSIS
#   applyDiscount(input)
#
# ARGS
#   input           DiscountServiceRequestType - {http://schemas.gid.gap.com/discountService/v1}DiscountServiceRequestType
#
# RETURNS
#   output          DiscountServiceResponseType - {http://schemas.gid.gap.com/discountService/v1}DiscountServiceResponseType
#
# RAISES
#   message         C_String - {http://www.w3.org/2001/XMLSchema}string
#
input = nil
puts obj.applyDiscount(input)


