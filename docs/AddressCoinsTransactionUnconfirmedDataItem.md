# OpenapiClient::AddressCoinsTransactionUnconfirmedDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **address** | **String** | Defines the specific address to which the coin transaction has been sent and is pending confirmation. |  |
| **transaction_id** | **String** | Defines the unique ID of the specific transaction, i.e. its identification number. |  |
| **amount** | **String** | Defines the amount of coins sent with the transaction that is pending confirmation. |  |
| **unit** | **String** | Defines the unit of the transaction, e.g. BTC. |  |
| **direction** | **String** | Defines whether the transaction is \&quot;incoming\&quot; or \&quot;outgoing\&quot;. |  |
| **first_seen_in_mempool_timestamp** | **Integer** | Defines the exact time the transaction has been first accepted into the mempool to await confirmation as timestamp. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddressCoinsTransactionUnconfirmedDataItem.new(
  blockchain: bitcoin,
  network: testnet,
  address: 3CzKAnCXt7ePb5NCp5qrAEimrxjY81oLoT,
  transaction_id: 4b2159770f75a7200ea168eb56ebbf3303b025d838f743fb6e785bc32d5ac65b,
  amount: 0.6508984,
  unit: BTC,
  direction: incoming,
  first_seen_in_mempool_timestamp: 1610365615
)
```

