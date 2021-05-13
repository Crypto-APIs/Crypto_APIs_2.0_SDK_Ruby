# CryptoApis::AddressTokensTransactionConfirmedOmnilayertoken

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

instance = CryptoApis::AddressTokensTransactionConfirmedOmnilayertoken.new(
  name: TetherUS,
  property_id: null,
  transaction_type: #29,
  created_by_transaction_id: Simple Send, DEx Purchase etc.,
  amount: 250.531586
)
```

