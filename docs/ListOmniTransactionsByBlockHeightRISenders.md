# CryptoApis::ListOmniTransactionsByBlockHeightRISenders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the hash of the address that provides the funds. |  |
| **amount** | **String** | Defines the amount of the sent funds as a string. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListOmniTransactionsByBlockHeightRISenders.new(
  address: 1MRyVg2dyZNEFDy8G6i1hNcerkeZiXYK4S,
  amount: 0.1
)
```

