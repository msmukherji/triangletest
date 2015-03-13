require 'json'
require 'pry'
require 'nokogiri'
 
url = "https://api.github.com/orgs/TIY-DC-ROR-2015-Jan/repos"

 
response = `curl #{url}` # `curl -u "msmukherji" #{url}` for authentication
data = JSON.parse response


#data = Nokogiri::XML(response)
 
# Try poking around here and taking a look at `data`
binding.pry
 
random_repo = data.sample
puts "#{random_repo['name']} is located at #{random_repo['html_url']}"