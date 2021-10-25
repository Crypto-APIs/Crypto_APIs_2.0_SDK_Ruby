# CryptoApis::AddressTokensTransactionConfirmedDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;,  are test networks. |  |
| **address** | **String** | Defines the specific address to which the transaction has been sent. |  |
| **mined_in_block** | [**AddressTokensTransactionConfirmedDataItemMinedInBlock**](AddressTokensTransactionConfirmedDataItemMinedInBlock.md) |  |  |
| **transaction_id** | **String** | Defines the unique ID of the specific transaction, i.e. its identification number. |  |
| **token_type** | **String** | Defines the type of token sent with the transaction, e.g. ERC 20. |  |
| **token** | [**AddressTokensTransactionConfirmedToken**](AddressTokensTransactionConfirmedToken.md) |  |  |
| **direction** | **String** | Defines whether the transaction is \&quot;incoming\&quot; or \&quot;outgoing\&quot;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressTokensTransactionConfirmedDataItem.new(
  blockchain: ethereum,
  network: ropsten,
  address: 0x7495fede000c8a3b77eeae09cf70fa94cd2d53f5,
  mined_in_block: null,
  transaction_id: 0xbe38781783b1b9d480219255ff98e20335a39e13979a66112efa33f05fde0a33,
  token_type: ERC-20,
  token: null,
  direction: incoming
)
```

