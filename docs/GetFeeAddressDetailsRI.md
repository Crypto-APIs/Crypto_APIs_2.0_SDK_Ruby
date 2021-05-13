# CryptoApis::GetFeeAddressDetailsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the specific fee address, which is always automatically generated. Users must fund it. |  |
| **balance** | [**GetFeeAddressDetailsRIBalance**](GetFeeAddressDetailsRIBalance.md) |  |  |
| **minimum_transfer_amount** | **String** | Represents the minimum transfer amount of the currency in the &#x60;fromAddress&#x60; that can be allowed for an automatic forwarding. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetFeeAddressDetailsRI.new(
  address: 0xe2b5f5e885a268e4b6faae53f99a663f3bb3e036,
  balance: null,
  minimum_transfer_amount: 0.0002
)
```

