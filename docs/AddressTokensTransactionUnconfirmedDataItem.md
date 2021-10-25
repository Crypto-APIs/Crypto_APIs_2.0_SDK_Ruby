# CryptoApis::AddressTokensTransactionUnconfirmedDataItem

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
require 'crypto_apis'

instance = CryptoApis::AddressTokensTransactionUnconfirmedDataItem.new(
  blockchain: ethereum,
  network: ropsten,
  address: 0x65b895f400dae5541d70cbbec07527210158f6e2,
  transaction_id: 0x76670f3bb45c09e69173fe74834face446edf251c5f02ec30384a0957fce482b,
  token_type: ERC-20,
  token: null,
  direction: incoming,
  first_seen_in_mempool_timestamp: 1210363220
)
```

