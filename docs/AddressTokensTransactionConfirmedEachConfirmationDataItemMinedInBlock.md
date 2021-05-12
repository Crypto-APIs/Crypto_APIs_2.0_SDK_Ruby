# OpenapiClient::AddressTokensTransactionConfirmedEachConfirmationDataItemMinedInBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Integer** | Defines the number of blocks in the blockchain preceding this specific block. |  |
| **hash** | **String** | Represents the hash of the block&#39;s header, i.e. an output that has a fixed length. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this transaction was mined in seconds since Unix Epoch time. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddressTokensTransactionConfirmedEachConfirmationDataItemMinedInBlock.new(
  height: 668198,
  hash: 17b76ef496153888aafc661c00b9f8bd8e86fed5f7670dd17ce5be57be961089,
  timestamp: 1110365209
)
```

