# CryptoApis::TransactionMinedDataItemMinedInBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Integer** | Defines the number of blocks in the blockchain preceding this specific block. |  |
| **hash** | **String** | Represents the hash of the block&#39;s header, i.e. an output that has a fixed length. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this transaction was mined in seconds since Unix Epoch time. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::TransactionMinedDataItemMinedInBlock.new(
  height: 667900,
  hash: e9da0c8ce1861050c20f40fb660df4d13399f50b882e85bcd98126eb1173cc50,
  timestamp: 1610355613
)
```

