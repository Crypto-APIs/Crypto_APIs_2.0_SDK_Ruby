# CryptoApis::ListXRPRippleTransactionsByBlockHeightRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_data** | **String** |  | [optional] |
| **destination_tag** | **Integer** |  | [optional] |
| **index** | **Integer** |  |  |
| **mined_in_block_hash** | **String** |  |  |
| **recipients** | [**Array&lt;ListXRPRippleTransactionsByBlockHeightRIRecipients&gt;**](ListXRPRippleTransactionsByBlockHeightRIRecipients.md) | Object Array representation of transaction receivers |  |
| **senders** | [**Array&lt;ListXRPRippleTransactionsByBlockHeightRISenders&gt;**](ListXRPRippleTransactionsByBlockHeightRISenders.md) | Object Array representation of transaction senders |  |
| **sequence** | **Integer** |  |  |
| **status** | **String** |  |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_hash** | **String** |  |  |
| **type** | **String** |  |  |
| **fee** | [**ListXRPRippleTransactionsByBlockHeightRIFee**](ListXRPRippleTransactionsByBlockHeightRIFee.md) |  |  |
| **offer** | [**ListXRPRippleTransactionsByBlockHeightRIOffer**](ListXRPRippleTransactionsByBlockHeightRIOffer.md) |  |  |
| **receive** | [**ListXRPRippleTransactionsByBlockHeightRIReceive**](ListXRPRippleTransactionsByBlockHeightRIReceive.md) |  |  |
| **value** | [**ListXRPRippleTransactionsByBlockHeightRIValue**](ListXRPRippleTransactionsByBlockHeightRIValue.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListXRPRippleTransactionsByBlockHeightRI.new(
  additional_data: r4CmvbkDWGt9AZmkfuubmiSdsxGZFxAKBY,
  destination_tag: 3999472835,
  index: 3,
  mined_in_block_hash: 14754656235f865a74eba27791fd41a47bdfe07fe811ff6d78f53db32e129e39,
  recipients: null,
  senders: null,
  sequence: 32568,
  status: tesSUCCESS,
  timestamp: 236589,
  transaction_hash: ba3bc1337071c8e73b441fe12a1911f4365d7ea82cace7c8ecba3ee9f364978b,
  type: Payment,
  fee: null,
  offer: null,
  receive: null,
  value: null
)
```

