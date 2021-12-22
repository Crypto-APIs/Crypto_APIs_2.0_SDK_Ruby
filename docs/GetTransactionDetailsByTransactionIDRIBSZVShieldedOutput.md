# CryptoApis::GetTransactionDetailsByTransactionIDRIBSZVShieldedOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cmu** | **String** | Represents the 𝑢-coordinate of the note commitment for the output note. |  |
| **cv** | **String** | Defines a value commitment to the value of the input note. |  |
| **enc_cipher_text** | **String** | Represents a ciphertext component for the encrypted output note. |  |
| **ephemeral_key** | **String** | Represents an encoding of an ephemeral Jubjub public key. |  |
| **out_cipher_text** | **String** | Represents a ciphertext component that allows the holder of the outgoing cipher key to recover the diversified transmission key pkd and ephemeral private key esk, hence the entire note plaintext. |  |
| **proof** | **String** | Represents the proof. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDRIBSZVShieldedOutput.new(
  cmu: 4eb188a762d4fd4358ae70b2dac1b6a596ad653be92471792bf4b157850a1011,
  cv: 547a9cef4937304f97acacfcd9827b5aa1b2e5b1ae32e360fae828b955564a0e,
  enc_cipher_text: a6c0084214eef0058f4b51c1e25b4c05ac282fec0edc5938c4283aa2a6d7c426d7a3c927d11596f81780b18c0eee90848702eb7fa512f7a6386e52d9bc17d5bc0e20bc24608ece560a314570aaf4c095bc988a9a0f8ef72ed91d0eee7d927eb37428c62af28c6a5c9379ac48aef3cdfb9b83eed77edde50acab7615f8fecdb1f24500fab6b8a72440e6fadbf0e6ad0ff8989df4d27bb2bc56c3a99c6da2e82c68a319857902842cf15aec180b6ea0ff3ebedf1cfd02b434ac715bc4afb17f67286d5708864a7aabb461461f080bbcf0315c38d782be6d0aae7ac3beb6574babf12c9182574d6c6e900888b5c4da40952c403b7d4ebe96e051893e388bcb7026d839e1d49ddbb132706fbadae1ef272d7e8dbf297dfbe7867651cfd843e52239d8270c1b6d46f2589643a5a325018f2d0b82b53955a5a3c5c3cecf8f0829594777887028456bd708c7c4ad88e588609c1b33d9060d8cf0015bfc18676ebc7022956ab6d4c6aae24550422e702733da234e2ce6f5adbafc4e2d97ae9846febddeacfaefda7f186b7e8182f4692c34bff4bd31eeeab15c5b5f7a41c93acae05a4f3c378fbe6cf33ab3628f4c5b8e04b9368ec69ea1c7c816c803d9ef7bbafe232f43959c7b49dd7c3328dc028040f440fd3cb2e08449db77c191288f120c065870d800ebdca234e6c2ba1fa6d44d04f4fed2e41b1c65d273b0ce58287274e8dc71a2a174244f026971bb9c698e7f7964eec615515910c627a201b52c3c2c504623ac45f5606d0400120bd5b6e1f431775fe92fb2c9eb5546c9dc12693ee9b679e49fce2cf71,
  ephemeral_key: 04c59e908296aeac1160ba8def90916988bf8389564343e6fb3b9e52c27fba0a,
  out_cipher_text: b3f02b333a61b69e63dfeaf1ad430534985cd6958abe92664abe85449ca68b5c145f536e9a636a881aab5e314b4f550b2b8f5600dc1ed636f643b11e00bb6c469bf5205f16197372dcf5e4b0871e42f4,
  proof: 8dd9c988c9f337bd55c07fa9e2fa405cf4dda2cb915214fc0b5924870eed0f0187a0db001b5d8ea43a537e423d91d0fc868a456fa3e0bf9e99d1b04f43c6983a05a99458a69903add73ccaa4177844df9056d40c5a71ae14a70835cb30ca7d810fa1d48c9180ddec2ca1cecfaa8706ab514d6e8fe2dd228d7dc012d9407517523b774107a6a78dc972b175b94d1681b980e2b9ba7d39f880973787080a12bf14dc3f038333245a60bbcd9cb1fe2baba30ed083535752cc26ea0c57134e0c774e
)
```
