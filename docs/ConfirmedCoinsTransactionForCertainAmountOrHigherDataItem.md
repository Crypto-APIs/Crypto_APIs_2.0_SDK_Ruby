# CryptoApis::ConfirmedCoinsTransactionForCertainAmountOrHigherDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **transaction_id** | **String** | Defines the unique ID of the specific transaction, i.e. its identification number. |  |
| **mined_in_block** | [**AddressCoinsTransactionConfirmedDataItemMinedInBlock**](AddressCoinsTransactionConfirmedDataItemMinedInBlock.md) |  |  |
| **amount** | **String** | Defines the amount of coins sent with the confirmed transaction. |  |
| **unit** | **String** | Defines the unit of the transaction, e.g. BTC. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ConfirmedCoinsTransactionForCertainAmountOrHigherDataItem.new(
  blockchain: bitcoin,
  network: testnet,
  transaction_id: b00d27cccd5e4f4fa1b28824d9a1e5fef88e6c37cdeb09e37eb39aa1d3d63448,
  mined_in_block: null,
  amount: 0.0315,
  unit: BTC
)
```

