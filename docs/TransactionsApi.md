# CryptoApis::TransactionsApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_coins_transaction_from_address_for_whole_amount**](TransactionsApi.md#create_coins_transaction_from_address_for_whole_amount) | **POST** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/addresses/{address}/all-transaction-requests | Create Coins Transaction From Address For Whole Amount |
| [**create_coins_transaction_request_from_address**](TransactionsApi.md#create_coins_transaction_request_from_address) | **POST** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/addresses/{address}/transaction-requests | Create Coins Transaction Request from Address |
| [**create_coins_transaction_request_from_wallet**](TransactionsApi.md#create_coins_transaction_request_from_wallet) | **POST** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/transaction-requests | Create Coins Transaction Request from Wallet |
| [**create_tokens_transaction_request_from_address**](TransactionsApi.md#create_tokens_transaction_request_from_address) | **POST** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/addresses/{senderAddress}/token-transaction-requests | Create Tokens Transaction Request from Address |


## create_coins_transaction_from_address_for_whole_amount

> <CreateCoinsTransactionFromAddressForWholeAmountR> create_coins_transaction_from_address_for_whole_amount(address, blockchain, network, wallet_id, opts)

Create Coins Transaction From Address For Whole Amount

Through this endpoint customers can create a new transaction from address for **coins** specifically, which will transfer over the entire available amount.

### Examples

```ruby
require 'time'
require 'crypto_apis'
# setup authorization
CryptoApis.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = CryptoApis::TransactionsApi.new
address = '0x6f61e3c2fbb8c8be698bd0907ba6c04b62800fe5' # String | Defines the source address.
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
wallet_id = '609e221675d04500068718dc' # String | Represents the sender's specific and unique Wallet ID of the sender.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  create_coins_transaction_from_address_for_whole_amount_rb: CryptoApis::CreateCoinsTransactionFromAddressForWholeAmountRB.new({data: CryptoApis::CreateCoinsTransactionFromAddressForWholeAmountRBData.new({item: CryptoApis::CreateCoinsTransactionFromAddressForWholeAmountRBDataItem.new({fee_priority: 'slow', recipient_address: '0xc065b539490f81b6c297c37b1925c3be2f190732'})})}) # CreateCoinsTransactionFromAddressForWholeAmountRB | 
}

begin
  # Create Coins Transaction From Address For Whole Amount
  result = api_instance.create_coins_transaction_from_address_for_whole_amount(address, blockchain, network, wallet_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_coins_transaction_from_address_for_whole_amount: #{e}"
end
```

#### Using the create_coins_transaction_from_address_for_whole_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCoinsTransactionFromAddressForWholeAmountR>, Integer, Hash)> create_coins_transaction_from_address_for_whole_amount_with_http_info(address, blockchain, network, wallet_id, opts)

```ruby
begin
  # Create Coins Transaction From Address For Whole Amount
  data, status_code, headers = api_instance.create_coins_transaction_from_address_for_whole_amount_with_http_info(address, blockchain, network, wallet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCoinsTransactionFromAddressForWholeAmountR>
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_coins_transaction_from_address_for_whole_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Defines the source address. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **wallet_id** | **String** | Represents the sender&#39;s specific and unique Wallet ID of the sender. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **create_coins_transaction_from_address_for_whole_amount_rb** | [**CreateCoinsTransactionFromAddressForWholeAmountRB**](CreateCoinsTransactionFromAddressForWholeAmountRB.md) |  | [optional] |

### Return type

[**CreateCoinsTransactionFromAddressForWholeAmountR**](CreateCoinsTransactionFromAddressForWholeAmountR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_coins_transaction_request_from_address

> <CreateCoinsTransactionRequestFromAddressR> create_coins_transaction_request_from_address(address, blockchain, network, wallet_id, opts)

Create Coins Transaction Request from Address

Through this endpoint users can create a new single transaction request from one address to another.

### Examples

```ruby
require 'time'
require 'crypto_apis'
# setup authorization
CryptoApis.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = CryptoApis::TransactionsApi.new
address = '0x6f61e3c2fbb8c8be698bd0907ba6c04b62800fe5' # String | Defines the specific source address for the transaction.
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
wallet_id = '609e221675d04500068718dc' # String | Represents the sender's specific and unique Wallet ID of the sender.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  create_coins_transaction_request_from_address_rb: CryptoApis::CreateCoinsTransactionRequestFromAddressRB.new({data: CryptoApis::CreateCoinsTransactionRequestFromAddressRBData.new({item: CryptoApis::CreateCoinsTransactionRequestFromAddressRBDataItem.new({amount: '0.2', fee_priority: 'slow', recipient_address: '0xc065b539490f81b6c297c37b1925c3be2f190732'})})}) # CreateCoinsTransactionRequestFromAddressRB | 
}

begin
  # Create Coins Transaction Request from Address
  result = api_instance.create_coins_transaction_request_from_address(address, blockchain, network, wallet_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_coins_transaction_request_from_address: #{e}"
end
```

#### Using the create_coins_transaction_request_from_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCoinsTransactionRequestFromAddressR>, Integer, Hash)> create_coins_transaction_request_from_address_with_http_info(address, blockchain, network, wallet_id, opts)

```ruby
begin
  # Create Coins Transaction Request from Address
  data, status_code, headers = api_instance.create_coins_transaction_request_from_address_with_http_info(address, blockchain, network, wallet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCoinsTransactionRequestFromAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_coins_transaction_request_from_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Defines the specific source address for the transaction. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **wallet_id** | **String** | Represents the sender&#39;s specific and unique Wallet ID of the sender. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **create_coins_transaction_request_from_address_rb** | [**CreateCoinsTransactionRequestFromAddressRB**](CreateCoinsTransactionRequestFromAddressRB.md) |  | [optional] |

### Return type

[**CreateCoinsTransactionRequestFromAddressR**](CreateCoinsTransactionRequestFromAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_coins_transaction_request_from_wallet

> <CreateCoinsTransactionRequestFromWalletR> create_coins_transaction_request_from_wallet(blockchain, network, wallet_id, opts)

Create Coins Transaction Request from Wallet

Through this endpoint users can create a new transaction request from the entire Wallet instead from just a specific address. This endpoint can generate transactions from multiple to multiple addresses.    {warning}This is available **only** for UTXO-based protocols such as Bitcoin, Bitcoin Cash, Litecoin, etc. It **is not** available for Account-based protocols like Ethereum.{/warning}

### Examples

```ruby
require 'time'
require 'crypto_apis'
# setup authorization
CryptoApis.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = CryptoApis::TransactionsApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
wallet_id = '609e221675d04500068718dc' # String | Represents the sender's specific and unique Wallet ID of the sender.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  create_coins_transaction_request_from_wallet_rb: CryptoApis::CreateCoinsTransactionRequestFromWalletRB.new({data: CryptoApis::CreateCoinsTransactionRequestFromWalletRBData.new({item: CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItem.new({fee_priority: 'slow', recipients: [CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItemRecipients.new({address: '2MtzNEqm2D9jcbPJ5mW7Z3AUNwqt3afZH66', amount: '0.125'})]})})}) # CreateCoinsTransactionRequestFromWalletRB | 
}

begin
  # Create Coins Transaction Request from Wallet
  result = api_instance.create_coins_transaction_request_from_wallet(blockchain, network, wallet_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_coins_transaction_request_from_wallet: #{e}"
end
```

#### Using the create_coins_transaction_request_from_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCoinsTransactionRequestFromWalletR>, Integer, Hash)> create_coins_transaction_request_from_wallet_with_http_info(blockchain, network, wallet_id, opts)

```ruby
begin
  # Create Coins Transaction Request from Wallet
  data, status_code, headers = api_instance.create_coins_transaction_request_from_wallet_with_http_info(blockchain, network, wallet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCoinsTransactionRequestFromWalletR>
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_coins_transaction_request_from_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. | [default to &#39;testnet&#39;] |
| **wallet_id** | **String** | Represents the sender&#39;s specific and unique Wallet ID of the sender. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **create_coins_transaction_request_from_wallet_rb** | [**CreateCoinsTransactionRequestFromWalletRB**](CreateCoinsTransactionRequestFromWalletRB.md) |  | [optional] |

### Return type

[**CreateCoinsTransactionRequestFromWalletR**](CreateCoinsTransactionRequestFromWalletR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tokens_transaction_request_from_address

> <CreateTokensTransactionRequestFromAddressR> create_tokens_transaction_request_from_address(blockchain, network, sender_address, wallet_id, opts)

Create Tokens Transaction Request from Address

Through this endpoint users can make a single token transaction.    {warning}This applies only to **fungible** tokens, **not** NFTs (non-fungible tokens).{/warning}    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

### Examples

```ruby
require 'time'
require 'crypto_apis'
# setup authorization
CryptoApis.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = CryptoApis::TransactionsApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
sender_address = '0x6f61e3c2fbb8c8be698bd0907ba6c04b62800fe5' # String | Defines the specific source address for the transaction.
wallet_id = '609e221675d04500068718dc' # String | Defines the unique ID of the Wallet.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  create_tokens_transaction_request_from_address_rb: CryptoApis::CreateTokensTransactionRequestFromAddressRB.new({data: CryptoApis::CreateTokensTransactionRequestFromAddressRBData.new({item: CryptoApis::CreateTokensTransactionRequestFromAddressRBDataItem.new({amount: '0.2', fee_priority: 'slow', recipient_address: '0xc065b539490f81b6c297c37b1925c3be2f190732', token_identifier: '0xdac17f958d2ee523a2206206994597c13d831ec7'})})}) # CreateTokensTransactionRequestFromAddressRB | 
}

begin
  # Create Tokens Transaction Request from Address
  result = api_instance.create_tokens_transaction_request_from_address(blockchain, network, sender_address, wallet_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_tokens_transaction_request_from_address: #{e}"
end
```

#### Using the create_tokens_transaction_request_from_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTokensTransactionRequestFromAddressR>, Integer, Hash)> create_tokens_transaction_request_from_address_with_http_info(blockchain, network, sender_address, wallet_id, opts)

```ruby
begin
  # Create Tokens Transaction Request from Address
  data, status_code, headers = api_instance.create_tokens_transaction_request_from_address_with_http_info(blockchain, network, sender_address, wallet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTokensTransactionRequestFromAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_tokens_transaction_request_from_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. | [default to &#39;ethereum&#39;] |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. | [default to &#39;mainnet&#39;] |
| **sender_address** | **String** | Defines the specific source address for the transaction. |  |
| **wallet_id** | **String** | Defines the unique ID of the Wallet. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **create_tokens_transaction_request_from_address_rb** | [**CreateTokensTransactionRequestFromAddressRB**](CreateTokensTransactionRequestFromAddressRB.md) |  | [optional] |

### Return type

[**CreateTokensTransactionRequestFromAddressR**](CreateTokensTransactionRequestFromAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

