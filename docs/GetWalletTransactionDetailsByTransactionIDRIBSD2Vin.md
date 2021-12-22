# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSD2Vin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. | [optional] |
| **script_sig** | [**GetTransactionDetailsByTransactionIDRIBSD2ScriptSig**](GetTransactionDetailsByTransactionIDRIBSD2ScriptSig.md) |  |  |
| **sequence** | **Integer** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  | [optional] |
| **value** | **String** | Represents the sent/received amount. | [optional] |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSD2Vin.new(
  addresses: null,
  coinbase: 03dcf4150c0b2f454233322f414431322f04da88506004565cc01f0c3130fc5f4e050000000000000a626368706f6f6c172f20626974636f696e636173682e6e6574776f726b202f,
  script_sig: null,
  sequence: 4294967295,
  txid: f60cf447159b08e9857cbc96688ba80beff23c6f032f6545044ab40a771b15f5,
  txinwitness: null,
  value: 0.2354,
  vout: 1
)
```

