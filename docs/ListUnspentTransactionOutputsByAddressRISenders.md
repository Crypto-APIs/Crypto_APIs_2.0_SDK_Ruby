# CryptoApis::ListUnspentTransactionOutputsByAddressRISenders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents a list of sender addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **amount** | **String** | Represents the total amount sent by this address including the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnspentTransactionOutputsByAddressRISenders.new(
  address: mwDuExdjRewYKYoR454sZGvd15LnJVsmoR,
  amount: 0.00873472
)
```
