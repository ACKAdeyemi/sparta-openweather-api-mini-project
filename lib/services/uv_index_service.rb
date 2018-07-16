require 'httparty'
require 'json'
require 'faker'

class UVIndex

  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5'

  def initialize
    @api_key = '63be7cd83610459315f240a4bd60688b' #add your API key here
  end

  def get_response
    @location = JSON.parse(self.class.get("/uvi?lat=37.75&lon=-122.37&appid=#{@api_key}").body)
  end

  def print_result
    puts "UV INDEX: #{@location}"
  end

  def check_lat
    @location['lat']
  end

  def check_lon
    @location['lon']
  end

  def get_date_iso
    @location['date_iso']
  end

  def get_date
    @location['date']
  end

  def check_value
    @location['value']
  end

end
