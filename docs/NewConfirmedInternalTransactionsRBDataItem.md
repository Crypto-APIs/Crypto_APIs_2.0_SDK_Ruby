# CryptoApis::NewConfirmedInternalTransactionsRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Defines the specific address of the internal transaction. |  |
| **allow_duplicates** | **Boolean** | Flag that permits or denies creation of duplicates | [default to false] |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). |  |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. &#x60;We support ONLY httpS type of protocol&#x60;. |  |
| **receive_callback_on** | **Integer** | Represents the exact confirmation, on which the user wants to receive callback. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::NewConfirmedInternalTransactionsRBDataItem.new(
  address: 0xbcc817f057950b0df41206c5d7125e6225cae18e,
  allow_duplicates: true,
  callback_secret_key: yourSecretKey,
  callback_url: https://example.com,
  receive_callback_on: 3
)
```

