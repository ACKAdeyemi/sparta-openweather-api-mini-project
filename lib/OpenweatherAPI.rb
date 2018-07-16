require_relative 'services/single_city_weather_service.rb'
require_relative 'services/air_pollution_service.rb'

class OpenweatherAPI

  def single_city_weather
    SingleCityWeather.new
  end

  def air_pollution
    AirPollution.new
  end

end

superClass = OpenweatherAPI.new

city = superClass.single_city_weather

city.get_response
city.print_result

# ==========

location = superClass.air_pollution

location.get_response
location.print_result
