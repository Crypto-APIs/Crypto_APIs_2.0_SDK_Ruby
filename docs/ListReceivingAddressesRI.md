# CryptoApis::ListReceivingAddressesRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Specifies the specific address&#39;s unique string value. |  |
| **created_timestamp** | **Integer** | Defines the specific UNIX time when the deposit address was created. |  |
| **label** | **String** | Represents a custom tag that customers can set up for their Wallets and addresses. E.g. custom label named \&quot;Special addresses\&quot;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListReceivingAddressesRI.new(
  address: 0xe2b5f5e885a268e4b6faae53f99a663f3bb3e036,
  created_timestamp: 346658753,
  label: yourStringHere
)
```

