# CryptoApis::NewConfirmedCoinsTransactionsForSpecificAmountRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_duplicates** | **Boolean** | Specifies a flag that permits or denies the creation of duplicate addresses. | [optional][default to false] |
| **amount_higher_than** | **Integer** | Represents a specific amount of coins after which the system have to send a callback to customers&#39; callbackUrl. |  |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs 2.0. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). | [optional] |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. &#x60;We support ONLY httpS type of protocol&#x60;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::NewConfirmedCoinsTransactionsForSpecificAmountRBDataItem.new(
  allow_duplicates: true,
  amount_higher_than: 2,
  callback_secret_key: yourSecretKey,
  callback_url: https://example.com
)
```

