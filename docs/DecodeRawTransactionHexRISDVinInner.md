# CryptoApis::DecodeRawTransactionHexRISDVinInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address which send/receive the amount | [optional] |
| **input_hash** | **String** | Represents the transaction inputs&#39; indentifier. | [optional] |
| **output_index** | **String** | Defines the output index of a transaction. | [optional] |
| **script_sig** | [**DecodeRawTransactionHexRISDVinInnerScriptSig**](DecodeRawTransactionHexRISDVinInnerScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISDVinInner.new(
  address: 7W7gfYstwDR6a2ZCxEidAuvshyomqJ8yXT,
  input_hash: 5061c34b1c1f40a9328c168f1070915bb9c450dbf2ecd566ae2e34e80651ecb4,
  output_index: 1,
  script_sig: null,
  sequence: 4294967295,
  txinwitness: null
)
```

