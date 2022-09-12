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

# Unit tests for CryptoApis::TransactionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TransactionsApi' do
  before do
    # run before each test
    @api_instance = CryptoApis::TransactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionsApi' do
    it 'should create an instance of TransactionsApi' do
      expect(@api_instance).to be_instance_of(CryptoApis::TransactionsApi)
    end
  end

  # unit tests for create_coins_transaction_from_address_for_whole_amount
  # Create Coins Transaction From Address For Whole Amount
  # Through this endpoint customers can create a new transaction from address for **coins** specifically, which will transfer over the entire available amount.
  # @param address Defines the source address.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param wallet_id Represents the sender&#39;s specific and unique Wallet ID of the sender.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [CreateCoinsTransactionFromAddressForWholeAmountRB] :create_coins_transaction_from_address_for_whole_amount_rb 
  # @return [CreateCoinsTransactionFromAddressForWholeAmountR]
  describe 'create_coins_transaction_from_address_for_whole_amount test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_coins_transaction_request_from_address
  # Create Coins Transaction Request from Address
  # Through this endpoint users can create a new single transaction request from one address to another.
  # @param address Defines the specific source address for the transaction. For XRP we also support the X-address format.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param wallet_id Represents the sender&#39;s specific and unique Wallet ID of the sender.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [CreateCoinsTransactionRequestFromAddressRB] :create_coins_transaction_request_from_address_rb 
  # @return [CreateCoinsTransactionRequestFromAddressR]
  describe 'create_coins_transaction_request_from_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_coins_transaction_request_from_wallet
  # Create Coins Transaction Request from Wallet
  # Through this endpoint users can create a new transaction request from the entire Wallet instead from just a specific address. This endpoint can generate transactions from multiple to multiple addresses.    {warning}This is available **only** for UTXO-based protocols such as Bitcoin, Bitcoin Cash, Litecoin, etc. It **is not** available for Account-based protocols like Ethereum.{/warning}
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param wallet_id Represents the sender&#39;s specific and unique Wallet ID of the sender.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [CreateCoinsTransactionRequestFromWalletRB] :create_coins_transaction_request_from_wallet_rb 
  # @return [CreateCoinsTransactionRequestFromWalletR]
  describe 'create_coins_transaction_request_from_wallet test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_fungible_token_transaction_request_from_address_without_fee_priority
  # Create Fungible Token Transaction Request From Address Without Fee Priority
  # Through this endpoint customers can make a single feeless token transaction on the Tron blockchain protocol. TRX transactions burn certain resources called Bandwidth and Energy. Each account has 1500 bandwidth free for use every 24 hours and more can be obtained by staking TRX. The unit price of Energy is 280 SUN and of bandwidth - 1000 SUN. If the resources are insufficient, TRX will be burned to pay for them.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param sender_address Defines the specific source address for the transaction.
  # @param wallet_id Defines the unique ID of the Wallet.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityRB] :create_fungible_token_transaction_request_from_address_without_fee_priority_rb 
  # @return [CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityR]
  describe 'create_fungible_token_transaction_request_from_address_without_fee_priority test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_fungible_tokens_transaction_request_from_address
  # Create Fungible Tokens Transaction Request from Address
  # Through this endpoint users can make a single token transaction.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn&#39;t happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param sender_address Defines the specific source address for the transaction.
  # @param wallet_id Defines the unique ID of the Wallet.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [CreateFungibleTokensTransactionRequestFromAddressRB] :create_fungible_tokens_transaction_request_from_address_rb 
  # @return [CreateFungibleTokensTransactionRequestFromAddressR]
  describe 'create_fungible_tokens_transaction_request_from_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_single_transaction_request_from_address_without_fee_priority
  # Create Single Transaction Request From Address Without Fee Priority
  # Through this endpoint users can create a new single transaction request from one address to another. The difference between this endpoint and \&quot;Create Coins Transaction Request from Address\&quot;  is that for Tron blockchain there is no Fee Priority that defines how fast a transaction can be mined.
  # @param address Defines the specific source address for the transaction.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param wallet_id Represents the sender&#39;s specific and unique Wallet ID of the sender.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [CreateSingleTransactionRequestFromAddressWithoutFeePriorityRB] :create_single_transaction_request_from_address_without_fee_priority_rb 
  # @return [CreateSingleTransactionRequestFromAddressWithoutFeePriorityR]
  describe 'create_single_transaction_request_from_address_without_fee_priority test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
