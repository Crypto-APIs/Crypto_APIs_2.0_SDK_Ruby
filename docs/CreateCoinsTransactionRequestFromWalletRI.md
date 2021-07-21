# CryptoApis::CreateCoinsTransactionRequestFromWalletRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |
| **recipients** | [**Array&lt;CreateCoinsTransactionRequestFromWalletRIRecipients&gt;**](CreateCoinsTransactionRequestFromWalletRIRecipients.md) | Defines the destination of the transaction, whether it is incoming or outgoing. |  |
| **total_transaction_amount** | **String** | Represents the specific amount of the transaction. |  |
| **transaction_request_status** | **String** | Defines the status of the transaction, e.g. \&quot;created, \&quot;await_approval\&quot;, \&quot;pending\&quot;, \&quot;prepared\&quot;, \&quot;signed\&quot;, \&quot;broadcasted\&quot;, \&quot;success\&quot;, \&quot;failed\&quot;, \&quot;rejected\&quot;, mined\&quot;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateCoinsTransactionRequestFromWalletRI.new(
  fee_priority: standard,
  recipients: null,
  total_transaction_amount: 0.001,
  transaction_request_status: created
)
```

