=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for CryptoApis::HDWalletsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HDWalletsApi' do
  before do
    # run before each test
    @api_instance = CryptoApis::HDWalletsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HDWalletsApi' do
    it 'should create an instance of HDWalletsApi' do
      expect(@api_instance).to be_instance_of(CryptoApis::HDWalletsApi)
    end
  end

  # unit tests for get_hd_wallet__x_pub_y_pub_z_pub_assets
  # Get HD Wallet (xPub, yPub, zPub) Assets
  # This endpoint will return details on assets we support for a specified from the customer extended public key (xPub). These could be cryptocurrencies, fungible or non-fungible (NFT) tokens. Each asset has a unique identifier - assetId, and a unique symbol in the form of a string, e.g. \&quot;USDT\&quot;.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param extended_public_key Defines the account extended publicly known key which is used to derive all child public keys.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [String] :derivation The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly.
  # @return [GetHDWalletXPubYPubZPubAssetsR]
  describe 'get_hd_wallet__x_pub_y_pub_z_pub_assets test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_hd_wallet__x_pub_y_pub_z_pub_details
  # Get HD Wallet (xPub, yPub, zPub) Details
  # HD wallet details is useful endpoint to get the most important data about HD wallet without the need to do a lot of calculations, once the HD Wallet is synced using Sync endpoint we keep it up to date and we calculate these details in advance.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param extended_public_key Defines the account extended publicly known key which is used to derive all child public keys.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [String] :derivation The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly.
  # @return [GetHDWalletXPubYPubZPubDetailsR]
  describe 'get_hd_wallet__x_pub_y_pub_z_pub_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_hd_wallet__x_pub_y_pub_z_pub_transactions
  # List HD Wallet (xPub, yPub, zPub) Transactions
  # This endpoint will list HD Wallet transactions.
  # @param blockchain Represents the specific blockchain.
  # @param extended_public_key Defines the master public key (xPub) of the account.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [String] :derivation The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly.
  # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis.
  # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items.
  # @return [ListHDWalletXPubYPubZPubTransactionsR]
  describe 'list_hd_wallet__x_pub_y_pub_z_pub_transactions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_hd_wallet__x_pub_y_pub_z_pub_utxos
  # List HD Wallet (xPub, yPub, zPub) UTXOs
  # Through this endpoint you can list HD wallet&#39;s UTXOs (Unspent Transaction Outputs) by providing extended public key of an already synced HD wallet.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param extended_public_key Defines the account extended publicly known key which is used to derive all child public keys.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [String] :derivation The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly.
  # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis.
  # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items.
  # @return [ListHDWalletXPubYPubZPubUTXOsR]
  describe 'list_hd_wallet__x_pub_y_pub_z_pub_utxos test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sync_hd_wallet__x_pub_y_pub_z_pub
  # Sync HD Wallet (xPub, yPub, zPub)
  # HD wallets usually have a lot of addresses and transactions, getting the data on demand is a heavy operation. That&#39;s why we have created this feature, to be able to get HD wallet details or transactions this HD wallet must be synced first. In addition to the initial sync we keep updating the synced HD wallets all the time.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [SyncHDWalletXPubYPubZPubRB] :sync_hd_wallet_x_pub_y_pub_z_pub_rb 
  # @return [SyncHDWalletXPubYPubZPubR]
  describe 'sync_hd_wallet__x_pub_y_pub_z_pub test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
