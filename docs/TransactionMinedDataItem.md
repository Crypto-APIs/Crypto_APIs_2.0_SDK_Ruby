# OpenapiClient::TransactionMinedDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **transaction_id** | **String** | Defines the unique ID of the specific transaction, i.e. its identification number. |  |
| **mined_in_block** | [**TransactionMinedDataItemMinedInBlock**](TransactionMinedDataItemMinedInBlock.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionMinedDataItem.new(
  blockchain: bitcoin,
  network: testnet,
  transaction_id: e6439461e5bf8920e75740896d4b47730b844837295e8c3f2dbf441542aebcb6,
  mined_in_block: null
)
```

