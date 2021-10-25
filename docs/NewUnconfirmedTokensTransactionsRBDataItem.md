# CryptoApis::NewUnconfirmedTokensTransactionsRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address of the transaction, per which the result is returned. |  |
| **allow_duplicates** | **Boolean** | Specifies a flag that permits or denies the creation of duplicate addresses. | [optional][default to false] |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). | [optional] |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::NewUnconfirmedTokensTransactionsRBDataItem.new(
  address: 0x033ef6db9fbd0ee60e2931906b987fe0280471a0,
  allow_duplicates: true,
  callback_secret_key: yourSecretKey,
  callback_url: http://example.com
)
```

