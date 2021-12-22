# CryptoApis::GetBlockDetailsByBlockHeightFromCallbackRIBSE

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **extra_data** | **String** | Represents any data that can be included by the miner in the block. |  |
| **gas_limit** | **String** | Defines the total gas limit of all transactions in the block. |  |
| **gas_used** | **String** | Represents the total amount of gas used by all transactions in this block. |  |
| **mined_in_seconds** | **Integer** | Specifies the amount of time required for the block to be mined in seconds. |  |
| **nonce** | **String** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |
| **sha3_uncles** | **String** | Defines the combined hash of all uncles for a given parent. |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **total_difficulty** | **String** | Defines the total difficulty of the chain until this block, i.e. how difficult it is for a specific miner to mine a new block. |  |
| **uncles** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHeightFromCallbackRIBSE.new(
  difficulty: 209515044.4071968,
  extra_data: 0x7070796520e4b883e5bda9e7a59ee4bb99e9b1bc080c,
  gas_limit: 12499653,
  gas_used: 12488144,
  mined_in_seconds: 17,
  nonce: 16,
  sha3_uncles: 0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347,
  size: 7105,
  total_difficulty: 4794080996481072,
  uncles: null
)
```

