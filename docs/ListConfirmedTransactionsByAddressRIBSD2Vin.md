# CryptoApis::ListConfirmedTransactionsByAddressRIBSD2Vin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** |  |  |
| **coinbase** | **String** | Represents the coinbase hex. | [optional] |
| **script_sig** | [**ListConfirmedTransactionsByAddressRIBSD2ScriptSig**](ListConfirmedTransactionsByAddressRIBSD2ScriptSig.md) |  |  |
| **sequence** | **String** | Represents the script sequence number. |  |
| **txid** | **String** | Represents the reference transaction identifier. | [optional] |
| **txinwitness** | **Array&lt;String&gt;** |  |  |
| **value** | **String** | Represents the sent/received amount. | [optional] |
| **vout** | **Integer** | It refers to the index of the output address of this transaction. The index starts from 0. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListConfirmedTransactionsByAddressRIBSD2Vin.new(
  addresses: null,
  coinbase: 039312070108,
  script_sig: null,
  sequence: 4294967295,
  txid: 54b8f0e54b4b66fab386c6f9dea76bfe06524ab71d1d42b321aea9a7fea50f48,
  txinwitness: null,
  value: 7.76021116,
  vout: 1
)
```

