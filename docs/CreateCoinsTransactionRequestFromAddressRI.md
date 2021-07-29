# CryptoApis::CreateCoinsTransactionRequestFromAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. | [optional] |
| **callback_url** | **String** | Verified URL for sending callbacks | [optional] |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |
| **recipients** | [**Array&lt;CreateCoinsTransactionRequestFromAddressRIRecipients&gt;**](CreateCoinsTransactionRequestFromAddressRIRecipients.md) | Defines the destination for the transaction, i.e. the recipient(s). |  |
| **senders** | [**CreateCoinsTransactionRequestFromAddressRISenders**](CreateCoinsTransactionRequestFromAddressRISenders.md) |  |  |
| **transaction_request_status** | **String** | Defines the status of the transaction request, e.g. \&quot;created, \&quot;await_approval\&quot;, \&quot;pending\&quot;, \&quot;prepared\&quot;, \&quot;signed\&quot;, \&quot;broadcasted\&quot;, \&quot;success\&quot;, \&quot;failed\&quot;, \&quot;rejected\&quot;, mined\&quot;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateCoinsTransactionRequestFromAddressRI.new(
  callback_secret_key: yourSecretString,
  callback_url: https://example.com,
  fee_priority: standard,
  recipients: null,
  senders: null,
  transaction_request_status: created
)
```

