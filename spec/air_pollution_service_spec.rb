require 'spec_helper'

describe 'OpenWeather API test' do

  context 'testing the Air Pollution service' do

    before(:all) do
      @location = OpenweatherAPI.new.air_pollution
      @location.get_response
    end

    it "should return a hash" do
      expect(@location.get_response).to be_a Hash
    end

    it "should have 3 keys" do
      expect(@location.get_response.keys.length).to eq 3
      # p @location.get_response.keys
    end

    it "should contain a key called data" do
      expect(@location.get_response.keys).to include('data')
    end

    it "should return the time as a string" do
      expect(@location.get_time).to be_kind_of String
    end

    it "should return the time with more than 5 characters" do
      expect(@location.get_time.length).to be > 5
      expect(@location.get_time.length).to_not be_between(0,4)
    end

    it "should contain 2018 in the time string" do
      expect(@location.get_time).to include('2018')
    end

    it "should return the Data key as an array" do
      expect(@location.get_data).to be_a Array
    end

    it "should return the Data array with 37 items" do
      expect(@location.get_data.length).to eq 37
      expect(@location.get_data.length).to_not be_between(0,36)
      expect(@location.get_data.length).to_not be > 37
      # p @location.get_data.length
    end

    it "should return a pressure value of 1000 for the first Data array item" do
      expect(@location.get_data[0]['pressure']).to eq 1000
    end

    it "should return the pressure value for the last Data array item as a float" do
      expect(@location.get_data.last['pressure']).to be_a Float
    end

    it "should return the location hash with a key called latitude" do
      expect(@location.check_location).to include('latitude')
      # p @location.check_location
    end

    it "should return the location's latitude as a float" do
      expect(@location.check_location_lat).to be_a Float
      # p @location.check_location_lat
    end

    it "should return the location's latitude as 0 at the least" do
      expect(@location.check_location_lat).to be >= 0
      # p @location.check_location_lat
    end

    it "should return the location's longtitude as a float" do
      expect(@location.check_location_lon).to be_a Float
      # p @location.check_location_lon
    end

    it "should return the location's longtitude as 0 at the least" do
      expect(@location.check_location_lon).to be >= 0
      # p @location.check_location_lon
    end

  end

end
