# CryptoApis::CreateTokensTransactionRequestFromAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |
| **recipients** | [**Array&lt;CreateTokensTransactionRequestFromAddressRIRecipients&gt;**](CreateTokensTransactionRequestFromAddressRIRecipients.md) | Defines the destination for the transaction, i.e. the recipient(s). |  |
| **senders** | [**CreateTokensTransactionRequestFromAddressRISenders**](CreateTokensTransactionRequestFromAddressRISenders.md) |  |  |
| **token_type_specific_data** | [**CreateTokensTransactionRequestFromAddressRIS**](CreateTokensTransactionRequestFromAddressRIS.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateTokensTransactionRequestFromAddressRI.new(
  fee_priority: fast,
  recipients: 0x1316bea88fb7cd4ccc4a57e2f9f4f43d1a86ee59,
  senders: null,
  token_type_specific_data: null
)
```

