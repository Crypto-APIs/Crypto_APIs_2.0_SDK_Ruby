# CryptoApis::ListUnconfirmedTransactionsByAddressRISendersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address of the sender. |  |
| **amount** | **String** | Represents the total amount sent by this address including the fee. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRISendersInner.new(
  address: n1eypQAVqQMmDuXffCF3LPXREmF71ecuai,
  amount: 0.19163773
)
```

