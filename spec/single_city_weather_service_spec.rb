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

    it "should return a Weather array with 4 items" do
      expect(@city.get_weather.first.length).to eq 4
      # p @city.get_weather.first
      # pending
    end

    it "should return a Weather array with a 3 digit ID" do
      expect(@city.get_weather.first['id'].to_s.length).to eq 3
      # p @city.get_weather.first['id'].to_s.length
      # pending
    end

    it "should return a Weather array with a description string" do
      expect(@city.get_weather_description).to be_kind_of String
      # p @city.get_description
      # pending
    end

    it "should return a Visibility key an integer" do
      expect(@city.get_visibility).to be_kind_of Integer
    end

    it "should return the Visibility key as 10000" do
      expect(@city.get_visibility).to eq 10000
    end

    it "should return a string for the name key" do
      expect(@city.get_name).to be_kind_of String
    end

    it "should return London as the value for the name key" do
      expect(@city.get_name).to eq "London"
    end

    it "should return the Wind speed value as a float" do
      expect(@city.check_wind['speed']).to be_kind_of Float
      # pending
    end

    it "should return the Wind deg value as 280" do
      expect(@city.check_wind['deg']).to eq 280
      # pending
    end

    it "should return the Main temp value as a float" do
      expect(@city.check_main_temp).to be_kind_of Float
      # pending
    end

    it "should contain the base as stations" do
      expect(@city.get_base).to eq 'stations'
      # pending
    end

    it "should return coord as a hash" do
      expect(@city.get_coord).to be_kind_of Hash
      # pending
    end

    it "should return longtitude as a float" do
      expect(@city.get_coord['lon']).to be_kind_of Float
      # pending
    end

    it "should return latitude as a float" do
      expect(@city.get_coord['lat']).to be_kind_of Float
      # pending
    end

  end

end
