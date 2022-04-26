# CryptoApis::CreateCoinsTransactionRequestFromAddressRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the specific amount of the transaction. |  |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). | [optional] |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. &#x60;We support ONLY httpS type of protocol&#x60;. | [optional] |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |
| **note** | **String** | Represents an optional note to add a free text in, explaining or providing additional detail on the transaction request. | [optional] |
| **recipient_address** | **String** | Defines the specific recipient address for the transaction. For XRP we also support the X-address format. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateCoinsTransactionRequestFromAddressRBDataItem.new(
  amount: 0.2,
  callback_secret_key: yourSecretString,
  callback_url: https://example.com,
  fee_priority: slow,
  note: yourAdditionalInformationhere,
  recipient_address: 0xc065b539490f81b6c297c37b1925c3be2f190732
)
```

