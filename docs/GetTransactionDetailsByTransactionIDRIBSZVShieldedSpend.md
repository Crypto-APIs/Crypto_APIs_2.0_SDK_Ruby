# CryptoApis::GetTransactionDetailsByTransactionIDRIBSZVShieldedSpend

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **anchor** | **String** | Defines a Merkle tree root of a note commitment tree which uniquely identifies a note commitment tree state given the assumed security properties of the Merkle tree’s  hash function. |  |
| **cv** | **String** | Defines a value commitment to the value of the input note. |  |
| **nullifier** | **String** | Represents a sequence of nullifiers of the input notes. |  |
| **proof** | **String** | Represents the proof. |  |
| **rk** | **String** | Represents the randomized validating key for spendAuthSig. |  |
| **spend_auth_sig** | **String** | Used to prove knowledge of the spending key authorizing spending of an input note. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDRIBSZVShieldedSpend.new(
  anchor: d32ddbaf0d9dc8c10783c01fd9ba5bd0bc2e5efe3d1665d7d6771eb4393736b4,
  cv: 547a9cef4937304f97acacfcd9827b5aa1b2e5b1ae32e360fae828b955564a0e,
  nullifier: 30e41a9a6605933a75ec42439ab65eb347025002f6486e5549abb82438447dbe,
  proof: 030ff7fdb006db7f9acb0d2d6fae180e4395f0b6a979f6ddf48a349bc03ad2e7bb0324a5c3c7e6be131c34126ad22c74138f45f6f77bba706dfc87335a9adffcfef20a03e47751f403a37f9c5e1874aa50818c3eef09304c57c77b111057c09ed2112a7ed310ad285e0b778a4f44b654032b642b8b2df3be16bea011da7a2221bc0f0a0309f51f87caef2ea0f665f1a77d0dd50766d835d181e534818d8c3413b4d555990222574d9c92f81f17ff0af7a0583e76b3d3d4df2927561f37e57e15bc07b3f5d70306a9624c496d0bcb40085894bf32ef05db6469ec145c0ce5529e2697b6a0252c0216930cf7b3a7381762a6a91868e9d2bf823bfc7fb885de1fbd6a6cacae02db590318ffeb357ffd6832893ab0ccd3b15cef1df0fef45c091cf33fccee43a2834d44,
  rk: 39bdf742e16c4d1533a56df956bebe4d0214d4a361820db58a293847b6344d30,
  spend_auth_sig: 0f3b38a91fffbbf58f99d2d070002c0868be6804204b7bf4be0df47f62ee5e0d43222776a71fd7e1421ec54502194192d73681701b743ad427573ca18a95a405
)
```

