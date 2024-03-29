# CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the specific amount of the transaction&#39;s destination. |  |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). | [optional] |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. &#x60;We support ONLY httpS type of protocol&#x60;. | [optional] |
| **note** | **String** | Represents an optional note to add a free text in, explaining or providing additional detail on the transaction request. | [optional] |
| **recipient_address** | **String** | Defines the specific recipient/destination address. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityRBDataItem.new(
  amount: 0.0006,
  callback_secret_key: yourSecretKey,
  callback_url: https://example.com,
  note: yourAdditionalInformationhere,
  recipient_address: TMVeigwYyuXJVHER4oA2yQzsFFSN2JfXkt
)
```

