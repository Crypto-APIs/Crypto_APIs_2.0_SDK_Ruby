# OpenapiClient::CoinsForwardingFailDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **from_address** | **String** | Represents the hash of the address that provides the coins. |  |
| **to_address** | **String** | Represents the hash of the address to forward the coins to. |  |
| **trigger_transaction_id** | **String** | Defines the unique Transaction ID that triggered the coin forwarding. |  |
| **error_code** | **String** | Represents the error code received for the failed coin forwarding. |  |
| **error_message** | **String** | Represents the error message received for the failed coin forwarding. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CoinsForwardingFailDataItem.new(
  blockchain: bitcoin,
  network: testnet,
  from_address: 38RTQQ8915tEmKFMjpPJPfrh9yV5HbJCRb,
  to_address: 1PkLrGoEGiGdmqNXX8daYNFvVVTjmWjc7m,
  trigger_transaction_id: 7e56c9cfaec36c77049ce5298bc153bb03b0b6b5dae760a62915617015f8e2a6,
  error_code: blockchain_data_address_not_found,
  error_message: Address not found
)
```

