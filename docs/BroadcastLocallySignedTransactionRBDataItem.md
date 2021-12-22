# CryptoApis::BroadcastLocallySignedTransactionRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). | [optional] |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. | [optional] |
| **signed_transaction_hex** | **String** | Represents the signed transaction&#39;s specific hex. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::BroadcastLocallySignedTransactionRBDataItem.new(
  callback_secret_key: yourSecretString,
  callback_url: https://example.com,
  signed_transaction_hex: 0xf86a22827d00831e8480941b85a43e2e7f52e766ddfdfa2b901c42cb1201be8801b27f33b807c0008029a084ccbf02b27e0842fb1eda7a187a5589c3759be0e969e0ca989dc469a5e5e394a02e111e1156b197f1de4c1d9ba4af26e50665ea6d617d05b3e4047da12b915e69
)
```

