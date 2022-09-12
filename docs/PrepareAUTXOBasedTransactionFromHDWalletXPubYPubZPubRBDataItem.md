# CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_data** | **String** | Representation of the additional data. | [optional] |
| **fee** | [**PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBDataItemFee**](PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBDataItemFee.md) |  |  |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. | [optional] |
| **prepare_strategy** | **String** | Representation of the transaction&#39;s strategy type | [optional] |
| **recipients** | [**Array&lt;PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBDataItemRecipientsInner&gt;**](PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBDataItemRecipientsInner.md) | Represents a list of recipient addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **replaceable** | **Boolean** | Representation of whether the transaction is replaceable | [optional] |
| **xpub** | **String** | Defines the account extended publicly known key which is used to derive all child public keys. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::PrepareAUTXOBasedTransactionFromHDWalletXPubYPubZPubRBDataItem.new(
  additional_data: yourAdditionalDataHere,
  fee: null,
  locktime: 1659001055,
  prepare_strategy: minimize-dust,
  recipients: null,
  replaceable: false,
  xpub: tpubDCNoSqt3HF32yq8VU6mgapTuW1FzENZa3C5dKUF6WCQzubWz2nA1yxUhMQWkhhkD58Uc8YiuD8cmB3y5tihqAv4zT2GNyqKTNLchHJmsvt9
)
```

