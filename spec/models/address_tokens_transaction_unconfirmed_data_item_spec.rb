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

# Unit tests for CryptoApis::AddressTokensTransactionUnconfirmedDataItem
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe CryptoApis::AddressTokensTransactionUnconfirmedDataItem do
  let(:instance) { CryptoApis::AddressTokensTransactionUnconfirmedDataItem.new }

  describe 'test an instance of AddressTokensTransactionUnconfirmedDataItem' do
    it 'should create an instance of AddressTokensTransactionUnconfirmedDataItem' do
      expect(instance).to be_instance_of(CryptoApis::AddressTokensTransactionUnconfirmedDataItem)
    end
  end
  describe 'test attribute "blockchain"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "network"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "address"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "transaction_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "token_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ERC-20", "ERC-721", "OMNI"])
      # validator.allowable_values.each do |value|
      #   expect { instance.token_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "token"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "direction"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["incoming", "outgoing"])
      # validator.allowable_values.each do |value|
      #   expect { instance.direction = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "first_seen_in_mempool_timestamp"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
