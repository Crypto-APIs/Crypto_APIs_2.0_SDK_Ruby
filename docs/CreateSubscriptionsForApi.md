# CryptoApis::CreateSubscriptionsForApi

All URIs are relative to *https://rest.cryptoapis.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**block_height_reached**](CreateSubscriptionsForApi.md#block_height_reached) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/block-height-reached | Block Height Reached |
| [**mined_transaction**](CreateSubscriptionsForApi.md#mined_transaction) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/transaction-mined | Mined transaction |
| [**new_block**](CreateSubscriptionsForApi.md#new_block) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/block-mined | New Block |
| [**new_confirmed_coins_transactions**](CreateSubscriptionsForApi.md#new_confirmed_coins_transactions) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-coins-transactions-confirmed | New confirmed coins transactions |
| [**new_confirmed_coins_transactions_and_each_confirmation**](CreateSubscriptionsForApi.md#new_confirmed_coins_transactions_and_each_confirmation) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-coins-transactions-confirmed-each-confirmation | New confirmed coins transactions and each confirmation |
| [**new_confirmed_coins_transactions_for_specific_amount**](CreateSubscriptionsForApi.md#new_confirmed_coins_transactions_for_specific_amount) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/coins-transactions-for-specific-amount | New Confirmed Coins Transactions For Specific Amount |
| [**new_confirmed_internal_transactions**](CreateSubscriptionsForApi.md#new_confirmed_internal_transactions) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-internal-transactions-confirmed | New confirmed internal transactions |
| [**new_confirmed_internal_transactions_and_each_confirmation**](CreateSubscriptionsForApi.md#new_confirmed_internal_transactions_and_each_confirmation) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-internal-transactions-confirmed-each-confirmation | New confirmed internal transactions and each confirmation |
| [**new_confirmed_internal_transactions_for_specific_amount**](CreateSubscriptionsForApi.md#new_confirmed_internal_transactions_for_specific_amount) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/internal-transactions-for-specific-amount | New Confirmed Internal Transactions For Specific Amount |
| [**new_confirmed_token_transactions_for_specific_amount**](CreateSubscriptionsForApi.md#new_confirmed_token_transactions_for_specific_amount) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/tokens-transfers-for-specific-amount | New Confirmed Token Transactions For Specific Amount |
| [**new_confirmed_tokens_transactions**](CreateSubscriptionsForApi.md#new_confirmed_tokens_transactions) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-tokens-transactions-confirmed | New confirmed tokens transactions |
| [**new_confirmed_tokens_transactions_and_each_confirmation**](CreateSubscriptionsForApi.md#new_confirmed_tokens_transactions_and_each_confirmation) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-tokens-transactions-confirmed-each-confirmation | New confirmed tokens transactions and each confirmation |
| [**new_unconfirmed_coins_transactions**](CreateSubscriptionsForApi.md#new_unconfirmed_coins_transactions) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-coins-transactions-unconfirmed | New unconfirmed coins transactions |
| [**new_unconfirmed_tokens_transactions**](CreateSubscriptionsForApi.md#new_unconfirmed_tokens_transactions) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-tokens-transactions-unconfirmed | New unconfirmed tokens transactions |


## block_height_reached

> <BlockHeightReachedR> block_height_reached(blockchain, network, opts)

Block Height Reached

Through this endpoint customers can create callback subscriptions for a specific block height that hasn't been reached yet. In this case the event is when the specified block height in the request body is reached in a said blockchain. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs.

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  block_height_reached_rb: CryptoApis::BlockHeightReachedRB.new({data: CryptoApis::BlockHeightReachedRBData.new({item: CryptoApis::BlockHeightReachedRBDataItem.new({block_height_reached: 667900, callback_url: 'https://example.com'})})}) # BlockHeightReachedRB | 
}

begin
  # Block Height Reached
  result = api_instance.block_height_reached(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->block_height_reached: #{e}"
end
```

#### Using the block_height_reached_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlockHeightReachedR>, Integer, Hash)> block_height_reached_with_http_info(blockchain, network, opts)

```ruby
begin
  # Block Height Reached
  data, status_code, headers = api_instance.block_height_reached_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlockHeightReachedR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->block_height_reached_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **block_height_reached_rb** | [**BlockHeightReachedRB**](BlockHeightReachedRB.md) |  | [optional] |

### Return type

[**BlockHeightReachedR**](BlockHeightReachedR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## mined_transaction

> <MinedTransactionR> mined_transaction(blockchain, network, opts)

Mined transaction

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when a specific transaction is mined. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified `transactionId`.    A transaction is mined when it is included in a new block in the blockchain.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  mined_transaction_rb: CryptoApis::MinedTransactionRB.new({data: CryptoApis::MinedTransactionRBData.new({item: CryptoApis::MinedTransactionRBDataItem.new({callback_url: 'https://example.com', transaction_id: 'df2690ff97e72c1f8b0f2102a8cb5c1d0fa8fb8754d543c9bc0edc4d4bc34bfc'})})}) # MinedTransactionRB | 
}

begin
  # Mined transaction
  result = api_instance.mined_transaction(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->mined_transaction: #{e}"
end
```

#### Using the mined_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MinedTransactionR>, Integer, Hash)> mined_transaction_with_http_info(blockchain, network, opts)

```ruby
begin
  # Mined transaction
  data, status_code, headers = api_instance.mined_transaction_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MinedTransactionR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->mined_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **mined_transaction_rb** | [**MinedTransactionRB**](MinedTransactionRB.md) |  | [optional] |

### Return type

[**MinedTransactionR**](MinedTransactionR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_block

> <NewBlockR> new_block(blockchain, network, opts)

New Block

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when a new block is mined in the specific blockchain. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.    A new block is mined when it is added to the chain once a consensus is reached by the majority of the miners, which is when the block gets validated and added to the blockchain.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_block_rb: CryptoApis::NewBlockRB.new({data: CryptoApis::NewBlockRBData.new({item: CryptoApis::NewBlockRBDataItem.new({callback_url: 'https://example.com'})})}) # NewBlockRB | 
}

begin
  # New Block
  result = api_instance.new_block(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_block: #{e}"
end
```

#### Using the new_block_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewBlockR>, Integer, Hash)> new_block_with_http_info(blockchain, network, opts)

```ruby
begin
  # New Block
  data, status_code, headers = api_instance.new_block_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewBlockR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_block_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_block_rb** | [**NewBlockRB**](NewBlockRB.md) |  | [optional] |

### Return type

[**NewBlockR**](NewBlockR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_confirmed_coins_transactions

> <NewConfirmedCoinsTransactionsR> new_confirmed_coins_transactions(blockchain, network, opts)

New confirmed coins transactions

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new incoming or outgoing confirmed transactions for coins from/to the customer's address. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.     Being confirmed means that the transactions are verified by miners and added to the next block.    {note}For UTXO-based protocols like Bitcoin a transaction could have multiple inputs and outputs which means the address could in as both sender and recipient. [Here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-data-returned-for-utxo-based-transactions) is how we inform you on that.{/note}    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_confirmed_coins_transactions_rb: CryptoApis::NewConfirmedCoinsTransactionsRB.new({data: CryptoApis::NewConfirmedCoinsTransactionsRBData.new({item: CryptoApis::NewConfirmedCoinsTransactionsRBDataItem.new({address: 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5', callback_url: 'https://example.com'})})}) # NewConfirmedCoinsTransactionsRB | 
}

begin
  # New confirmed coins transactions
  result = api_instance.new_confirmed_coins_transactions(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_coins_transactions: #{e}"
end
```

#### Using the new_confirmed_coins_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewConfirmedCoinsTransactionsR>, Integer, Hash)> new_confirmed_coins_transactions_with_http_info(blockchain, network, opts)

```ruby
begin
  # New confirmed coins transactions
  data, status_code, headers = api_instance.new_confirmed_coins_transactions_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewConfirmedCoinsTransactionsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_coins_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_confirmed_coins_transactions_rb** | [**NewConfirmedCoinsTransactionsRB**](NewConfirmedCoinsTransactionsRB.md) |  | [optional] |

### Return type

[**NewConfirmedCoinsTransactionsR**](NewConfirmedCoinsTransactionsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_confirmed_coins_transactions_and_each_confirmation

> <NewConfirmedCoinsTransactionsAndEachConfirmationR> new_confirmed_coins_transactions_and_each_confirmation(blockchain, network, opts)

New confirmed coins transactions and each confirmation

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new incoming or outgoing confirmed transactions for coins from/to the customer's address with also a response at each confirmation the transaction has received until the specified confirmations limit is reached. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.     Being confirmed means that the transactions are verified by miners and added to the next block. This endpoint refers to **coins transactions only, not tokens**.    {note}For UTXO-based protocols like Bitcoin a transaction could have multiple inputs and outputs which means the address could in as both sender and recipient. [Here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-data-returned-for-utxo-based-transactions) is how we inform you on that.{/note}    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_confirmed_coins_transactions_and_each_confirmation_rb: CryptoApis::NewConfirmedCoinsTransactionsAndEachConfirmationRB.new({data: CryptoApis::NewConfirmedCoinsTransactionsAndEachConfirmationRBData.new({item: CryptoApis::NewConfirmedCoinsTransactionsAndEachConfirmationRBDataItem.new({address: 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5', callback_url: 'https://example.com', confirmations_count: 3})})}) # NewConfirmedCoinsTransactionsAndEachConfirmationRB | 
}

begin
  # New confirmed coins transactions and each confirmation
  result = api_instance.new_confirmed_coins_transactions_and_each_confirmation(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_coins_transactions_and_each_confirmation: #{e}"
end
```

#### Using the new_confirmed_coins_transactions_and_each_confirmation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewConfirmedCoinsTransactionsAndEachConfirmationR>, Integer, Hash)> new_confirmed_coins_transactions_and_each_confirmation_with_http_info(blockchain, network, opts)

```ruby
begin
  # New confirmed coins transactions and each confirmation
  data, status_code, headers = api_instance.new_confirmed_coins_transactions_and_each_confirmation_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewConfirmedCoinsTransactionsAndEachConfirmationR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_coins_transactions_and_each_confirmation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_confirmed_coins_transactions_and_each_confirmation_rb** | [**NewConfirmedCoinsTransactionsAndEachConfirmationRB**](NewConfirmedCoinsTransactionsAndEachConfirmationRB.md) |  | [optional] |

### Return type

[**NewConfirmedCoinsTransactionsAndEachConfirmationR**](NewConfirmedCoinsTransactionsAndEachConfirmationR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_confirmed_coins_transactions_for_specific_amount

> <NewConfirmedCoinsTransactionsForSpecificAmountR> new_confirmed_coins_transactions_for_specific_amount(blockchain, network, opts)

New Confirmed Coins Transactions For Specific Amount

Through this endpoint customers can create callback subscriptions for a specific event and \"amountHigherThan\" value. In this case the event is when there are new incoming or outgoing confirmed coins transactions for the specified blockchain and the amount is equal or higher than the value specified.  By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs  filtered for the specified amount. The information is returned per specified address.    Being confirmed means that the transactions are verified by miners and added to the next block.

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_confirmed_coins_transactions_for_specific_amount_rb: CryptoApis::NewConfirmedCoinsTransactionsForSpecificAmountRB.new({data: CryptoApis::NewConfirmedCoinsTransactionsForSpecificAmountRBData.new({item: CryptoApis::NewConfirmedCoinsTransactionsForSpecificAmountRBDataItem.new({amount_higher_than: 2, callback_url: 'https://example.com'})})}) # NewConfirmedCoinsTransactionsForSpecificAmountRB | 
}

begin
  # New Confirmed Coins Transactions For Specific Amount
  result = api_instance.new_confirmed_coins_transactions_for_specific_amount(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_coins_transactions_for_specific_amount: #{e}"
end
```

#### Using the new_confirmed_coins_transactions_for_specific_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewConfirmedCoinsTransactionsForSpecificAmountR>, Integer, Hash)> new_confirmed_coins_transactions_for_specific_amount_with_http_info(blockchain, network, opts)

```ruby
begin
  # New Confirmed Coins Transactions For Specific Amount
  data, status_code, headers = api_instance.new_confirmed_coins_transactions_for_specific_amount_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewConfirmedCoinsTransactionsForSpecificAmountR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_coins_transactions_for_specific_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_confirmed_coins_transactions_for_specific_amount_rb** | [**NewConfirmedCoinsTransactionsForSpecificAmountRB**](NewConfirmedCoinsTransactionsForSpecificAmountRB.md) |  | [optional] |

### Return type

[**NewConfirmedCoinsTransactionsForSpecificAmountR**](NewConfirmedCoinsTransactionsForSpecificAmountR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_confirmed_internal_transactions

> <NewConfirmedInternalTransactionsR> new_confirmed_internal_transactions(blockchain, network, opts)

New confirmed internal transactions

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new confirmed internal transactions. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs.    Being confirmed means that the transactions are verified by miners and added to the next block.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_confirmed_internal_transactions_rb: CryptoApis::NewConfirmedInternalTransactionsRB.new({data: CryptoApis::NewConfirmedInternalTransactionsRBData.new({item: CryptoApis::NewConfirmedInternalTransactionsRBDataItem.new({address: '0xbcc817f057950b0df41206c5d7125e6225cae18e', allow_duplicates: true, callback_secret_key: 'yourSecretKey', callback_url: 'https://example.com'})})}) # NewConfirmedInternalTransactionsRB | 
}

begin
  # New confirmed internal transactions
  result = api_instance.new_confirmed_internal_transactions(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_internal_transactions: #{e}"
end
```

#### Using the new_confirmed_internal_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewConfirmedInternalTransactionsR>, Integer, Hash)> new_confirmed_internal_transactions_with_http_info(blockchain, network, opts)

```ruby
begin
  # New confirmed internal transactions
  data, status_code, headers = api_instance.new_confirmed_internal_transactions_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewConfirmedInternalTransactionsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_internal_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_confirmed_internal_transactions_rb** | [**NewConfirmedInternalTransactionsRB**](NewConfirmedInternalTransactionsRB.md) |  | [optional] |

### Return type

[**NewConfirmedInternalTransactionsR**](NewConfirmedInternalTransactionsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_confirmed_internal_transactions_and_each_confirmation

> <NewConfirmedInternalTransactionsAndEachConfirmationR> new_confirmed_internal_transactions_and_each_confirmation(blockchain, network, opts)

New confirmed internal transactions and each confirmation

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new confirmed internal transactions. Includes also a response at each confirmation the transaction receives until the specified confirmations limit is reached. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs.     Being confirmed means that the transactions are verified by miners and added to the next block.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_confirmed_internal_transactions_and_each_confirmation_rb: CryptoApis::NewConfirmedInternalTransactionsAndEachConfirmationRB.new({data: CryptoApis::NewConfirmedInternalTransactionsAndEachConfirmationRBData.new({item: CryptoApis::NewConfirmedInternalTransactionsAndEachConfirmationRBDataItem.new({address: '0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2', allow_duplicates: true, callback_secret_key: 'yourSecretString', callback_url: 'https://example.com', confirmations_count: 3})})}) # NewConfirmedInternalTransactionsAndEachConfirmationRB | 
}

begin
  # New confirmed internal transactions and each confirmation
  result = api_instance.new_confirmed_internal_transactions_and_each_confirmation(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_internal_transactions_and_each_confirmation: #{e}"
end
```

#### Using the new_confirmed_internal_transactions_and_each_confirmation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewConfirmedInternalTransactionsAndEachConfirmationR>, Integer, Hash)> new_confirmed_internal_transactions_and_each_confirmation_with_http_info(blockchain, network, opts)

```ruby
begin
  # New confirmed internal transactions and each confirmation
  data, status_code, headers = api_instance.new_confirmed_internal_transactions_and_each_confirmation_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewConfirmedInternalTransactionsAndEachConfirmationR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_internal_transactions_and_each_confirmation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_confirmed_internal_transactions_and_each_confirmation_rb** | [**NewConfirmedInternalTransactionsAndEachConfirmationRB**](NewConfirmedInternalTransactionsAndEachConfirmationRB.md) |  | [optional] |

### Return type

[**NewConfirmedInternalTransactionsAndEachConfirmationR**](NewConfirmedInternalTransactionsAndEachConfirmationR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_confirmed_internal_transactions_for_specific_amount

> <NewConfirmedInternalTransactionsForSpecificAmountR> new_confirmed_internal_transactions_for_specific_amount(blockchain, network, opts)

New Confirmed Internal Transactions For Specific Amount

Through this endpoint customers can create callback subscriptions for a specific event and \"amountHigherThan\" value. In this case the event is when there are new confirmed internal transactions and the amount is equal or higher than a value, specified by the customer. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs, filtered for the specified amount.  Being confirmed means that the transactions are verified by miners and added to the next block

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_confirmed_internal_transactions_for_specific_amount_rb: CryptoApis::NewConfirmedInternalTransactionsForSpecificAmountRB.new({data: CryptoApis::NewConfirmedInternalTransactionsForSpecificAmountRBData.new({item: CryptoApis::NewConfirmedInternalTransactionsForSpecificAmountRBDataItem.new({amount_higher_than: 3, callback_url: 'https://example.com'})})}) # NewConfirmedInternalTransactionsForSpecificAmountRB | 
}

begin
  # New Confirmed Internal Transactions For Specific Amount
  result = api_instance.new_confirmed_internal_transactions_for_specific_amount(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_internal_transactions_for_specific_amount: #{e}"
end
```

#### Using the new_confirmed_internal_transactions_for_specific_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewConfirmedInternalTransactionsForSpecificAmountR>, Integer, Hash)> new_confirmed_internal_transactions_for_specific_amount_with_http_info(blockchain, network, opts)

```ruby
begin
  # New Confirmed Internal Transactions For Specific Amount
  data, status_code, headers = api_instance.new_confirmed_internal_transactions_for_specific_amount_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewConfirmedInternalTransactionsForSpecificAmountR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_internal_transactions_for_specific_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_confirmed_internal_transactions_for_specific_amount_rb** | [**NewConfirmedInternalTransactionsForSpecificAmountRB**](NewConfirmedInternalTransactionsForSpecificAmountRB.md) |  | [optional] |

### Return type

[**NewConfirmedInternalTransactionsForSpecificAmountR**](NewConfirmedInternalTransactionsForSpecificAmountR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_confirmed_token_transactions_for_specific_amount

> <NewConfirmedTokenTransactionsForSpecificAmountR> new_confirmed_token_transactions_for_specific_amount(blockchain, network, opts)

New Confirmed Token Transactions For Specific Amount

Through this endpoint customers can create callback subscriptions for a specific event and \"amountHigherThan\" value. In this case the event is when there are new incoming or outgoing confirmed token transactions for the specified blockchain and the amount is equal or higher than the value specified. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs, filtered for the specified amount.  Being confirmed means that the transactions are verified by miners and added to the next block. This endpoint refers to tokens transactions only, not coins.

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_confirmed_token_transactions_for_specific_amount_rb: CryptoApis::NewConfirmedTokenTransactionsForSpecificAmountRB.new({data: CryptoApis::NewConfirmedTokenTransactionsForSpecificAmountRBData.new({item: CryptoApis::NewConfirmedTokenTransactionsForSpecificAmountRBDataItem.new({amount_higher_than: 2, callback_url: 'https://example.com', contract_address: '0x7495fede000c8a3b77eeae09cf70fa94cd2d53f5'})})}) # NewConfirmedTokenTransactionsForSpecificAmountRB | 
}

begin
  # New Confirmed Token Transactions For Specific Amount
  result = api_instance.new_confirmed_token_transactions_for_specific_amount(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_token_transactions_for_specific_amount: #{e}"
end
```

#### Using the new_confirmed_token_transactions_for_specific_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewConfirmedTokenTransactionsForSpecificAmountR>, Integer, Hash)> new_confirmed_token_transactions_for_specific_amount_with_http_info(blockchain, network, opts)

```ruby
begin
  # New Confirmed Token Transactions For Specific Amount
  data, status_code, headers = api_instance.new_confirmed_token_transactions_for_specific_amount_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewConfirmedTokenTransactionsForSpecificAmountR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_token_transactions_for_specific_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_confirmed_token_transactions_for_specific_amount_rb** | [**NewConfirmedTokenTransactionsForSpecificAmountRB**](NewConfirmedTokenTransactionsForSpecificAmountRB.md) |  | [optional] |

### Return type

[**NewConfirmedTokenTransactionsForSpecificAmountR**](NewConfirmedTokenTransactionsForSpecificAmountR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_confirmed_tokens_transactions

> <NewConfirmedTokensTransactionsR> new_confirmed_tokens_transactions(blockchain, network, opts)

New confirmed tokens transactions

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new incoming or outgoing confirmed transactions for tokens from/to the customer's address. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.     Being confirmed means that the transactions are verified by miners and added to the next block. This endpoint refers to **tokens transactions only, not coins**.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_confirmed_tokens_transactions_rb: CryptoApis::NewConfirmedTokensTransactionsRB.new({data: CryptoApis::NewConfirmedTokensTransactionsRBData.new({item: CryptoApis::NewConfirmedTokensTransactionsRBDataItem.new({address: '0xbf16582e53d6fd892f11de8a3e29e8c3b65d77c2', callback_url: 'https://example.com'})})}) # NewConfirmedTokensTransactionsRB | 
}

begin
  # New confirmed tokens transactions
  result = api_instance.new_confirmed_tokens_transactions(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_tokens_transactions: #{e}"
end
```

#### Using the new_confirmed_tokens_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewConfirmedTokensTransactionsR>, Integer, Hash)> new_confirmed_tokens_transactions_with_http_info(blockchain, network, opts)

```ruby
begin
  # New confirmed tokens transactions
  data, status_code, headers = api_instance.new_confirmed_tokens_transactions_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewConfirmedTokensTransactionsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_tokens_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_confirmed_tokens_transactions_rb** | [**NewConfirmedTokensTransactionsRB**](NewConfirmedTokensTransactionsRB.md) |  | [optional] |

### Return type

[**NewConfirmedTokensTransactionsR**](NewConfirmedTokensTransactionsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_confirmed_tokens_transactions_and_each_confirmation

> <NewConfirmedTokensTransactionsAndEachConfirmationR> new_confirmed_tokens_transactions_and_each_confirmation(blockchain, network, opts)

New confirmed tokens transactions and each confirmation

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new incoming or outgoing confirmed transactions for tokens from/to the customer's address with also a response at each confirmation the transaction has received until the specified confirmations limit is reached. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.     Being confirmed means that the transactions are verified by miners and added to the next block. This endpoint refers to **tokens transactions only, not coins**.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_confirmed_tokens_transactions_and_each_confirmation_rb: CryptoApis::NewConfirmedTokensTransactionsAndEachConfirmationRB.new({data: CryptoApis::NewConfirmedTokensTransactionsAndEachConfirmationRBData.new({item: CryptoApis::NewConfirmedTokensTransactionsAndEachConfirmationRBDataItem.new({address: '0x033ef6db9fbd0ee60e2931906b987fe0280471a0', callback_url: 'https://example.com'})})}) # NewConfirmedTokensTransactionsAndEachConfirmationRB | 
}

begin
  # New confirmed tokens transactions and each confirmation
  result = api_instance.new_confirmed_tokens_transactions_and_each_confirmation(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_tokens_transactions_and_each_confirmation: #{e}"
end
```

#### Using the new_confirmed_tokens_transactions_and_each_confirmation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewConfirmedTokensTransactionsAndEachConfirmationR>, Integer, Hash)> new_confirmed_tokens_transactions_and_each_confirmation_with_http_info(blockchain, network, opts)

```ruby
begin
  # New confirmed tokens transactions and each confirmation
  data, status_code, headers = api_instance.new_confirmed_tokens_transactions_and_each_confirmation_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewConfirmedTokensTransactionsAndEachConfirmationR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_tokens_transactions_and_each_confirmation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_confirmed_tokens_transactions_and_each_confirmation_rb** | [**NewConfirmedTokensTransactionsAndEachConfirmationRB**](NewConfirmedTokensTransactionsAndEachConfirmationRB.md) |  | [optional] |

### Return type

[**NewConfirmedTokensTransactionsAndEachConfirmationR**](NewConfirmedTokensTransactionsAndEachConfirmationR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_unconfirmed_coins_transactions

> <NewUnconfirmedCoinsTransactionsR> new_unconfirmed_coins_transactions(blockchain, network, opts)

New unconfirmed coins transactions

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new unconfirmed coins transactions for the user. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.    Unconfirmed coins transactions remain in the mempool (memory pool) until they are confirmed by miners and added to the next block. Sometimes spikes in transaction activity can cause delays in confirmations.    {note}For UTXO-based protocols like Bitcoin a transaction could have multiple inputs and outputs which means the address could in as both sender and recipient. [Here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-data-returned-for-utxo-based-transactions) is how we inform you on that.{/note}    {warning}We cannot guarantee at 100% that webhooks for unconfirmed transactions will always be received. Some may **not get received** due to the possibility of some nodes not being updated with that information. This can occur in networks with low activity and/or not many nodes, e.g. Testnet networks and rarely Mainnets.{/warning}    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {note}It is also **important to note** that just because pending unconfirmed transactions are in the mempool, **doesn't necessarily** mean they will get confirmed.{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_unconfirmed_coins_transactions_rb: CryptoApis::NewUnconfirmedCoinsTransactionsRB.new({data: CryptoApis::NewUnconfirmedCoinsTransactionsRBData.new({item: CryptoApis::NewUnconfirmedCoinsTransactionsRBDataItem.new({address: 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5', callback_url: 'https://example.com'})})}) # NewUnconfirmedCoinsTransactionsRB | 
}

begin
  # New unconfirmed coins transactions
  result = api_instance.new_unconfirmed_coins_transactions(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_unconfirmed_coins_transactions: #{e}"
end
```

#### Using the new_unconfirmed_coins_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewUnconfirmedCoinsTransactionsR>, Integer, Hash)> new_unconfirmed_coins_transactions_with_http_info(blockchain, network, opts)

```ruby
begin
  # New unconfirmed coins transactions
  data, status_code, headers = api_instance.new_unconfirmed_coins_transactions_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewUnconfirmedCoinsTransactionsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_unconfirmed_coins_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_unconfirmed_coins_transactions_rb** | [**NewUnconfirmedCoinsTransactionsRB**](NewUnconfirmedCoinsTransactionsRB.md) |  | [optional] |

### Return type

[**NewUnconfirmedCoinsTransactionsR**](NewUnconfirmedCoinsTransactionsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_unconfirmed_tokens_transactions

> <NewUnconfirmedTokensTransactionsR> new_unconfirmed_tokens_transactions(blockchain, network, opts)

New unconfirmed tokens transactions

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new unconfirmed tokens transactions for the user. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.    Unconfirmed tokens transactions remain in the mempool (memory pool) until they are confirmed by miners and added to the next block. Sometimes spikes in transaction activity can cause delays in confirmations.    {warning}We cannot guarantee at 100% that webhooks for unconfirmed transactions will always be received. Some may **not get received** due to the possibility of some nodes not being updated with that information. This can occur in networks with low activity and/or not many nodes, e.g. Testnet networks and rarely Mainnets.{/warning}    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {note}It is also **important to note** that just because pending unconfirmed transactions are in the mempool, **doesn't necessarily** mean they will get confirmed.{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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

api_instance = CryptoApis::CreateSubscriptionsForApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_unconfirmed_tokens_transactions_rb: CryptoApis::NewUnconfirmedTokensTransactionsRB.new({data: CryptoApis::NewUnconfirmedTokensTransactionsRBData.new({item: CryptoApis::NewUnconfirmedTokensTransactionsRBDataItem.new({address: '0x033ef6db9fbd0ee60e2931906b987fe0280471a0', callback_url: 'https://example.com'})})}) # NewUnconfirmedTokensTransactionsRB | 
}

begin
  # New unconfirmed tokens transactions
  result = api_instance.new_unconfirmed_tokens_transactions(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_unconfirmed_tokens_transactions: #{e}"
end
```

#### Using the new_unconfirmed_tokens_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewUnconfirmedTokensTransactionsR>, Integer, Hash)> new_unconfirmed_tokens_transactions_with_http_info(blockchain, network, opts)

```ruby
begin
  # New unconfirmed tokens transactions
  data, status_code, headers = api_instance.new_unconfirmed_tokens_transactions_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewUnconfirmedTokensTransactionsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_unconfirmed_tokens_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_unconfirmed_tokens_transactions_rb** | [**NewUnconfirmedTokensTransactionsRB**](NewUnconfirmedTokensTransactionsRB.md) |  | [optional] |

### Return type

[**NewUnconfirmedTokensTransactionsR**](NewUnconfirmedTokensTransactionsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

