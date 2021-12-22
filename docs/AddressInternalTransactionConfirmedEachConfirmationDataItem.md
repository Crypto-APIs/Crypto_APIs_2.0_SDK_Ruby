# CryptoApis::AddressInternalTransactionConfirmedEachConfirmationDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **address** | **String** | Defines the specific address of the internal transaction. |  |
| **mined_in_block** | [**AddressInternalTransactionConfirmedEachConfirmationDataItemMinedInBlock**](AddressInternalTransactionConfirmedEachConfirmationDataItemMinedInBlock.md) |  |  |
| **parent_transaction_id** | **String** | Defines the Parent Transaction&#39;s unique ID. |  |
| **operation_id** | **String** | Defines the specific operation&#39;s unique ID. |  |
| **current_confirmations** | **Integer** | Defines the number of currently received confirmations for the transaction. |  |
| **target_confirmations** | **Integer** | Defines the number of confirmation transactions requested as callbacks, i.e. the system can notify till the n-th confirmation. |  |
| **amount** | **String** | Defines the amount of coins sent with the confirmed transaction. |  |
| **unit** | **String** | Defines the unit of the transaction, e.g. Gwei. |  |
| **direction** | **String** | Defines whether the transaction is \&quot;incoming\&quot; or \&quot;outgoing\&quot;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressInternalTransactionConfirmedEachConfirmationDataItem.new(
  blockchain: ethereum,
  network: mainnet,
  address: 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2,
  mined_in_block: null,
  parent_transaction_id: 0x5fc77216fdfb8c966387030be7bda4bacce0232f7115722ef5b228a223974784,
  operation_id: call_1_0_1_0_3_0,
  current_confirmations: 2,
  target_confirmations: 3,
  amount: 0.05710541741945074,
  unit: ETH,
  direction: outgoing
)
```

