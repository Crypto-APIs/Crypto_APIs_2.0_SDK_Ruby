# CryptoApis::DeriveAndSyncNewReceivingAddressesRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extended_public_key** | **String** | Defines the account extended publicly known key which is used to derive all child public keys. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DeriveAndSyncNewReceivingAddressesRBDataItem.new(
  extended_public_key: xpub6DSqNgZke91RZBXk9s8tBknGPiVB7AQqVyxHCLEM49D3VGeMWg6qmSDruSn7SgQApVH1M8cSvjXfDmhRysDt9hZWFAMcZf4X1DAzd23G4ZQ
)
```

