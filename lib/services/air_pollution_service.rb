require 'httparty'
require 'json'
require 'faker'

class AirPollution

  include HTTParty
  base_uri 'api.openweathermap.org/pollution/v1/co'

  def initialize
    @api_key = '63be7cd83610459315f240a4bd60688b' #add your API key here
  end

  def get_response
    @location = JSON.parse(self.class.get("/0.0,10.0/current.json?appid=#{@api_key}").body)
  end

  def print_result
    puts "AIR POLLUTION: #{@location}"
  end

  def get_data
    @location['data']
  end

end
