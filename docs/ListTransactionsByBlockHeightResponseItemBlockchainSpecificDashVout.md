# OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecificDashVout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**ListTransactionsByBlockHeightResponseItemBlockchainSpecificDashScriptPubKey**](ListTransactionsByBlockHeightResponseItemBlockchainSpecificDashScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecificDashVout.new(
  is_spent: false,
  script_pub_key: null,
  value: Represents the sent/received amount.
)
```

