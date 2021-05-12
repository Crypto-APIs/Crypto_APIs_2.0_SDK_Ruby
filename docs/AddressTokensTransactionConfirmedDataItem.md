# OpenapiClient::AddressTokensTransactionConfirmedDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **address** | **String** | Defines the specific address to which the transaction has been sent. |  |
| **mined_in_block** | [**AddressTokensTransactionConfirmedDataItemMinedInBlock**](AddressTokensTransactionConfirmedDataItemMinedInBlock.md) |  |  |
| **transaction_id** | **String** | Defines the unique ID of the specific transaction, i.e. its identification number. |  |
| **token_type** | **String** | Defines the type of token sent with the transaction, e.g. ERC 20. |  |
| **token** | [**AddressTokensTransactionConfirmedToken**](AddressTokensTransactionConfirmedToken.md) |  |  |
| **direction** | **String** | Defines whether the transaction is \&quot;incoming\&quot; or \&quot;outgoing\&quot;. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddressTokensTransactionConfirmedDataItem.new(
  blockchain: bitcoin,
  network: testnet,
  address: 16sAXi1jxhxKCfY84hubDdnFNaAhqd5t49,
  mined_in_block: null,
  transaction_id: 269b0de44db95beddb6aecc520b375ba8f91f3dc5558a24aa4c26979eb00c7e2,
  token_type: ethereumERC20Token,
  token: null,
  direction: incoming
)
```

