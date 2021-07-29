# CryptoApis::CreateTokensTransactionRequestFromAddressRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the specific amount of the transaction. |  |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. | [optional] |
| **callback_url** | **String** | Verified URL for sending callbacks | [optional] |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |
| **recipient_address** | **String** | Defines the specific recipient address for the transaction. |  |
| **token_identifier** | **String** | Defines the specific token identifier. For Bitcoin-based transactions it should be the &#x60;propertyId&#x60; and for Ethereum-based transactions - the &#x60;contract&#x60;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateTokensTransactionRequestFromAddressRBDataItem.new(
  amount: 0.2,
  callback_secret_key: yourSecretString,
  callback_url: https://example.com,
  fee_priority: standard,
  recipient_address: 0xc065b539490f81b6c297c37b1925c3be2f190732,
  token_identifier: 1
)
```

