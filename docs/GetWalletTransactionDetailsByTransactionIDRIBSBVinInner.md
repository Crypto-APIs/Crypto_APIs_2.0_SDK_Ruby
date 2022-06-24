# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSBVinInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. | [optional] |
| **script_sig** | [**GetWalletTransactionDetailsByTransactionIDRIBSBVinInnerScriptSig**](GetWalletTransactionDetailsByTransactionIDRIBSBVinInnerScriptSig.md) |  |  |
| **sequence** | **Integer** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. |  |
| **txinwitness** | **Array&lt;String&gt;** |  | [optional] |
| **value** | **String** | Represents the sent/received amount. | [optional] |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSBVinInner.new(
  addresses: null,
  coinbase: 0399991d20706f6f6c2e656e6a6f79626f646965732e636f6d20393963336532346234374747a53e994c4a000001,
  script_sig: null,
  sequence: 4294967295,
  txid: 48bd74754b71181d4d2092fc24477f89fa7dfea8059b140a179bac2267048832,
  txinwitness: null,
  value: 0.00001681,
  vout: 0
)
```

