require 'httparty'
require 'pry'

# def get_token
#   puts "Enter authorization token:"
#   gets.chomp
# end

# TOKEN = ENV['GITHUB_TOKEN'] || get_token

class Something
  include HTTParty

  # def initialize
  #   @headers = {
  #     "Authorization" => "token #{TOKEN}",
  #     "User-Agent"    => "classbot",
  #   }  
  # end

  def get_users_submissions
    #submissions = []
    #get '/users' do
    Something.get("https://frozen-springs-1650.herokuapp.com/")
     # params=[""]
     # users.push
    #end 
  end

  def add_nums
    Something.post("/add", query:{number: something}, headers: {"Authorization" => "mishka"})
  end

#   def total_submissions
#     #y=0
#     submissions.each {|x| y+=x}
#   end

#   def add_headers
#     number = get_users_submissions
#     post '/add' do
#       #params[number: number]
#       Something.post(params:[number: number], headers: @headers)
#     end
#   end
# end

a = Something.new
b = a.get_users_submissions
binding.pry