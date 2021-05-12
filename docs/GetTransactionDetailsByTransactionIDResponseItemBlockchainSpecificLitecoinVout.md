# OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificLitecoinVout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificLitecoinScriptPubKey**](GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificLitecoinScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificLitecoinVout.new(
  is_spent: false,
  script_pub_key: null,
  value: 0.03505975
)
```

