require 'json'
require 'uri'
require 'net/http'

class RandomUserGen
  
  def self.fetch
    url = URI.parse "https://randomuser.me/api"
    response = Net::HTTP.get_response(url)
	data = JSON.parse(response.body)
	if data["results"].any?
	  result = data["results"].first
	  return result["picture"]["large"]
	end 
	return nil 
  end 
  
end 