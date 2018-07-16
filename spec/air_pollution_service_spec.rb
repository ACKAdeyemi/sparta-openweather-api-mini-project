require 'spec_helper'

describe 'OpenWeather API test' do

  context 'testing the air pollution service' do

    before(:all) do
      @location = OpenweatherAPI.new.air_pollution
      @location.get_response
    end

    it "should return the Data key as an array" do
      expect(@location.get_data).to be_a Array
    end

  end

end
