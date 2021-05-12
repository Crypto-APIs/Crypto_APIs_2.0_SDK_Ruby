# OpenapiClient::AddressCoinsTransactionConfirmedEachConfirmationDataItemMinedInBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Integer** | Defines the number of blocks in the blockchain preceding this specific block. |  |
| **hash** | **String** | Represents the hash of the block&#39;s header, i.e. an output that has a fixed length. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this transaction was mined in seconds since Unix Epoch time. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddressCoinsTransactionConfirmedEachConfirmationDataItemMinedInBlock.new(
  height: 667754,
  hash: dfe45f6724b550c281107ffaa5880cb280878fb4dbaa742aa21449f3d2340c13,
  timestamp: 1610365314
)
```

