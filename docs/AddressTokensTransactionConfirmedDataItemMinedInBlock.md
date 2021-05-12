# OpenapiClient::AddressTokensTransactionConfirmedDataItemMinedInBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Integer** | Defines the number of blocks in the blockchain preceding this specific block. |  |
| **hash** | **String** | Represents the hash of the block&#39;s header, i.e. an output that has a fixed length. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this transaction was mined in seconds since Unix Epoch time. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddressTokensTransactionConfirmedDataItemMinedInBlock.new(
  height: 657915,
  hash: 269b0de44db95beddb6aecc520b375ba8f91f3dc5558a24aa4c26979eb00c7e2,
  timestamp: 1586365500
)
```

