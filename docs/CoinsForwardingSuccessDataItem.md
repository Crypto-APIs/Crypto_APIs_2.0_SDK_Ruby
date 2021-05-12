# OpenapiClient::CoinsForwardingSuccessDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **from_address** | **String** | Represents the hash of the address that provides the coins. |  |
| **to_address** | **String** | Represents the hash of the address to forward the coins to. |  |
| **forwarded_amount** | **String** | Represents the amount of coins that have been forwarded. |  |
| **forwarded_unit** | **String** | Represents the unit of coins that have been forwarded, e.g. BTC. |  |
| **spent_fees_amount** | **String** | Represents the amount of the fee spent for the coins to be forwarded. |  |
| **spent_fees_unit** | **String** | Represents the unit of the fee spent for the coins to be forwarded, e.g. BTC. |  |
| **trigger_transaction_id** | **String** | Defines the unique Transaction ID that triggered the coin forwarding. |  |
| **forwarding_transaction_id** | **String** | Defines the unique Transaction ID that forwarded the coins. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CoinsForwardingSuccessDataItem.new(
  blockchain: bitcoin,
  network: testnet,
  from_address: mmd963W1fECjLyaDCHcioSCZYHkRwjkGST,
  to_address: ms4KNsbNpoU8g424pzmEjbkFbfAHae1msB,
  forwarded_amount: 00059441,
  forwarded_unit: BTC,
  spent_fees_amount: 0.00022827,
  spent_fees_unit: BTC,
  trigger_transaction_id: 86a7546bde4ac28b34504909d138592a6d6fc1277ea1f8f2f9c75dc04bdf3b7b,
  forwarding_transaction_id: 2241b5264fac8acb92e9fc597035b99cdd22f6578d63c6f52b099729f7c4f979
)
```

