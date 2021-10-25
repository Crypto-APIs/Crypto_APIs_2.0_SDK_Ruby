# CryptoApis::AddressTokensTransactionConfirmedEachConfirmationOmni

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Specifies the name of the token. |  |
| **property_id** | **String** | Defines the ID of the property for Omni Layer. |  |
| **transaction_type** | **String** | Defines the type of the transaction. |  |
| **created_by_transaction_id** | **String** | The transaction ID used to create the token. |  |
| **amount** | **String** | Defines the amount of tokens sent with the confirmed transaction. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressTokensTransactionConfirmedEachConfirmationOmni.new(
  name: TetherUSDT,
  property_id: 31,
  transaction_type: Simple Send, DEx Purchase etc.,
  created_by_transaction_id: be5be71feac9e7019fbcdea5a87098a7862a0ee8c60bd5809b4d3b0cda940ddc,
  amount: 190.531725
)
```

