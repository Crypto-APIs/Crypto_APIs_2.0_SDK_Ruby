# CryptoApis::CreateTokensTransactionRequestFromAddressRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the specific amount of the transaction. |  |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |
| **to_address** | **String** | Defines the specific recipient address for the transaction. |  |
| **token_identifier** | **String** | Defines the specific token identifier. For Bitcoin-based transactions it should be the &#x60;propertyId&#x60; and for Ethereum-based transactions - the &#x60;contract&#x60;. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateTokensTransactionRequestFromAddressRBDataItem.new(
  amount: 0.2,
  fee_priority: standard,
  to_address: 0xc065b539490f81b6c297c37b1925c3be2f190732,
  token_identifier: 1
)
```

