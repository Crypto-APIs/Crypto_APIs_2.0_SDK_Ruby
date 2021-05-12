=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::TokensApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TokensApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::TokensApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TokensApi' do
    it 'should create an instance of TokensApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::TokensApi)
    end
  end

  # unit tests for list_tokens_by_address
  # List Tokens By Address
  # Through this endpoint customers can obtain token data by providing an attribute - &#x60;address&#x60;.  The information that can be returned can include the contract address, the token symbol, type and balance.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks.
  # @param address Represents the public address, which is a compressed and shortened form of a public key.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis.
  # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items.
  # @return [ListTokensByAddressResponse]
  describe 'list_tokens_by_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_tokens_transfers_by_address
  # List Tokens Transfers By Address
  # Through this endpoint customers can obtain a list with token transfers by the &#x60;address&#x60; attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **tokens** not coins.{/note}
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks.
  # @param address Represents the public address, which is a compressed and shortened form of a public key.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis.
  # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items.
  # @return [ListTokensTransfersByAddressResponse]
  describe 'list_tokens_transfers_by_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_tokens_transfers_by_transaction_hash
  # List Tokens Transfers By Transaction Hash
  # Through this endpoint customers can obtain a list with token transfers by the &#x60;transactionHash&#x60; attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **tokens** not coins.{/note}
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks.
  # @param transaction_hash Represents the hash of the transaction, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis.
  # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items.
  # @return [ListTokensTransfersByTransactionHashResponse]
  describe 'list_tokens_transfers_by_transaction_hash test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
