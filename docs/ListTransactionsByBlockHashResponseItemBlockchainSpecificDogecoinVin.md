# CryptoApis::ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoinVin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. | [optional] |
| **script_sig** | [**GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDogecoinScriptSig**](GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDogecoinScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Represents the sent/received amount. |  |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoinVin.new(
  addresses: null,
  coinbase: 037a3a2f,
  script_sig: null,
  sequence: 4294967295,
  txid: null,
  txinwitness: null,
  value: 0.0225,
  vout: 2
)
```

