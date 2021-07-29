# CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. | [optional] |
| **callback_url** | **String** | Verified URL for sending callbacks | [optional] |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |
| **recipients** | [**Array&lt;CreateCoinsTransactionRequestFromWalletRBDataItemRecipients&gt;**](CreateCoinsTransactionRequestFromWalletRBDataItemRecipients.md) | Defines the destination of the transaction, whether it is incoming or outgoing. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItem.new(
  callback_secret_key: yourSecretKey,
  callback_url: https://example.com,
  fee_priority: standard,
  recipients: null
)
```

