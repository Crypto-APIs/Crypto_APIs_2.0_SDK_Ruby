# CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSX

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_data** | **String** | Represents additional data that may be needed. |  |
| **destination_tag** | **Integer** | Defines the destination tag value. | [optional] |
| **offer** | [**GetXRPRippleTransactionDetailsByTransactionIDRIOffer**](GetXRPRippleTransactionDetailsByTransactionIDRIOffer.md) |  |  |
| **receive** | [**GetXRPRippleTransactionDetailsByTransactionIDRIReceive**](GetXRPRippleTransactionDetailsByTransactionIDRIReceive.md) |  |  |
| **sequence** | **Integer** | Defines the transaction input&#39;s sequence as an integer, which is is used when transactions are replaced with newer versions before LockTime. |  |
| **status** | **String** | Defines the status of the transaction. |  |
| **type** | **String** | Defines the type of the transaction. |  |
| **value** | [**GetTransactionDetailsByTransactionIDFromCallbackRIBSXValue**](GetTransactionDetailsByTransactionIDFromCallbackRIBSXValue.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDFromCallbackRIBSX.new(
  additional_data: rPmPErQe4g9725pcNxJpuvKkdqTESTQ6Tu,
  destination_tag: 3999472835,
  offer: null,
  receive: null,
  sequence: 4294967295,
  status: tesSUCCESS,
  type: Payment,
  value: null
)
```

