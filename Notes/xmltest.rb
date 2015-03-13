require 'pry'
require 'nokogiri'

file = File.read("collection.txt")


data = Nokogiri::XML(file)
 
# Try poking around here and taking a look at `data`
binding.pry
 
