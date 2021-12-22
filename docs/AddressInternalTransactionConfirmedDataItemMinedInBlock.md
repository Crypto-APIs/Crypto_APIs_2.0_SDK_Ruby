# CryptoApis::AddressInternalTransactionConfirmedDataItemMinedInBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Integer** | Defines the number of blocks in the blockchain preceding this specific block. |  |
| **hash** | **String** | Represents the hash of the block&#39;s header, i.e. an output that has a fixed length. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this transaction was mined in seconds since Unix Epoch time. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressInternalTransactionConfirmedDataItemMinedInBlock.new(
  height: 12567093,
  hash: 0xa787415dc7c7025a43b87542a57872d1127f30f95daa87097cf5f26ef79d6950,
  timestamp: 1622797821
)
```

