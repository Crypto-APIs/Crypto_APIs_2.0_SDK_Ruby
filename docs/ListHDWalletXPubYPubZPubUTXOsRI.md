# CryptoApis::ListHDWalletXPubYPubZPubUTXOsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. |  |
| **address_path** | **String** | Defines a data which tells a Hierarchical Deterministic wallet how to derive a specific key within a tree of keys. |  |
| **amount** | **String** | Represents the UTXO amount value. |  |
| **derivation** | **String** | The way how the HD walled derives, for example when the type is ACCOUNT, it derives change and receive addresses while when the type is BIP32 it derives directly. |  |
| **index** | **Integer** | Represents the output index. It refers to the UTXO sequence in the transaction outputs (vout). |  |
| **is_available** | **Boolean** | Represents if the UTXO has been used from another unconfirmed transaction. If it is - the value will be \&quot;false\&quot;. |  |
| **is_confirmed** | **Boolean** | Represents the state of the transaction whether it is confirmed or not confirmed. |  |
| **reference_id** | **String** | Represents the reference id of the record. It may be used for the startingAfter pagination attribute. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be transactionId in UTXO-based protocols like Bitcoin, and transaction hash in Ethereum blockchain. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListHDWalletXPubYPubZPubUTXOsRI.new(
  address: muZxmnQiz8gZgpYmUoTHpD2CFTHWYEjTwB,
  address_path: m/0/5,
  amount: 0.0005,
  derivation: ACCOUNT,
  index: 1,
  is_available: true,
  is_confirmed: true,
  reference_id: 5b1ea92e584bf50020130615,
  transaction_id: 06af8234602b97f497496039a6eb99810db1287ce8aa3c501894dcd03bd4e544
)
```

