# CryptoApis::AddressInternalTransactionConfirmedEachConfirmationDataItemMinedInBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Integer** | Defines the number of blocks in the blockchain preceding this specific block. |  |
| **hash** | **String** | Represents the hash of the block&#39;s header, i.e. an output that has a fixed length. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this transaction was mined in seconds since Unix Epoch time. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressInternalTransactionConfirmedEachConfirmationDataItemMinedInBlock.new(
  height: 12566992,
  hash: 0x936a34ef544e6fc9fc5f68fb086b9e8ea0e5eca52cb45cb67b27d174bccc35a5,
  timestamp: 1622796751
)
```

