# CryptoApis::AddressCoinsTransactionConfirmedDataItemMinedInBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Integer** | Defines the number of blocks in the blockchain preceding this specific block. |  |
| **hash** | **String** | Represents the hash of the block&#39;s header, i.e. an output that has a fixed length. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this transaction was mined in seconds since Unix Epoch time. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressCoinsTransactionConfirmedDataItemMinedInBlock.new(
  height: 667861,
  hash: b00d27cccd5e4f4fa1b28824d9a1e5fef88e6c37cdeb09e37eb39aa1d3d63448,
  timestamp: 1610365213
)
```

