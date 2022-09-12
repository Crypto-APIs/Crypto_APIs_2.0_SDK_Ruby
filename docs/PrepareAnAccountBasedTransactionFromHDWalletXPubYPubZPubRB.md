# CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRB

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **data** | [**PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRBData**](PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRBData.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRB.new(
  context: yourExampleString,
  data: null
)
```
