# CryptoApis::AddressInternalTransactionConfirmedDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **address** | **String** | Defines the specific address of the internal transaction. |  |
| **mined_in_block** | [**AddressInternalTransactionConfirmedDataItemMinedInBlock**](AddressInternalTransactionConfirmedDataItemMinedInBlock.md) |  |  |
| **parent_transaction_id** | **String** | Defines the Parent Transaction&#39;s unique ID. |  |
| **operation_id** | **String** | Defines the specific operation&#39;s unique ID. |  |
| **amount** | **String** | Defines the amount of coins sent with the confirmed transaction. |  |
| **unit** | **String** | Defines the unit of the transaction, e.g. Gwei. |  |
| **direction** | **String** | Defines whether the transaction is \&quot;incoming\&quot; or \&quot;outgoing\&quot;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressInternalTransactionConfirmedDataItem.new(
  blockchain: ethereum,
  network: mainnet,
  address: 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2,
  mined_in_block: null,
  parent_transaction_id: 0xc3be8371b32fa2238c44271643446b14c87ff11b77d58f9a1bceb1d1253e79b2,
  operation_id: call_5_0,
  amount: 0.94891479938916527,
  unit: ETH,
  direction: outgoing
)
```

