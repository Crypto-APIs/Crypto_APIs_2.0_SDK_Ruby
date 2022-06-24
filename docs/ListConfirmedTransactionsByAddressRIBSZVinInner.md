# CryptoApis::ListConfirmedTransactionsByAddressRIBSZVinInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. |  |
| **script_sig** | [**GetTransactionDetailsByTransactionIDRIBSZVinInnerScriptSig**](GetTransactionDetailsByTransactionIDRIBSZVinInnerScriptSig.md) |  |  |
| **sequence** | **Integer** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. |  |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Defines the specific amount. |  |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListConfirmedTransactionsByAddressRIBSZVinInner.new(
  addresses: null,
  coinbase: 02d3080c4e060000000000002f4e614e,
  script_sig: null,
  sequence: 4294967295,
  txid: 4b66461bf88b61e1e4326356534c135129defb504c7acb2fd6c92697d79eb250,
  txinwitness: null,
  value: 0.000144,
  vout: 1
)
```

