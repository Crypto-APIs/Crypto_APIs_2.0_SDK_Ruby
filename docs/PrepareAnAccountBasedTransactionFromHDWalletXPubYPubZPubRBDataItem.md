# CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_data** | **String** | Representation of the additional data. | [optional] |
| **amount** | **String** | Representation of the amount of the transaction |  |
| **fee** | [**PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRBDataItemFee**](PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRBDataItemFee.md) |  |  |
| **nonce** | **String** | Representation of the nonce value | [optional] |
| **recipient** | **String** | Represents a list of recipient addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **sender** | **String** | Represents a  sender address with the respective amount. In account-based protocols like Ethereum there is only one address in this list. |  |
| **transaction_type** | **String** | Representation of the transaction type | [optional] |
| **xpub** | **String** | Defines the account extended publicly known key which is used to derive all child public keys. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::PrepareAnAccountBasedTransactionFromHDWalletXPubYPubZPubRBDataItem.new(
  additional_data: yourAdditionalDataHere,
  amount: 0.000003,
  fee: null,
  nonce: 0,
  recipient: 0x041c594a0cc194e826bef5411b29c7f27001b7e3,
  sender: 0x03654A9E78771442CAdf8DB37ae60D6a12bAEa9f,
  transaction_type: access-list-transaction,
  xpub: xpub6CsGdqTDEVRnLmpWN218HBwJqfhqSx46iA8ByzEA5Bz9jfwU3TSg9U7ambKgJyykvCraHQ6sAFAddMGFdPzhXrRanKbHnnkbDTyRPyn5gRJ
)
```

