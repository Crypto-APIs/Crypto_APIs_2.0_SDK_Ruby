# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSZVinInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **script_sig** | [**GetTransactionDetailsByTransactionIDRIBSZVinInnerScriptSig**](GetTransactionDetailsByTransactionIDRIBSZVinInnerScriptSig.md) |  |  |
| **sequence** | **Integer** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. |  |
| **txinwitness** | **Array&lt;String&gt;** |  | [optional] |
| **value** | **String** | Defines the specific amount. |  |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSZVinInner.new(
  addresses: null,
  script_sig: null,
  sequence: 4294967295,
  txid: 4b66461bf88b61e1e4326356534c135129defb504c7acb2fd6c92697d79eb250,
  txinwitness: null,
  value: 0.000144,
  vout: 1
)
```

