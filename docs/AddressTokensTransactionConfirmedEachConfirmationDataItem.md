# CryptoApis::AddressTokensTransactionConfirmedEachConfirmationDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **address** | **String** | Defines the specific address to which the transaction has been sent. |  |
| **mined_in_block** | [**AddressTokensTransactionConfirmedEachConfirmationDataItemMinedInBlock**](AddressTokensTransactionConfirmedEachConfirmationDataItemMinedInBlock.md) |  |  |
| **transaction_id** | **String** | Defines the unique ID of the specific transaction, i.e. its identification number. |  |
| **current_confirmations** | **Integer** | Defines the number of currently received confirmations for the transaction. |  |
| **target_confirmations** | **Integer** | Defines the number of confirmation transactions requested as callbacks, i.e. the system can notify till the n-th confirmation. |  |
| **token_type** | **String** | Defines the type of token sent with the transaction, e.g. ERC 20. |  |
| **token** | [**AddressTokensTransactionConfirmedEachConfirmationToken**](AddressTokensTransactionConfirmedEachConfirmationToken.md) |  |  |
| **direction** | **String** | Defines whether the transaction is \&quot;incoming\&quot; or \&quot;outgoing\&quot;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressTokensTransactionConfirmedEachConfirmationDataItem.new(
  blockchain: bitcoin,
  network: testnet,
  address: 12dRugNcdxK39288NjcDV4GX7rMsKCGn6B,
  mined_in_block: null,
  transaction_id: c2163e3a0ac22a7256fd1e8b0391a27e3479723e72f5efed1676d0eea9ed6ef4,
  current_confirmations: 6,
  target_confirmations: 15,
  token_type: It could be one of: &quot;ethereumERC20Token&quot;, &quot;ethereumERC721Token&quot;, &quot;omniLayerToken&quot;,
  token: null,
  direction: incoming
)
```

