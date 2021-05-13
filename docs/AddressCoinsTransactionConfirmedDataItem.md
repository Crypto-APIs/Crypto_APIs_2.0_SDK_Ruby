# CryptoApis::AddressCoinsTransactionConfirmedDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **address** | **String** | Defines the specific address to which the coin transaction has been sent and is confirmed. |  |
| **mined_in_block** | [**AddressCoinsTransactionConfirmedDataItemMinedInBlock**](AddressCoinsTransactionConfirmedDataItemMinedInBlock.md) |  |  |
| **transaction_id** | **String** | Defines the unique ID of the specific transaction, i.e. its identification number. |  |
| **amount** | **String** | Defines the amount of coins sent with the confirmed transaction. |  |
| **unit** | **String** | Defines the unit of the transaction, e.g. BTC. |  |
| **direction** | **String** | Defines whether the transaction is \&quot;incoming\&quot; or \&quot;outgoing\&quot;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressCoinsTransactionConfirmedDataItem.new(
  blockchain: bitcoin,
  network: testnet,
  address: bc1qmjhy4exylset37e6sfjdtfksm8kpcrxknj7cag,
  mined_in_block: null,
  transaction_id: b00d27cccd5e4f4fa1b28824d9a1e5fef88e6c37cdeb09e37eb39aa1d3d63448,
  amount: 0.0315,
  unit: BTC,
  direction: incoming
)
```

