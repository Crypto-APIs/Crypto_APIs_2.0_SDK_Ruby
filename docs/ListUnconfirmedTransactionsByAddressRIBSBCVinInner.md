# CryptoApis::ListUnconfirmedTransactionsByAddressRIBSBCVinInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **script_sig** | [**GetTransactionDetailsByTransactionIDRIBSBVinInnerScriptSig**](GetTransactionDetailsByTransactionIDRIBSBVinInnerScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. |  |
| **txid** | **String** | String representation of the txid |  |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Represents the sent/received amount. |  |
| **vout** | **Integer** | Defines the vout of the transaction output, i.e. which output to spend. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRIBSBCVinInner.new(
  addresses: null,
  script_sig: null,
  sequence: 4294967295,
  txid: caee978cae255bbe303ac86152679e46113a8b12925aa3afaa312d89d11ccbf8,
  txinwitness: null,
  value: 0.00873472,
  vout: 1
)
```

