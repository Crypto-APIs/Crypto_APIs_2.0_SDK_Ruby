# CryptoApis::CreateSubscriptionsForApi

All URIs are relative to *https://rest.cryptoapis.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**mined_transaction**](CreateSubscriptionsForApi.md#mined_transaction) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/transaction-mined | Mined transaction |
| [**new_block**](CreateSubscriptionsForApi.md#new_block) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/block-mined | New Block |
| [**new_confirmed_coins_transactions**](CreateSubscriptionsForApi.md#new_confirmed_coins_transactions) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-coins-transactions-confirmed | New confirmed coins transactions |
| [**new_confirmed_coins_transactions_and_each_confirmation**](CreateSubscriptionsForApi.md#new_confirmed_coins_transactions_and_each_confirmation) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-coins-transactions-confirmed-each-confirmation | New confirmed coins transactions and each confirmation |
| [**new_confirmed_tokens_transactions**](CreateSubscriptionsForApi.md#new_confirmed_tokens_transactions) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-tokens-transactions-confirmed | New confirmed tokens transactions |
| [**new_confirmed_tokens_transactions_and_each_confirmation**](CreateSubscriptionsForApi.md#new_confirmed_tokens_transactions_and_each_confirmation) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-tokens-transactions-confirmed-each-confirmation | New confirmed tokens transactions and each confirmation |
| [**new_unconfirmed_coins_transactions**](CreateSubscriptionsForApi.md#new_unconfirmed_coins_transactions) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-coins-transactions-unconfirmed | New unconfirmed coins transactions |
| [**new_unconfirmed_tokens_transactions**](CreateSubscriptionsForApi.md#new_unconfirmed_tokens_transactions) | **POST** /blockchain-events/{blockchain}/{network}/subscriptions/address-tokens-transactions-unconfirmed | New unconfirmed tokens transactions |


## mined_transaction

> <MinedTransactionResponse> mined_transaction(blockchain, network, opts)

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  mined_transaction_request_body: CryptoApis::MinedTransactionRequestBody.new({data: CryptoApis::MinedTransactionRequestBodyData.new({item: CryptoApis::MinedTransactionRequestBodyDataItem.new({callback_url: 'http://example.com', transaction_id: 'df2690ff97e72c1f8b0f2102a8cb5c1d0fa8fb8754d543c9bc0edc4d4bc34bfc'})})}) # MinedTransactionRequestBody | 
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

> <Array(<MinedTransactionResponse>, Integer, Hash)> mined_transaction_with_http_info(blockchain, network, opts)

```ruby
begin
  # Mined transaction
  data, status_code, headers = api_instance.mined_transaction_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MinedTransactionResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->mined_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **mined_transaction_request_body** | [**MinedTransactionRequestBody**](MinedTransactionRequestBody.md) |  | [optional] |

### Return type

[**MinedTransactionResponse**](MinedTransactionResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_block

> <NewBlockResponse> new_block(blockchain, network, opts)

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_block_request_body: CryptoApis::NewBlockRequestBody.new({data: CryptoApis::NewBlockRequestBodyData.new({item: CryptoApis::NewBlockRequestBodyDataItem.new({callback_url: 'http://example.com'})})}) # NewBlockRequestBody | 
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

> <Array(<NewBlockResponse>, Integer, Hash)> new_block_with_http_info(blockchain, network, opts)

```ruby
begin
  # New Block
  data, status_code, headers = api_instance.new_block_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewBlockResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_block_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_block_request_body** | [**NewBlockRequestBody**](NewBlockRequestBody.md) |  | [optional] |

### Return type

[**NewBlockResponse**](NewBlockResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_confirmed_coins_transactions

> <NewConfirmedCoinsTransactionsResponse> new_confirmed_coins_transactions(blockchain, network, opts)

New confirmed coins transactions

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new incoming or outgoing confirmed transactions for coins from/to the customer's address. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.     Being confirmed means that the transactions are verified by miners and added to the next block.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_confirmed_coins_transactions_request_body: CryptoApis::NewConfirmedCoinsTransactionsRequestBody.new({data: CryptoApis::NewConfirmedCoinsTransactionsRequestBodyData.new({item: CryptoApis::NewConfirmedCoinsTransactionsRequestBodyDataItem.new({address: 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5', callback_url: 'http://example.com'})})}) # NewConfirmedCoinsTransactionsRequestBody | 
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

> <Array(<NewConfirmedCoinsTransactionsResponse>, Integer, Hash)> new_confirmed_coins_transactions_with_http_info(blockchain, network, opts)

```ruby
begin
  # New confirmed coins transactions
  data, status_code, headers = api_instance.new_confirmed_coins_transactions_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewConfirmedCoinsTransactionsResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_coins_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_confirmed_coins_transactions_request_body** | [**NewConfirmedCoinsTransactionsRequestBody**](NewConfirmedCoinsTransactionsRequestBody.md) |  | [optional] |

### Return type

[**NewConfirmedCoinsTransactionsResponse**](NewConfirmedCoinsTransactionsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_confirmed_coins_transactions_and_each_confirmation

> <NewConfirmedCoinsTransactionsAndEachConfirmationResponse> new_confirmed_coins_transactions_and_each_confirmation(blockchain, network, opts)

New confirmed coins transactions and each confirmation

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new incoming or outgoing confirmed transactions for coins from/to the customer's address with also a response at each confirmation the transaction has received until the specified confirmations limit is reached. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.     Being confirmed means that the transactions are verified by miners and added to the next block. This endpoint refers to **coins transactions only, not tokens**.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_confirmed_coins_transactions_and_each_confirmation_request_body: CryptoApis::NewConfirmedCoinsTransactionsAndEachConfirmationRequestBody.new({data: CryptoApis::NewConfirmedCoinsTransactionsAndEachConfirmationRequestBodyData.new({item: CryptoApis::NewConfirmedCoinsTransactionsAndEachConfirmationRequestBodyDataItem.new({address: 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5', callback_url: 'http://example.com', confirmations_count: 3})})}) # NewConfirmedCoinsTransactionsAndEachConfirmationRequestBody | 
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

> <Array(<NewConfirmedCoinsTransactionsAndEachConfirmationResponse>, Integer, Hash)> new_confirmed_coins_transactions_and_each_confirmation_with_http_info(blockchain, network, opts)

```ruby
begin
  # New confirmed coins transactions and each confirmation
  data, status_code, headers = api_instance.new_confirmed_coins_transactions_and_each_confirmation_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewConfirmedCoinsTransactionsAndEachConfirmationResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_coins_transactions_and_each_confirmation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_confirmed_coins_transactions_and_each_confirmation_request_body** | [**NewConfirmedCoinsTransactionsAndEachConfirmationRequestBody**](NewConfirmedCoinsTransactionsAndEachConfirmationRequestBody.md) |  | [optional] |

### Return type

[**NewConfirmedCoinsTransactionsAndEachConfirmationResponse**](NewConfirmedCoinsTransactionsAndEachConfirmationResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_confirmed_tokens_transactions

> <NewConfirmedTokensTransactionsResponse> new_confirmed_tokens_transactions(blockchain, network, opts)

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_confirmed_tokens_transactions_request_body: CryptoApis::NewConfirmedTokensTransactionsRequestBody.new({data: CryptoApis::NewUnconfirmedTokensTransactionsRequestBodyData.new({item: CryptoApis::NewUnconfirmedTokensTransactionsRequestBodyDataItem.new({address: 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5', callback_url: 'http://example.com'})})}) # NewConfirmedTokensTransactionsRequestBody | 
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

> <Array(<NewConfirmedTokensTransactionsResponse>, Integer, Hash)> new_confirmed_tokens_transactions_with_http_info(blockchain, network, opts)

```ruby
begin
  # New confirmed tokens transactions
  data, status_code, headers = api_instance.new_confirmed_tokens_transactions_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewConfirmedTokensTransactionsResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_tokens_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_confirmed_tokens_transactions_request_body** | [**NewConfirmedTokensTransactionsRequestBody**](NewConfirmedTokensTransactionsRequestBody.md) |  | [optional] |

### Return type

[**NewConfirmedTokensTransactionsResponse**](NewConfirmedTokensTransactionsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_confirmed_tokens_transactions_and_each_confirmation

> <NewConfirmedTokensTransactionsAndEachConfirmationResponse> new_confirmed_tokens_transactions_and_each_confirmation(blockchain, network, opts)

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_confirmed_tokens_transactions_and_each_confirmation_request_body: CryptoApis::NewConfirmedTokensTransactionsAndEachConfirmationRequestBody.new({data: CryptoApis::NewConfirmedTokensTransactionsAndEachConfirmationRequestBodyData.new({item: CryptoApis::NewConfirmedTokensTransactionsAndEachConfirmationRequestBodyDataItem.new({address: 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5', callback_url: 'http://example.com'})})}) # NewConfirmedTokensTransactionsAndEachConfirmationRequestBody | 
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

> <Array(<NewConfirmedTokensTransactionsAndEachConfirmationResponse>, Integer, Hash)> new_confirmed_tokens_transactions_and_each_confirmation_with_http_info(blockchain, network, opts)

```ruby
begin
  # New confirmed tokens transactions and each confirmation
  data, status_code, headers = api_instance.new_confirmed_tokens_transactions_and_each_confirmation_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewConfirmedTokensTransactionsAndEachConfirmationResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_confirmed_tokens_transactions_and_each_confirmation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_confirmed_tokens_transactions_and_each_confirmation_request_body** | [**NewConfirmedTokensTransactionsAndEachConfirmationRequestBody**](NewConfirmedTokensTransactionsAndEachConfirmationRequestBody.md) |  | [optional] |

### Return type

[**NewConfirmedTokensTransactionsAndEachConfirmationResponse**](NewConfirmedTokensTransactionsAndEachConfirmationResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_unconfirmed_coins_transactions

> <NewUnconfirmedCoinsTransactionsResponse> new_unconfirmed_coins_transactions(blockchain, network, opts)

New unconfirmed coins transactions

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new unconfirmed coins transactions for the user. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.    Unconfirmed coins transactions remain in the mempool (memory pool) until they are confirmed by miners and added to the next block. Sometimes spikes in transaction activity can cause delays in confirmations.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {note}It is also **important to note** that just because pending unconfirmed transactions are in the mempool, **doesn't necessarily** mean they will get confirmed.{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_unconfirmed_coins_transactions_request_body: CryptoApis::NewUnconfirmedCoinsTransactionsRequestBody.new({data: CryptoApis::NewUnconfirmedCoinsTransactionsRequestBodyData.new({item: CryptoApis::NewUnconfirmedCoinsTransactionsRequestBodyDataItem.new({address: 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5', callback_url: 'http://example.com'})})}) # NewUnconfirmedCoinsTransactionsRequestBody | 
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

> <Array(<NewUnconfirmedCoinsTransactionsResponse>, Integer, Hash)> new_unconfirmed_coins_transactions_with_http_info(blockchain, network, opts)

```ruby
begin
  # New unconfirmed coins transactions
  data, status_code, headers = api_instance.new_unconfirmed_coins_transactions_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewUnconfirmedCoinsTransactionsResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_unconfirmed_coins_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_unconfirmed_coins_transactions_request_body** | [**NewUnconfirmedCoinsTransactionsRequestBody**](NewUnconfirmedCoinsTransactionsRequestBody.md) |  | [optional] |

### Return type

[**NewUnconfirmedCoinsTransactionsResponse**](NewUnconfirmedCoinsTransactionsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_unconfirmed_tokens_transactions

> <NewUnconfirmedTokensTransactionsResponse> new_unconfirmed_tokens_transactions(blockchain, network, opts)

New unconfirmed tokens transactions

Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new unconfirmed tokens transactions for the user. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.    Unconfirmed tokens transactions remain in the mempool (memory pool) until they are confirmed by miners and added to the next block. Sometimes spikes in transaction activity can cause delays in confirmations.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {note}It is also **important to note** that just because pending unconfirmed transactions are in the mempool, **doesn't necessarily** mean they will get confirmed.{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}

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
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
opts = {
  context: 'context_example', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  new_unconfirmed_tokens_transactions_request_body: CryptoApis::NewUnconfirmedTokensTransactionsRequestBody.new({data: CryptoApis::NewUnconfirmedTokensTransactionsRequestBodyData.new({item: CryptoApis::NewUnconfirmedTokensTransactionsRequestBodyDataItem.new({address: 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5', callback_url: 'http://example.com'})})}) # NewUnconfirmedTokensTransactionsRequestBody | 
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

> <Array(<NewUnconfirmedTokensTransactionsResponse>, Integer, Hash)> new_unconfirmed_tokens_transactions_with_http_info(blockchain, network, opts)

```ruby
begin
  # New unconfirmed tokens transactions
  data, status_code, headers = api_instance.new_unconfirmed_tokens_transactions_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewUnconfirmedTokensTransactionsResponse>
rescue CryptoApis::ApiError => e
  puts "Error when calling CreateSubscriptionsForApi->new_unconfirmed_tokens_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **new_unconfirmed_tokens_transactions_request_body** | [**NewUnconfirmedTokensTransactionsRequestBody**](NewUnconfirmedTokensTransactionsRequestBody.md) |  | [optional] |

### Return type

[**NewUnconfirmedTokensTransactionsResponse**](NewUnconfirmedTokensTransactionsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

