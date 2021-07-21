# CryptoApis::NewUnconfirmedCoinsTransactionsRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address of the transaction, per which the result is returned. |  |
| **allow_duplicates** | **Boolean** | Specifies a flag that permits or denies the creation of duplicate addresses. | [optional][default to false] |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs 2.0. | [optional] |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::NewUnconfirmedCoinsTransactionsRBDataItem.new(
  address: mho4jHBcrNCncKt38trJahXakuaBnS7LK5,
  allow_duplicates: true,
  callback_secret_key: yourSecretKey,
  callback_url: http://example.com
)
```
