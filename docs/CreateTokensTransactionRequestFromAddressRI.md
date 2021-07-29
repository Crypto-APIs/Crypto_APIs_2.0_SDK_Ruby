# CryptoApis::CreateTokensTransactionRequestFromAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. |  |
| **callback_url** | **String** | Verified URL for sending callbacks |  |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |
| **recipients** | [**Array&lt;CreateTokensTransactionRequestFromAddressRIRecipients&gt;**](CreateTokensTransactionRequestFromAddressRIRecipients.md) | Defines the destination for the transaction, i.e. the recipient(s). |  |
| **senders** | [**CreateTokensTransactionRequestFromAddressRISenders**](CreateTokensTransactionRequestFromAddressRISenders.md) |  |  |
| **token_type_specific_data** | [**CreateTokensTransactionRequestFromAddressRIS**](CreateTokensTransactionRequestFromAddressRIS.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateTokensTransactionRequestFromAddressRI.new(
  callback_secret_key: yourSecretString,
  callback_url: https://example.com,
  fee_priority: fast,
  recipients: 0x1316bea88fb7cd4ccc4a57e2f9f4f43d1a86ee59,
  senders: null,
  token_type_specific_data: null
)
```

