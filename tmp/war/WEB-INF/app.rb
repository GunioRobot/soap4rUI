require 'rubygems'
require 'sinatra'
require 'pipe'
 
get '/' do
  Pipe.create do
    feed "http://www.reddit.com/r/programming/.rss", :title => /clojure/i
  end
end

