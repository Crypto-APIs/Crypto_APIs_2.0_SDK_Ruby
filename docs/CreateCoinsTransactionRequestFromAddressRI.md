# CryptoApis::CreateCoinsTransactionRequestFromAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |
| **recipients** | [**Array&lt;CreateCoinsTransactionRequestFromAddressRIRecipients&gt;**](CreateCoinsTransactionRequestFromAddressRIRecipients.md) | Defines the destination for the transaction, i.e. the recipient(s). |  |
| **senders** | [**CreateCoinsTransactionRequestFromAddressRISenders**](CreateCoinsTransactionRequestFromAddressRISenders.md) |  |  |
| **transaction_request_status** | **String** | Defines the status of the transaction request, e.g. \&quot;created, \&quot;await_approval\&quot;, \&quot;pending\&quot;, \&quot;prepared\&quot;, \&quot;signed\&quot;, \&quot;broadcasted\&quot;, \&quot;success\&quot;, \&quot;failed\&quot;, \&quot;rejected\&quot;, mined\&quot;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateCoinsTransactionRequestFromAddressRI.new(
  fee_priority: standard,
  recipients: null,
  senders: null,
  transaction_request_status: created
)
```

