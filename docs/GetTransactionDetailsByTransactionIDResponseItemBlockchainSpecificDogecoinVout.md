# OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDogecoinVout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDogecoinScriptPubKey**](GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDogecoinScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDogecoinVout.new(
  is_spent: false,
  script_pub_key: null,
  value: 11.25
)
```

