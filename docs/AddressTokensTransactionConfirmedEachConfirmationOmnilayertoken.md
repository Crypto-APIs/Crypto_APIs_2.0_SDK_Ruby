# OpenapiClient::AddressTokensTransactionConfirmedEachConfirmationOmnilayertoken

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
require 'openapi_client'

instance = OpenapiClient::AddressTokensTransactionConfirmedEachConfirmationOmnilayertoken.new(
  name: TetherUS,
  property_id: #24,
  transaction_type: Simple Send, DEx Purchase etc.,
  created_by_transaction_id: 7ed3694e8a4fa8d3ec5c75eb6789492c69e65511522b220e94ab51da2b6dd53c,
  amount: 190.531725
)
```

