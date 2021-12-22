# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSLVin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. |  |
| **script_sig** | [**GetWalletTransactionDetailsByTransactionIDRIBSLScriptSig**](GetWalletTransactionDetailsByTransactionIDRIBSLScriptSig.md) |  |  |
| **sequence** | **Integer** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. |  |
| **txinwitness** | **Array&lt;String&gt;** |  | [optional] |
| **value** | **String** | Represents the sent/received amount. |  |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBSLVin.new(
  addresses: null,
  coinbase: 0399d620046183f4502cfabe6d6d54cff85e53693837dc613bc4cc4b78986c2193a4e2902e3da62aa311957f50844000000000000000042f4c502f08220000b0e1110000,
  script_sig: null,
  sequence: 4294967294,
  txid: 1db56e1e8dfab84f6f0e33f8ddb160c9b16286471a3b486d79ea85bcf4d076b2,
  txinwitness: null,
  value: 0.0225,
  vout: 1
)
```

