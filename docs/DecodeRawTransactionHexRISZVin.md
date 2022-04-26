# CryptoApis::DecodeRawTransactionHexRISZVin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the addresses which send/receive the amount. | [optional] |
| **input_hash** | **String** | Represents the transaction inputs&#39; indentifier. | [optional] |
| **output_index** | **String** | Defines the output index of a transaction. | [optional] |
| **script_sig** | [**DecodeRawTransactionHexRISZScriptSig**](DecodeRawTransactionHexRISZScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISZVin.new(
  address: t1ajyFP7GnauoDFaM8MqJx9ouQjKS3tbA7g,
  input_hash: 9dcaee77cd1806c4f9b0bac9ba17e4713fd04032f33be27b630ce499f7a35bd7,
  output_index: 1,
  script_sig: null,
  sequence: 4294967295
)
```

