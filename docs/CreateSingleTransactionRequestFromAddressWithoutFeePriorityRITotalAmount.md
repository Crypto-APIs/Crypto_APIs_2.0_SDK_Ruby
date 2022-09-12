# CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityRITotalAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit** | **String** | Defines the unit of the total amount transacted. | [optional] |
| **value** | **String** | Total amount of the transaction | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityRITotalAmount.new(
  unit: TRX,
  value: 0.0006
)
```

