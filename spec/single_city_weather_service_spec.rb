require 'spec_helper'

describe 'OpenWeather API test' do

  context 'testing the Single City Weather service ' do

    before(:all) do
      @city = OpenweatherAPI.new.single_city_weather
      @city.get_response
    end

    it "should return the Weather key as an array" do
      expect(@city.get_weather).to be_a Array
    end

  end

end
