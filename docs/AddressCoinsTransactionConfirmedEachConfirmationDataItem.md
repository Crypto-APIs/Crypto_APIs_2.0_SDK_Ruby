# OpenapiClient::AddressCoinsTransactionConfirmedEachConfirmationDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **address** | **String** | Defines the specific address to which the transaction has been sent. |  |
| **mined_in_block** | [**AddressCoinsTransactionConfirmedEachConfirmationDataItemMinedInBlock**](AddressCoinsTransactionConfirmedEachConfirmationDataItemMinedInBlock.md) |  |  |
| **transaction_id** | **String** | Defines the unique ID of the specific transaction, i.e. its identification number. |  |
| **current_confirmations** | **Integer** | Defines the number of currently received confirmations for the transaction. |  |
| **target_confirmations** | **Integer** | Defines the number of confirmation transactions requested as callbacks, i.e. the system can notify till the n-th confirmation. |  |
| **amount** | **String** | Defines the amount of coins sent with the confirmed transaction. |  |
| **unit** | **String** | Defines the unit of the transaction, e.g. BTC. |  |
| **direction** | **String** | Defines whether the transaction is \&quot;incoming\&quot; or \&quot;outgoing\&quot;. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddressCoinsTransactionConfirmedEachConfirmationDataItem.new(
  blockchain: bitcoin,
  network: testnet,
  address: 15282N4BYEwYh3j1dTgJu64Ey5qWn9Po9F,
  mined_in_block: null,
  transaction_id: cbd3dea703bd2bc78bca69ee61ca14e6ffcdd809d07ebbc3b8fea3c30ea38f33,
  current_confirmations: 8,
  target_confirmations: 12,
  amount: 0.0611,
  unit: BTC,
  direction: incoming
)
```

