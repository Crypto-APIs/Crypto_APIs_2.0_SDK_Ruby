=begin
#CryptoAPIs

#Crypto APIs is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2021-03-20
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CryptoApis::ListSupportedAssetsRI
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe CryptoApis::ListSupportedAssetsRI do
  let(:instance) { CryptoApis::ListSupportedAssetsRI.new }

  describe 'test an instance of ListSupportedAssetsRI' do
    it 'should create an instance of ListSupportedAssetsRI' do
      expect(instance).to be_instance_of(CryptoApis::ListSupportedAssetsRI)
    end
  end
  describe 'test attribute "asset_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "asset_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "asset_symbol"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "asset_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["fiat", "crypto"])
      # validator.allowable_values.each do |value|
      #   expect { instance.asset_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "original_symbol"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
