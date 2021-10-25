# CryptoApis::ListConfirmedTransactionsByAddressRIBSZVJoinSplit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **anchor** | **String** | Defines a Merkle tree root of a note commitment tree which uniquely identifies a note commitment tree state given the assumed security properties of the Merkle tree’s  hash function. |  |
| **cipher_texts** | **Array&lt;String&gt;** |  |  |
| **commitments** | **Array&lt;String&gt;** |  |  |
| **macs** | **Array&lt;String&gt;** |  |  |
| **nullifiers** | **Array&lt;String&gt;** |  |  |
| **one_time_pub_key** | **String** | Defines the one time public key. |  |
| **proof** | **String** | Defines the proof. |  |
| **random_seed** | **String** | Represents a 256-bit seed that must be chosen independently at random for each JoinSplit description. |  |
| **v_pub_new** | **String** | Defines the value that the joinSplit transfer will insert into the transparent transaction value pool. |  |
| **v_pub_old** | **String** | Defines the value that the joinSplit transfer will remove from the transparent transaction value pool. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListConfirmedTransactionsByAddressRIBSZVJoinSplit.new(
  anchor: d32ddbaf0d9dc8c10783c01fd9ba5bd0bc2e5efe3d1665d7d6771eb4393736b4,
  cipher_texts: null,
  commitments: null,
  macs: null,
  nullifiers: null,
  one_time_pub_key: 0a2e7ba03903480af852cb47d8ce76eb6546aef69bdb35b28b8ae815012d4d13,
  proof: 8dd9c988c9f337bd55c07fa9e2fa405cf4dda2cb915214fc0b5924870eed0f0187a0db001b5d8ea43a537e423d91d0fc868a456fa3e0bf9e99d1b04f43c6983a05a99458a69903add73ccaa4177844df9056d40c5a71ae14a70835cb30ca7d810fa1d48c9180ddec2ca1cecfaa8706ab514d6e8fe2dd228d7dc012d9407517523b774107a6a78dc972b175b94d1681b980e2b9ba7d39f880973787080a12bf14dc3f038333245a60bbcd9cb1fe2baba30ed083535752cc26ea0c57134e0c774e,
  random_seed: 05eb35ce1cec5f5824f708ee9d95467d2318d24c8d4220040df92d48b1f182e8,
  v_pub_new: 50.02989193,
  v_pub_old: 0
)
```

