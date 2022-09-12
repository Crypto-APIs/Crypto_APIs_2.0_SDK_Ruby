# CryptoApis::FeaturesApi

All URIs are relative to *https://rest.cryptoapis.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**broadcast_locally_signed_transaction**](FeaturesApi.md#broadcast_locally_signed_transaction) | **POST** /blockchain-tools/{blockchain}/{network}/transactions/broadcast | Broadcast Locally Signed Transaction |
| [**convert_bitcoin_cash_address**](FeaturesApi.md#convert_bitcoin_cash_address) | **POST** /blockchain-tools/{blockchain}/{network}/address/convert | Convert Bitcoin Cash Address |
| [**decode_raw_transaction_hex**](FeaturesApi.md#decode_raw_transaction_hex) | **POST** /blockchain-tools/{blockchain}/{network}/decode-raw-transaction | Decode Raw Transaction Hex |
| [**decode_x_address**](FeaturesApi.md#decode_x_address) | **GET** /blockchain-tools/{blockchain}/{network}/decode-x-address/{xAddress} | Decode X-Address |
| [**derive_hd_wallet__x_pub_y_pub_z_pub_change_or_receiving_addresses**](FeaturesApi.md#derive_hd_wallet__x_pub_y_pub_z_pub_change_or_receiving_addresses) | **GET** /blockchain-tools/{blockchain}/{network}/hd/{extendedPublicKey}/addresses/derive-address | Derive HD Wallet (xPub, yPub, zPub) Change Or Receiving Addresses |
| [**encode_x_address**](FeaturesApi.md#encode_x_address) | **GET** /blockchain-tools/{blockchain}/{network}/encode-x-address/{classicAddress}/{addressTag} | Encode X-Address |
| [**estimate_gas_limit**](FeaturesApi.md#estimate_gas_limit) | **POST** /blockchain-tools/{blockchain}/{network}/gas-limit | Estimate Gas Limit |
| [**estimate_token_gas_limit**](FeaturesApi.md#estimate_token_gas_limit) | **POST** /blockchain-tools/{blockchain}/{network}/gas-limit/contract | Estimate Token Gas Limit |
| [**get_eip_1559_fee_recommendations**](FeaturesApi.md#get_eip_1559_fee_recommendations) | **GET** /blockchain-tools/{blockchain}/{network}/fees/eip1559 | Get EIP 1559 Fee Recommendations |
| [**validate_address**](FeaturesApi.md#validate_address) | **POST** /blockchain-tools/{blockchain}/{network}/addresses/validate | Validate Address |


## broadcast_locally_signed_transaction

> <BroadcastLocallySignedTransactionR> broadcast_locally_signed_transaction(blockchain, network, opts)

Broadcast Locally Signed Transaction

Through this endpoint customers can broadcast transactions that have been already signed locally. Instead of using a node for broadcasting a signed transaction users can use this endpoint. We then keep the user posted about the status by sending you a callback with a success or failure status.    {warning}This can be prepared and signed **only** locally, not through the API. We can provide support only for the process of broadcasting.{/warning}

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

api_instance = CryptoApis::FeaturesApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  broadcast_locally_signed_transaction_rb: CryptoApis::BroadcastLocallySignedTransactionRB.new({data: CryptoApis::BroadcastLocallySignedTransactionRBData.new({item: CryptoApis::BroadcastLocallySignedTransactionRBDataItem.new({signed_transaction_hex: '0xf86a22827d00831e8480941b85a43e2e7f52e766ddfdfa2b901c42cb1201be8801b27f33b807c0008029a084ccbf02b27e0842fb1eda7a187a5589c3759be0e969e0ca989dc469a5e5e394a02e111e1156b197f1de4c1d9ba4af26e50665ea6d617d05b3e4047da12b915e69'})})}) # BroadcastLocallySignedTransactionRB | 
}

begin
  # Broadcast Locally Signed Transaction
  result = api_instance.broadcast_locally_signed_transaction(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->broadcast_locally_signed_transaction: #{e}"
end
```

#### Using the broadcast_locally_signed_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BroadcastLocallySignedTransactionR>, Integer, Hash)> broadcast_locally_signed_transaction_with_http_info(blockchain, network, opts)

```ruby
begin
  # Broadcast Locally Signed Transaction
  data, status_code, headers = api_instance.broadcast_locally_signed_transaction_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BroadcastLocallySignedTransactionR>
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->broadcast_locally_signed_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **broadcast_locally_signed_transaction_rb** | [**BroadcastLocallySignedTransactionRB**](BroadcastLocallySignedTransactionRB.md) |  | [optional] |

### Return type

[**BroadcastLocallySignedTransactionR**](BroadcastLocallySignedTransactionR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## convert_bitcoin_cash_address

> <ConvertBitcoinCashAddressR> convert_bitcoin_cash_address(blockchain, network, opts)

Convert Bitcoin Cash Address

Through this endpoint customers will be able to convert addresses for the BCH (Bitcoin Cash) protocol from BCH legacy to cash address and vice versa.

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

api_instance = CryptoApis::FeaturesApi.new
blockchain = 'bitcoin-cash' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  convert_bitcoin_cash_address_rb: CryptoApis::ConvertBitcoinCashAddressRB.new({data: CryptoApis::ConvertBitcoinCashAddressRBData.new({item: CryptoApis::ConvertBitcoinCashAddressRBDataItem.new({address: 'bchtest:qpcgz3zt5zp5dj7vd9ms24xquamncvhnxvlz97eee8'})})}) # ConvertBitcoinCashAddressRB | 
}

begin
  # Convert Bitcoin Cash Address
  result = api_instance.convert_bitcoin_cash_address(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->convert_bitcoin_cash_address: #{e}"
end
```

#### Using the convert_bitcoin_cash_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConvertBitcoinCashAddressR>, Integer, Hash)> convert_bitcoin_cash_address_with_http_info(blockchain, network, opts)

```ruby
begin
  # Convert Bitcoin Cash Address
  data, status_code, headers = api_instance.convert_bitcoin_cash_address_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConvertBitcoinCashAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->convert_bitcoin_cash_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **convert_bitcoin_cash_address_rb** | [**ConvertBitcoinCashAddressRB**](ConvertBitcoinCashAddressRB.md) |  | [optional] |

### Return type

[**ConvertBitcoinCashAddressR**](ConvertBitcoinCashAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## decode_raw_transaction_hex

> <DecodeRawTransactionHexR> decode_raw_transaction_hex(blockchain, network, opts)

Decode Raw Transaction Hex

Through this endpoint customers can decode a raw transaction hex and see the decoded transactions' details.

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

api_instance = CryptoApis::FeaturesApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  decode_raw_transaction_hex_rb: CryptoApis::DecodeRawTransactionHexRB.new({data: CryptoApis::DecodeRawTransactionHexRBData.new({item: CryptoApis::DecodeRawTransactionHexRBDataItem.new({raw_transaction_hex: '0100000001f3f6a909f8521adb57d898d2985834e632374e770fd9e2b98656f1bf1fdfd427010000006b48304502203a776322ebf8eb8b58cc6ced4f2574f4c73aa664edce0b0022690f2f6f47c521022100b82353305988cb0ebd443089a173ceec93fe4dbfe98d74419ecc84a6a698e31d012103c5c1bc61f60ce3d6223a63cedbece03b12ef9f0068f2f3c4a7e7f06c523c3664ffffffff0260e31600000000001976a914977ae6e32349b99b72196cb62b5ef37329ed81b488ac063d1000000000001976a914f76bc4190f3d8e2315e5c11c59cfc8be9df747e388ac00000000'})})}) # DecodeRawTransactionHexRB | 
}

begin
  # Decode Raw Transaction Hex
  result = api_instance.decode_raw_transaction_hex(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->decode_raw_transaction_hex: #{e}"
end
```

#### Using the decode_raw_transaction_hex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DecodeRawTransactionHexR>, Integer, Hash)> decode_raw_transaction_hex_with_http_info(blockchain, network, opts)

```ruby
begin
  # Decode Raw Transaction Hex
  data, status_code, headers = api_instance.decode_raw_transaction_hex_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DecodeRawTransactionHexR>
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->decode_raw_transaction_hex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **decode_raw_transaction_hex_rb** | [**DecodeRawTransactionHexRB**](DecodeRawTransactionHexRB.md) |  | [optional] |

### Return type

[**DecodeRawTransactionHexR**](DecodeRawTransactionHexR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## decode_x_address

> <DecodeXAddressR> decode_x_address(blockchain, network, x_address, opts)

Decode X-Address

Through this endpoint, customers can decode an encoded XRP address with tag, by providing the specific x-address. The response includes the decoded classic address and the tag.

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

api_instance = CryptoApis::FeaturesApi.new
blockchain = 'xrp' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
x_address = 'TVTMSyg6nRscAm2JtRd8hnpF9nD21CgZx6ibb9iy3EWHotV' # String | Represents the encoded classic address with its destination tag.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Decode X-Address
  result = api_instance.decode_x_address(blockchain, network, x_address, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->decode_x_address: #{e}"
end
```

#### Using the decode_x_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DecodeXAddressR>, Integer, Hash)> decode_x_address_with_http_info(blockchain, network, x_address, opts)

```ruby
begin
  # Decode X-Address
  data, status_code, headers = api_instance.decode_x_address_with_http_info(blockchain, network, x_address, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DecodeXAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->decode_x_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **x_address** | **String** | Represents the encoded classic address with its destination tag. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**DecodeXAddressR**](DecodeXAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## derive_hd_wallet__x_pub_y_pub_z_pub_change_or_receiving_addresses

> <DeriveHDWalletXPubYPubZPubChangeOrReceivingAddressesR> derive_hd_wallet__x_pub_y_pub_z_pub_change_or_receiving_addresses(blockchain, extended_public_key, network, opts)

Derive HD Wallet (xPub, yPub, zPub) Change Or Receiving Addresses

Through this endpoint, customers can derive up to 10 addresses - both change and receive, from a certain HD Wallet (xPub, yPub, zPub), by providing an extended public key. By default the system creates a receiving/deposit address, unless the isChange attribute is set to 'true'. In that case the system derives a 'change' address. The change address can be derived only for UTXO based blockchains, for all the rest, this endpoint always creates a deposit/receiving address.

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

api_instance = CryptoApis::FeaturesApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
extended_public_key = 'upub5Ei6bRNneqozk6smK7dvtXHC5PjUyEL4ynCfMKvjznLcXi9DQaikETzQjHvJC43XexMvQs64jxB1njMjCHpRZ4xQWAmv3ge9cVtjfsHmbvQ' # String | Defines the account extended publicly known key which is used to derive all child public keys.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  address_format: 'p2pkh', # String | Represents the format of the address.
  addresses_count: 2, # Integer | Represents the addresses count.
  is_change: true, # Boolean | Defines if the specific address is a change or deposit address. If the value is True - it is a change address, if it is False - it is a Deposit address.
  start_index: 3 # Integer | The starting index of the response items, i.e. where the response should start listing the returned items.
}

begin
  # Derive HD Wallet (xPub, yPub, zPub) Change Or Receiving Addresses
  result = api_instance.derive_hd_wallet__x_pub_y_pub_z_pub_change_or_receiving_addresses(blockchain, extended_public_key, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->derive_hd_wallet__x_pub_y_pub_z_pub_change_or_receiving_addresses: #{e}"
end
```

#### Using the derive_hd_wallet__x_pub_y_pub_z_pub_change_or_receiving_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeriveHDWalletXPubYPubZPubChangeOrReceivingAddressesR>, Integer, Hash)> derive_hd_wallet__x_pub_y_pub_z_pub_change_or_receiving_addresses_with_http_info(blockchain, extended_public_key, network, opts)

```ruby
begin
  # Derive HD Wallet (xPub, yPub, zPub) Change Or Receiving Addresses
  data, status_code, headers = api_instance.derive_hd_wallet__x_pub_y_pub_z_pub_change_or_receiving_addresses_with_http_info(blockchain, extended_public_key, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeriveHDWalletXPubYPubZPubChangeOrReceivingAddressesR>
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->derive_hd_wallet__x_pub_y_pub_z_pub_change_or_receiving_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **extended_public_key** | **String** | Defines the account extended publicly known key which is used to derive all child public keys. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **address_format** | **String** | Represents the format of the address. | [optional] |
| **addresses_count** | **Integer** | Represents the addresses count. | [optional] |
| **is_change** | **Boolean** | Defines if the specific address is a change or deposit address. If the value is True - it is a change address, if it is False - it is a Deposit address. | [optional] |
| **start_index** | **Integer** | The starting index of the response items, i.e. where the response should start listing the returned items. | [optional] |

### Return type

[**DeriveHDWalletXPubYPubZPubChangeOrReceivingAddressesR**](DeriveHDWalletXPubYPubZPubChangeOrReceivingAddressesR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## encode_x_address

> <EncodeXAddressR> encode_x_address(address_tag, blockchain, classic_address, network, opts)

Encode X-Address

Through this endpoint, customers can encode an encoded XRP address with tag, by providing the specific x-address. The response includes the encoded classic address and the tag.

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

api_instance = CryptoApis::FeaturesApi.new
address_tag = 3999472835 # Integer | Defines a specific Tag that is an additional XRP address feature. It helps identifying a transaction recipient beyond a wallet address.
blockchain = 'xrp' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
classic_address = 'rA9bXGJcXvZKaWofrRphdJsBWzhyCfH3z' # String | Represents the public address, which is a compressed and shortened form of a public key.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Encode X-Address
  result = api_instance.encode_x_address(address_tag, blockchain, classic_address, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->encode_x_address: #{e}"
end
```

#### Using the encode_x_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EncodeXAddressR>, Integer, Hash)> encode_x_address_with_http_info(address_tag, blockchain, classic_address, network, opts)

```ruby
begin
  # Encode X-Address
  data, status_code, headers = api_instance.encode_x_address_with_http_info(address_tag, blockchain, classic_address, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EncodeXAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->encode_x_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_tag** | **Integer** | Defines a specific Tag that is an additional XRP address feature. It helps identifying a transaction recipient beyond a wallet address. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **classic_address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**EncodeXAddressR**](EncodeXAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## estimate_gas_limit

> <EstimateGasLimitR> estimate_gas_limit(blockchain, network, opts)

Estimate Gas Limit

This endpoint helps customer in estimating the gas limit needed for a transaction. It gives information for gas expenses when sending ether to contracts or making a transaction with additional data in it.

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

api_instance = CryptoApis::FeaturesApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  estimate_gas_limit_rb: CryptoApis::EstimateGasLimitRB.new({data: CryptoApis::EstimateGasLimitRBData.new({item: CryptoApis::EstimateGasLimitRBDataItem.new({amount: '0.002', recipient: '0xc065b539490f81b6c297c37b1925c3be2f190738', sender: '0x6f61e3c2fbb8c8be698bd0907ba6c04b62800fe5'})})}) # EstimateGasLimitRB | 
}

begin
  # Estimate Gas Limit
  result = api_instance.estimate_gas_limit(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->estimate_gas_limit: #{e}"
end
```

#### Using the estimate_gas_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EstimateGasLimitR>, Integer, Hash)> estimate_gas_limit_with_http_info(blockchain, network, opts)

```ruby
begin
  # Estimate Gas Limit
  data, status_code, headers = api_instance.estimate_gas_limit_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EstimateGasLimitR>
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->estimate_gas_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **estimate_gas_limit_rb** | [**EstimateGasLimitRB**](EstimateGasLimitRB.md) |  | [optional] |

### Return type

[**EstimateGasLimitR**](EstimateGasLimitR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## estimate_token_gas_limit

> <EstimateTokenGasLimitR> estimate_token_gas_limit(blockchain, network, opts)

Estimate Token Gas Limit

This endpoint helps customer in estimating the Contract Gas Limit needed for a transaction. It gives information for gas expenses for a specific contract when sending ethers or making a transaction with additional data in it.

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

api_instance = CryptoApis::FeaturesApi.new
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  estimate_token_gas_limit_rb: CryptoApis::EstimateTokenGasLimitRB.new({data: CryptoApis::EstimateTokenGasLimitRBData.new({item: CryptoApis::EstimateTokenGasLimitRBDataItem.new({amount: '0.12', contract: '0x092de782a7e1e0a92991ad829a0a33aef3c7545e', contract_type: 'ERC-20', recipient: '0xc065b539490f81b6c297c37b1925c3be2f190738', sender: '0x6f61e3c2fbb8c8be698bd0907ba6c04b62800fe5'})})}) # EstimateTokenGasLimitRB | 
}

begin
  # Estimate Token Gas Limit
  result = api_instance.estimate_token_gas_limit(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->estimate_token_gas_limit: #{e}"
end
```

#### Using the estimate_token_gas_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EstimateTokenGasLimitR>, Integer, Hash)> estimate_token_gas_limit_with_http_info(blockchain, network, opts)

```ruby
begin
  # Estimate Token Gas Limit
  data, status_code, headers = api_instance.estimate_token_gas_limit_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EstimateTokenGasLimitR>
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->estimate_token_gas_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **estimate_token_gas_limit_rb** | [**EstimateTokenGasLimitRB**](EstimateTokenGasLimitRB.md) |  | [optional] |

### Return type

[**EstimateTokenGasLimitR**](EstimateTokenGasLimitR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_eip_1559_fee_recommendations

> <GetEIP1559FeeRecommendationsR> get_eip_1559_fee_recommendations(network, blockchain, opts)

Get EIP 1559 Fee Recommendations

Through this endpoint customers can obtain fee recommendations specifically for EIP 1559.

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

api_instance = CryptoApis::FeaturesApi.new
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
blockchain = 'ethereum' # String | Represents the specific blockchain protocol name, e.g. Ethereum.
opts = {
  context: 'yourExampleString' # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
}

begin
  # Get EIP 1559 Fee Recommendations
  result = api_instance.get_eip_1559_fee_recommendations(network, blockchain, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->get_eip_1559_fee_recommendations: #{e}"
end
```

#### Using the get_eip_1559_fee_recommendations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEIP1559FeeRecommendationsR>, Integer, Hash)> get_eip_1559_fee_recommendations_with_http_info(network, blockchain, opts)

```ruby
begin
  # Get EIP 1559 Fee Recommendations
  data, status_code, headers = api_instance.get_eip_1559_fee_recommendations_with_http_info(network, blockchain, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEIP1559FeeRecommendationsR>
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->get_eip_1559_fee_recommendations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |

### Return type

[**GetEIP1559FeeRecommendationsR**](GetEIP1559FeeRecommendationsR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## validate_address

> <ValidateAddressR> validate_address(blockchain, network, opts)

Validate Address

This endpoint checks user public addresses whether they are valid or not.

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

api_instance = CryptoApis::FeaturesApi.new
blockchain = 'bitcoin' # String | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
network = 'mainnet' # String | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
opts = {
  context: 'yourExampleString', # String | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. `context` is specified by the user.
  validate_address_rb: CryptoApis::ValidateAddressRB.new({data: CryptoApis::ValidateAddressRBData.new({item: CryptoApis::ValidateAddressRBDataItem.new({address: 'mho4jHBcrNCncKt38trJahXakuaBnS7LK5'})})}) # ValidateAddressRB | 
}

begin
  # Validate Address
  result = api_instance.validate_address(blockchain, network, opts)
  p result
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->validate_address: #{e}"
end
```

#### Using the validate_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidateAddressR>, Integer, Hash)> validate_address_with_http_info(blockchain, network, opts)

```ruby
begin
  # Validate Address
  data, status_code, headers = api_instance.validate_address_with_http_info(blockchain, network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidateAddressR>
rescue CryptoApis::ApiError => e
  puts "Error when calling FeaturesApi->validate_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **validate_address_rb** | [**ValidateAddressRB**](ValidateAddressRB.md) |  | [optional] |

### Return type

[**ValidateAddressR**](ValidateAddressR.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

