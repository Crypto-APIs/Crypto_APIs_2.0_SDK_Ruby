# CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Representation of the amount of the transaction |  |
| **data_hex** | **String** | Representation of the data in hex value |  |
| **derivation_index** | **Integer** | Representation of the derivation index of the xpub address |  |
| **fee** | [**PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRIFee**](PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRIFee.md) |  |  |
| **nonce** | **String** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |
| **recipient** | **String** | Represents a recipient addresses. In account-based protocols like Ethereum there is only one address in this list. |  |
| **sender** | **String** | Represents a sender address. In account-based protocols like Ethereum there is only one address in this list. |  |
| **sig_hash** | **String** | Representation of the hash that should be signed. |  |
| **transaction_type** | **String** | Representation of the transaction type |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRI.new(
  amount: 30000000000000,
  data_hex: 0x0079006f00750072004100640064006900740069006f006e0061006c00440061007400610048006500720065,
  derivation_index: 0,
  fee: null,
  nonce: 0,
  recipient: 0x041c594a0cc194e826bef5411b29c7f27001b7e3,
  sender: 0x03654A9E78771442CAdf8DB37ae60D6a12bAEa9f,
  sig_hash: 40738814e379fd2b1923729c87ac80dddc6810a3f8f02fef05452251972ec83a,
  transaction_type: null
)
```

