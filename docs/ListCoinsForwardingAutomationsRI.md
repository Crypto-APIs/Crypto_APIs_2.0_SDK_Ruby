# CryptoApis::ListCoinsForwardingAutomationsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. &#x60;We support ONLY httpS type of protocol&#x60;. |  |
| **confirmations_count_trigger** | **Integer** | Represents the total count of the transaction confirmations before triggering the event. |  |
| **created_timestamp** | **Integer** | Defines the specific time/date when the automatic forwarding was created in Unix Timestamp. |  |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;SLOW\&quot;, \&quot;STANDARD\&quot; OR \&quot;FAST\&quot;. |  |
| **from_address** | **String** | Represents the hash of the address that forwards the currency. |  |
| **minimum_transfer_amount** | **String** | Represents the minimum transfer amount of the currency in the &#x60;fromAddress&#x60; that can be allowed for an automatic forwarding. |  |
| **reference_id** | **String** | Represents a unique ID used to reference the specific forwarding automation. |  |
| **to_address** | **String** | Represents the hash of the address the currency is forwarded to. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListCoinsForwardingAutomationsRI.new(
  callback_url: https://example.com,
  confirmations_count_trigger: 3,
  created_timestamp: 1611238648,
  fee_priority: standard,
  from_address: mzAsK3csTnozLnYVdca4gaoH1btBZBC6QB,
  minimum_transfer_amount: 0.0002,
  reference_id: 6017dd02a309213863be9e55,
  to_address: tb1q54j7qcu7kgsrx87yn0r9zjdvsxrnvxg4qua2z6
)
```

