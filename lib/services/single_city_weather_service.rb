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

  def get_visibility
    @city['visibility']
  end

  def get_name
    @city['name']
  end

  def get_weather_id
    @city['weather'].first['id']
  end

  def get_weather_description
    @city['weather'][0]['description']
  end

  def check_wind
    @city['wind']
  end

  def check_main_temp
    @city['main']['temp']
  end

  def get_base
    @city['base']
  end

  def get_coord
    @city['coord']
  end

end
