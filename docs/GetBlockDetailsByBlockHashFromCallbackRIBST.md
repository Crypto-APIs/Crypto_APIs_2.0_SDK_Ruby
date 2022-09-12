# CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBST

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bandwidth_used** | **String** | Represents the bandwidth used for the transaction. |  |
| **burned_trx** | **String** | Represents the block burned TRX. |  |
| **energy_used** | **String** | Representats the used energy for the transaction. |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHashFromCallbackRIBST.new(
  bandwidth_used: null,
  burned_trx: null,
  energy_used: null,
  size: null
)
```

