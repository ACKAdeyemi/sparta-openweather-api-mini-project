require 'httparty'
require 'json'
require 'faker'

class SingleCityWeather

  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5/weather?q='

  def initialize
    @api_key = '63be7cd83610459315f240a4bd60688b' #add your API key here
  end

  def get_response
    # city = Faker::Address.city
    @city = JSON.parse(self.class.get("london&appid=#{@api_key}").body)
  end

  def print_result
    puts "SINGLE CITY WEATHER: #{@city}"
  end

  def get_weather
    @city['weather']
  end

end
