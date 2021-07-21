# CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destinations** | [**Array&lt;CreateCoinsTransactionRequestFromWalletRBDataItemDestinations&gt;**](CreateCoinsTransactionRequestFromWalletRBDataItemDestinations.md) | Defines the destination of the transaction, whether it is incoming or outgoing. |  |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItem.new(
  destinations: null,
  fee_priority: standard
)
```

