# CryptoApis::CreateCoinsTransactionRequestFromWalletRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. | [optional] |
| **callback_url** | **String** | Verified URL for sending callbacks | [optional] |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |
| **recipients** | [**Array&lt;CreateCoinsTransactionRequestFromWalletRIRecipients&gt;**](CreateCoinsTransactionRequestFromWalletRIRecipients.md) | Defines the destination of the transaction, whether it is incoming or outgoing. |  |
| **total_transaction_amount** | **String** | Represents the specific amount of the transaction. |  |
| **transaction_request_status** | **String** | Defines the status of the transaction, e.g. \&quot;created, \&quot;await_approval\&quot;, \&quot;pending\&quot;, \&quot;prepared\&quot;, \&quot;signed\&quot;, \&quot;broadcasted\&quot;, \&quot;success\&quot;, \&quot;failed\&quot;, \&quot;rejected\&quot;, mined\&quot;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateCoinsTransactionRequestFromWalletRI.new(
  callback_secret_key: yourSecretKey,
  callback_url: https://example.com,
  fee_priority: standard,
  recipients: null,
  total_transaction_amount: 0.001,
  transaction_request_status: created
)
```

