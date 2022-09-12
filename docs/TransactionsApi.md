# CryptoApis::TransactionsApi

All URIs are relative to *https://rest.cryptoapis.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_coins_transaction_from_address_for_whole_amount**](TransactionsApi.md#create_coins_transaction_from_address_for_whole_amount) | **POST** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/addresses/{address}/all-transaction-requests | Create Coins Transaction From Address For Whole Amount |
| [**create_coins_transaction_request_from_address**](TransactionsApi.md#create_coins_transaction_request_from_address) | **POST** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/addresses/{address}/transaction-requests | Create Coins Transaction Request from Address |
| [**create_coins_transaction_request_from_wallet**](TransactionsApi.md#create_coins_transaction_request_from_wallet) | **POST** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/transaction-requests | Create Coins Transaction Request from Wallet |
| [**create_fungible_token_transaction_request_from_address_without_fee_priority**](TransactionsApi.md#create_fungible_token_transaction_request_from_address_without_fee_priority) | **POST** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/addresses/{senderAddress}/feeless-token-transaction-requests | Create Fungible Token Transaction Request From Address Without Fee Priority |
| [**create_fungible_tokens_transaction_request_from_address**](TransactionsApi.md#create_fungible_tokens_transaction_request_from_address) | **POST** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/addresses/{senderAddress}/token-transaction-requests | Create Fungible Tokens Transaction Request from Address |
| [**create_single_transaction_request_from_address_without_fee_priority**](TransactionsApi.md#create_single_transaction_request_from_address_without_fee_priority) | **POST** /wallet-as-a-service/wallets/{walletId}/{blockchain}/{network}/addresses/{address}/feeless-transaction-requests | Create Single Transaction Request From Address Without Fee Priority |


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
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
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
address = '0x6f61e3c2fbb8c8be698bd0907ba6c04b62800fe5' # String | Defines the specific source address for the transaction. For XRP we also support the X-address format.
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
wallet_id = '609e221675d04500068718dc' # String | Represents the sender's specific and unique Wallet ID of the sender.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
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
| **address** | **String** | Defines the specific source address for the transaction. For XRP we also support the X-address format. |  |
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
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  create_coins_transaction_request_from_wallet_rb: CryptoApis::CreateCoinsTransactionRequestFromWalletRB.new({data: CryptoApis::CreateCoinsTransactionRequestFromWalletRBData.new({item: CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItem.new({fee_priority: 'slow', recipients: [CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItemRecipientsInner.new({address: '2MtzNEqm2D9jcbPJ5mW7Z3AUNwqt3afZH66', amount: '0.125'})]})})}) # CreateCoinsTransactionRequestFromWalletRB | 
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


## create_fungible_token_transaction_request_from_address_without_fee_priority

> <CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityR> create_fungible_token_transaction_request_from_address_without_fee_priority(blockchain, network, sender_address, wallet_id, opts)

Create Fungible Token Transaction Request From Address Without Fee Priority

Through this endpoint customers can make a single feeless token transaction on the Tron blockchain protocol. TRX transactions burn certain resources called Bandwidth and Energy. Each account has 1500 bandwidth free for use every 24 hours and more can be obtained by staking TRX. The unit price of Energy is 280 SUN and of bandwidth - 1000 SUN. If the resources are insufficient, TRX will be burned to pay for them.

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
blockchain = 'tron' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
sender_address = 'TX8VXpdEoNNrKeEuNTfbEXfa9eZivcyUwD' # String | Defines the specific source address for the transaction.
wallet_id = '62b9b5c3b97f4b0008092714' # String | Defines the unique ID of the Wallet.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  create_fungible_token_transaction_request_from_address_without_fee_priority_rb: CryptoApis::CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityRB.new({data: CryptoApis::CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityRBData.new({item: CryptoApis::CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityRBDataItem.new({amount: '0.25684', fee_limit: '1000000000', recipient_address: 'TMVeigwYyuXJVHER4oA2yQzsFFSN2JfXkt', token_identifier: 'TF17BgPaZYbz8oxbjhriubPDsA7ArKoLX3'})})}) # CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityRB | 
}

begin
  # Create Fungible Token Transaction Request From Address Without Fee Priority
  result = api_instance.create_fungible_token_transaction_request_from_address_without_fee_priority(blockchain, network, sender_address, wallet_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_fungible_token_transaction_request_from_address_without_fee_priority: #{e}"
end
```

#### Using the create_fungible_token_transaction_request_from_address_without_fee_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityR>, Integer, Hash)> create_fungible_token_transaction_request_from_address_without_fee_priority_with_http_info(blockchain, network, sender_address, wallet_id, opts)

```ruby
begin
  # Create Fungible Token Transaction Request From Address Without Fee Priority
  data, status_code, headers = api_instance.create_fungible_token_transaction_request_from_address_without_fee_priority_with_http_info(blockchain, network, sender_address, wallet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityR>
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_fungible_token_transaction_request_from_address_without_fee_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **sender_address** | **String** | Defines the specific source address for the transaction. |  |
| **wallet_id** | **String** | Defines the unique ID of the Wallet. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **create_fungible_token_transaction_request_from_address_without_fee_priority_rb** | [**CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityRB**](CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityRB.md) |  | [optional] |

### Return type

[**CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityR**](CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_fungible_tokens_transaction_request_from_address

> <CreateFungibleTokensTransactionRequestFromAddressR> create_fungible_tokens_transaction_request_from_address(blockchain, network, sender_address, wallet_id, opts)

Create Fungible Tokens Transaction Request from Address

Through this endpoint users can make a single token transaction.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  create_fungible_tokens_transaction_request_from_address_rb: CryptoApis::CreateFungibleTokensTransactionRequestFromAddressRB.new({data: CryptoApis::CreateFungibleTokensTransactionRequestFromAddressRBData.new({item: CryptoApis::CreateFungibleTokensTransactionRequestFromAddressRBDataItem.new({amount: '0.2', fee_priority: 'slow', recipient_address: '0xc065b539490f81b6c297c37b1925c3be2f190732', token_identifier: '0xdac17f958d2ee523a2206206994597c13d831ec7'})})}) # CreateFungibleTokensTransactionRequestFromAddressRB | 
}

begin
  # Create Fungible Tokens Transaction Request from Address
  result = api_instance.create_fungible_tokens_transaction_request_from_address(blockchain, network, sender_address, wallet_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_fungible_tokens_transaction_request_from_address: #{e}"
end
```

#### Using the create_fungible_tokens_transaction_request_from_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFungibleTokensTransactionRequestFromAddressR>, Integer, Hash)> create_fungible_tokens_transaction_request_from_address_with_http_info(blockchain, network, sender_address, wallet_id, opts)

```ruby
begin
  # Create Fungible Tokens Transaction Request from Address
  data, status_code, headers = api_instance.create_fungible_tokens_transaction_request_from_address_with_http_info(blockchain, network, sender_address, wallet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFungibleTokensTransactionRequestFromAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_fungible_tokens_transaction_request_from_address_with_http_info: #{e}"
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
| **create_fungible_tokens_transaction_request_from_address_rb** | [**CreateFungibleTokensTransactionRequestFromAddressRB**](CreateFungibleTokensTransactionRequestFromAddressRB.md) |  | [optional] |

### Return type

[**CreateFungibleTokensTransactionRequestFromAddressR**](CreateFungibleTokensTransactionRequestFromAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_single_transaction_request_from_address_without_fee_priority

> <CreateSingleTransactionRequestFromAddressWithoutFeePriorityR> create_single_transaction_request_from_address_without_fee_priority(address, blockchain, network, wallet_id, opts)

Create Single Transaction Request From Address Without Fee Priority

Through this endpoint users can create a new single transaction request from one address to another. The difference between this endpoint and \"Create Coins Transaction Request from Address\"  is that for Tron blockchain there is no Fee Priority that defines how fast a transaction can be mined.

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
address = 'TX8VXpdEoNNrKeEuNTfbEXfa9eZivcyUwD' # String | Defines the specific source address for the transaction.
blockchain = 'tron' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
wallet_id = '62b9b5c3b97f4b0008092714' # String | Represents the sender's specific and unique Wallet ID of the sender.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  create_single_transaction_request_from_address_without_fee_priority_rb: CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityRB.new({data: CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityRBData.new({item: CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityRBDataItem.new({amount: '0.0006', recipient_address: 'TMVeigwYyuXJVHER4oA2yQzsFFSN2JfXkt'})})}) # CreateSingleTransactionRequestFromAddressWithoutFeePriorityRB | 
}

begin
  # Create Single Transaction Request From Address Without Fee Priority
  result = api_instance.create_single_transaction_request_from_address_without_fee_priority(address, blockchain, network, wallet_id, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_single_transaction_request_from_address_without_fee_priority: #{e}"
end
```

#### Using the create_single_transaction_request_from_address_without_fee_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSingleTransactionRequestFromAddressWithoutFeePriorityR>, Integer, Hash)> create_single_transaction_request_from_address_without_fee_priority_with_http_info(address, blockchain, network, wallet_id, opts)

```ruby
begin
  # Create Single Transaction Request From Address Without Fee Priority
  data, status_code, headers = api_instance.create_single_transaction_request_from_address_without_fee_priority_with_http_info(address, blockchain, network, wallet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSingleTransactionRequestFromAddressWithoutFeePriorityR>
rescue CryptoApis::ApiError => e
  puts "Error when calling TransactionsApi->create_single_transaction_request_from_address_without_fee_priority_with_http_info: #{e}"
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
| **create_single_transaction_request_from_address_without_fee_priority_rb** | [**CreateSingleTransactionRequestFromAddressWithoutFeePriorityRB**](CreateSingleTransactionRequestFromAddressWithoutFeePriorityRB.md) |  | [optional] |

### Return type

[**CreateSingleTransactionRequestFromAddressWithoutFeePriorityR**](CreateSingleTransactionRequestFromAddressWithoutFeePriorityR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

