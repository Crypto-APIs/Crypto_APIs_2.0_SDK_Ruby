# CryptoApis::NewConfirmedInternalTransactionsAndEachConfirmationRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Defines the specific address of the internal transaction. |  |
| **allow_duplicates** | **Boolean** | Specifies a flag that permits or denies the creation of duplicate addresses. | [default to false] |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). |  |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. |  |
| **confirmations_count** | **Integer** | Represents the number of confirmations, i.e. the amount of blocks that have been built on top of this block. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::NewConfirmedInternalTransactionsAndEachConfirmationRBDataItem.new(
  address: 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2,
  allow_duplicates: true,
  callback_secret_key: yourSecretString,
  callback_url: https://example.com,
  confirmations_count: 3
)
```

