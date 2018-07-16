require 'spec_helper'

describe 'OpenWeather API test' do

  context 'testing the UV Index service' do

    before(:all) do
      @location = OpenweatherAPI.new.uv_index
      @location.get_response
    end

    it "should return the API response as an hash" do
      expect(@location.get_response).to be_a Hash
      # p @location.get_response.class
    end

  end

end
