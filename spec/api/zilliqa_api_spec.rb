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

# Unit tests for CryptoApis::ZilliqaApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ZilliqaApi' do
  before do
    # run before each test
    @api_instance = CryptoApis::ZilliqaApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ZilliqaApi' do
    it 'should create an instance of ZilliqaApi' do
      expect(@api_instance).to be_instance_of(CryptoApis::ZilliqaApi)
    end
  end

  # unit tests for get_latest_mined_zilliqa_block
  # Get Latest Mined Zilliqa Block
  # Through this endpoint users can obtain information on the latest block that has been mined on the Zilliqa blockchain. Data could include the current and previous block hashes, transaction count, and more.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @return [GetLatestMinedZilliqaBlockR]
  describe 'get_latest_mined_zilliqa_block test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zilliqa_address_details
  # Get Zilliqa Address Details
  # Through this endpoint customers can obtain information address details from the Zilliqa blockchain.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param address Defines the specific transaction&#39;s address.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @return [GetZilliqaAddressDetailsR]
  describe 'get_zilliqa_address_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zilliqa_block_details_by_block_hash
  # Get Zilliqa Block Details By Block Hash
  # Through this endpoint customers can obtain block details from the Zilliqa blockchain by providing the block Hash parameter.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param block_hash Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @return [GetZilliqaBlockDetailsByBlockHashR]
  describe 'get_zilliqa_block_details_by_block_hash test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zilliqa_block_details_by_block_height
  # Get Zilliqa Block Details By Block Height
  # Through this endpoint customers can obtain block details from the Zilliqa blockchain by providing the block Height parameter.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param block_height Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @return [GetZilliqaBlockDetailsByBlockHeightR]
  describe 'get_zilliqa_block_details_by_block_height test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zilliqa_transaction_details_by_transaction_id
  # Get Zilliqa Transaction Details by Transaction ID
  # Through this endpoint customers can obtain transaction details on the Zilliqa blockchain by providing a Transaction ID parameter.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param transaction_hash String identifier of the transaction
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @return [GetZilliqaTransactionDetailsByTransactionIDR]
  describe 'get_zilliqa_transaction_details_by_transaction_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_zilliqa_transactions_by_address
  # List Zilliqa Transactions by Address
  # Through this endpoint customers can list transactions on the Zilliqa blockchain by the address parameter.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param address Defines the specific address of the sender.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis.
  # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items.
  # @return [ListZilliqaTransactionsByAddressR]
  describe 'list_zilliqa_transactions_by_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_zilliqa_transactions_by_block_hash
  # List Zilliqa Transactions By Block Hash
  # Through this endpoint customers can list transactions on the Zilliqa blockchain by the block hash parameter.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param block_hash Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis.
  # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items.
  # @return [ListZilliqaTransactionsByBlockHashR]
  describe 'list_zilliqa_transactions_by_block_hash test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_zilliqa_transactions_by_block_height
  # List Zilliqa Transactions By Block Height
  # Through this endpoint customers can list transactions on the Zilliqa blockchain by the block height parameter.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param block_height Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis.
  # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items.
  # @return [ListZilliqaTransactionsByBlockHeightR]
  describe 'list_zilliqa_transactions_by_block_height test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
