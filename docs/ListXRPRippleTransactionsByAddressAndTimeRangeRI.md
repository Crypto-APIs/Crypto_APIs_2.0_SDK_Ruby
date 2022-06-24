# CryptoApis::ListXRPRippleTransactionsByAddressAndTimeRangeRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_tag** | **Integer** | A destination tag is a value used to discern the holder of the Ripple (XRP) being deposited or withdrawn. | [optional] |
| **index** | **Integer** | Represents the index position of the transaction in the block. |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block where this transaction was mined/confirmed for first time. The hash is defined as a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **mined_in_block_height** | **Integer** | Represents the hight of the block where this transaction was mined/confirmed for first time. The height is defined as the number of blocks in the blockchain preceding this specific block. |  |
| **recipients** | [**Array&lt;GetXRPRippleTransactionDetailsByTransactionIDRIRecipientsInner&gt;**](GetXRPRippleTransactionDetailsByTransactionIDRIRecipientsInner.md) | Represents an object of addresses that receive the transactions. |  |
| **senders** | [**Array&lt;GetXRPRippleTransactionDetailsByTransactionIDRISendersInner&gt;**](GetXRPRippleTransactionDetailsByTransactionIDRISendersInner.md) | Represents an object of addresses that provide the funds. |  |
| **sequence** | **Integer** | Defines the transaction input&#39;s sequence as an integer, which is is used when transactions are replaced with newer versions before LockTime. |  |
| **status** | **String** | Defines the status of the transaction. |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_hash** | **String** | Represents the hash of the XRP transaction. |  |
| **type** | **String** | Specifies the type of the transaction. |  |
| **fee** | [**ListXRPRippleTransactionsByAddressRIFee**](ListXRPRippleTransactionsByAddressRIFee.md) |  |  |
| **offer** | [**ListXRPRippleTransactionsByAddressRIOffer**](ListXRPRippleTransactionsByAddressRIOffer.md) |  |  |
| **receive** | [**ListXRPRippleTransactionsByAddressRIReceive**](ListXRPRippleTransactionsByAddressRIReceive.md) |  |  |
| **value** | [**ListXRPRippleTransactionsByAddressRIValue**](ListXRPRippleTransactionsByAddressRIValue.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListXRPRippleTransactionsByAddressAndTimeRangeRI.new(
  destination_tag: 3999472835,
  index: 3,
  mined_in_block_hash: 3dff3ab3697a0a3116062a92a499dc7b5c9c777b2035f79bb906894972d4573d,
  mined_in_block_height: 15949067,
  recipients: null,
  senders: null,
  sequence: 39673,
  status: tesSUCCESS,
  timestamp: 1644417868,
  transaction_hash: 33684d38ccf56f5b10a25e60b11b251abe6288f41aadd03c7596dced895b282a,
  type: OfferCreate,
  fee: null,
  offer: null,
  receive: null,
  value: null
)
```

