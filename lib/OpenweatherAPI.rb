require_relative 'services/single_city_weather_service.rb'
require_relative 'services/air_pollution_service.rb'
require_relative 'services/uv_index_service.rb'

class OpenweatherAPI

  def single_city_weather
    SingleCityWeather.new
  end

  def air_pollution
    AirPollution.new
  end

  def uv_index
    UVIndex.new
  end

end

# # test by running 'ruby lib/OpenweatherAPI.rb'
superClass = OpenweatherAPI.new
#
# # ==== INITIAL SERVICE  ====
# city = superClass.single_city_weather
#
# city.get_response
# city.print_result
#
# # ==== SECOND SERVICE ====
# location = superClass.air_pollution
#
# location.get_response
# location.print_result
#
# # ==== THIRD SERVICE ====
location = superClass.uv_index

location.get_response
location.print_result
