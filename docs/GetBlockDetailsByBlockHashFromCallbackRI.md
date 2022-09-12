# CryptoApis::GetBlockDetailsByBlockHashFromCallbackRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** | Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **height** | **Integer** | Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;. |  |
| **previous_block_hash** | **String** | Represents the hash of the previous block, also known as the parent block. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this block was mined in Unix Timestamp. |  |
| **transactions_count** | **Integer** | Represents the total number of all transactions as part of this block. |  |
| **difficulty** | **String** | Represents a mathematical value of how hard it is to find a valid hash for this block. |  |
| **extra_data** | **String** | Represents any data that can be included by the miner in the block. |  |
| **gas_limit** | **String** | Represents the amount of gas used by this specific transaction alone. |  |
| **gas_used** | **String** | Represents the exact unit of gas that was used for the transaction. |  |
| **mined_in_seconds** | **Integer** | Specifies the amount of time required for the block to be mined in seconds. |  |
| **nonce** | **String** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |
| **sha3_uncles** | **String** | Defines the combined hash of all uncles for a given parent. |  |
| **size** | **Integer** | Represents the total size of the block in Bytes. |  |
| **total_difficulty** | **String** | Defines the total difficulty of the chain until this block, i.e. how difficult it is for a specific miner to mine a new block. |  |
| **uncles** | **Array&lt;String&gt;** |  |  |
| **blockchain_specific** | [**GetBlockDetailsByBlockHashFromCallbackRIBS**](GetBlockDetailsByBlockHashFromCallbackRIBS.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetBlockDetailsByBlockHashFromCallbackRI.new(
  hash: 00000000000000000002ad6f9c74faf503bb055c54e0d0746ef34f888f95890f,
  height: 673852,
  previous_block_hash: 00000000000000000008953625613e60b56194ea31f07aad43c7505fbddce77f,
  timestamp: 1610365615,
  transactions_count: 2755,
  difficulty: 21448277761059.71,
  extra_data: 0x7070796520e4b883e5bda9e7a59ee4bb99e9b1bc080c,
  gas_limit: 552020,
  gas_used: 24673,
  mined_in_seconds: 17,
  nonce: 16,
  sha3_uncles: 0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347,
  size: 1408113,
  total_difficulty: null,
  uncles: null,
  blockchain_specific: null
)
```

