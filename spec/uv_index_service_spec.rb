require 'spec_helper'

describe 'OpenWeather API test' do

  context 'testing the UV Index service' do

    before(:all) do
      @location = OpenweatherAPI.new.uv_index
      @location.get_response
    end

    it "should return the API response as a hash" do
      expect(@location.get_response).to be_a Hash
      # p @location.get_response.class
    end

    it "should have 5 keys" do
      expect(@location.get_response.length).to eq 5
    end

    it "should have a key called lat and lon" do
      expect(@location.get_response).to include('lat','lon')
    end

    it "should have a key called date_iso" do
      expect(@location.get_response).to include('date_iso')
    end

    it "should have a key called date" do
      expect(@location.get_response).to include('date')
    end

    it "should have a key called value" do
      expect(@location.get_response).to include('value')
    end

    it "should return latitude as a float" do
      expect(@location.check_lat).to be_kind_of Float
    end

    it "should return latitude as 37.75" do
      expect(@location.check_lat).to eq 37.75
    end

    it "should return longtitude as a float" do
      expect(@location.check_lon).to be_kind_of Float
    end

    it "should return longtitude as -122.37" do
      expect(@location.check_lon).to eq -122.37
    end

    it "should the date_iso as a string" do
      expect(@location.get_date_iso).to be_kind_of String
    end

    it "should contain 2018 in the date_iso" do
      expect(@location.get_date_iso).to include('2018')
    end

    it "should return the date key with value that has more than 7 characters" do
      expect(@location.get_date.to_s.length).to be > 5
    end

    it "should return the date key with a value that is an interger" do
      expect(@location.get_date).to be_a Integer
    end

    it "should return an interger equal to 10.16 for the value key" do
      expect(@location.check_value).to eq 10.16
    end

  end

end
