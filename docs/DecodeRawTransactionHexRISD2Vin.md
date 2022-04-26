# CryptoApis::DecodeRawTransactionHexRISD2Vin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the addresses which send/receive the amount. | [optional] |
| **input_hash** | **String** | Represents the transaction inputs&#39; indentifier. | [optional] |
| **output_index** | **String** | Defines the output index of a transaction. | [optional] |
| **script_sig** | [**DecodeRawTransactionHexRISD2ScriptSig**](DecodeRawTransactionHexRISD2ScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISD2Vin.new(
  address: DPzdWPsKaGvRn3AH7WjBpnNVHhAPELDY4o,
  input_hash: 746b56225c5eee8c50c0bedd885d18d3fda37b846d59eb7434b5e365e73e4b60,
  output_index: 2,
  script_sig: null,
  sequence: 4294967295,
  txinwitness: null
)
```

