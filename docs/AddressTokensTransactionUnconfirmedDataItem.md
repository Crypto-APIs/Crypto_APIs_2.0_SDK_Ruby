# OpenapiClient::AddressTokensTransactionUnconfirmedDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **address** | **String** | Defines the specific address to which the token transaction has been sent and is pending confirmation. |  |
| **transaction_id** | **String** | Defines the unique ID of the specific transaction, i.e. its identification number. |  |
| **token_type** | **String** | Defines the type of token sent with the transaction, e.g. ERC 20. |  |
| **token** | [**AddressTokensTransactionUnconfirmedToken**](AddressTokensTransactionUnconfirmedToken.md) |  |  |
| **direction** | **String** | Defines whether the transaction is \&quot;incoming\&quot; or \&quot;outgoing\&quot;. |  |
| **first_seen_in_mempool_timestamp** | **Integer** | Defines the exact time the transaction has been first accepted into the mempool to await confirmation as timestamp. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddressTokensTransactionUnconfirmedDataItem.new(
  blockchain: bitcoin,
  network: testnet,
  address: bc1qj9k6mryqfyl9dghdwnxx29660nws90mfarld46,
  transaction_id: ade174e0ff264094bfcf4a83789d3aa3e7d7ab423ffa89e21871aad849f302db,
  token_type: ethereumERC20Token,
  token: null,
  direction: incoming,
  first_seen_in_mempool_timestamp: 1210363220
)
```

