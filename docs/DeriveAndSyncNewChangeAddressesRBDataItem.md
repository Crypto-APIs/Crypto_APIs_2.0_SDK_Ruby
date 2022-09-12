# CryptoApis::DeriveAndSyncNewChangeAddressesRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extended_public_key** | **String** | Defines the account extended publicly known key which is used to derive all child public keys. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DeriveAndSyncNewChangeAddressesRBDataItem.new(
  extended_public_key: xpub6BuJ8T4xTEePRTWxEcyyZRHPRZw91GFRjuu4H1eNqNGDswpraD5Hthf7JBbK7iQayuLf2MbxT6MVrKGbY7HvBcQo937Qiwmxz7Fzy9S5y9q
)
```

