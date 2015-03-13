require "httparty"
require "pry"



class FrozenSpring
  include HTTParty
  base_uri "https://frozen-springs-1650.herokuapp.com"
  
  def get_submissions
    FrozenSpring.get('/')
      #binding.pry
  end

  def add_numbers
    g = get_submissions
    sigma = 0
    g.each {|x| sigma += x["number"]}
    FrozenSpring.post('/add', headers: {"Authorization" => "mishka"}, query: {number: sigma})
  end

end

g = FrozenSpring.new
h = g.add_numbers
#binding.pry