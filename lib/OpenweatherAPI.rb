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
