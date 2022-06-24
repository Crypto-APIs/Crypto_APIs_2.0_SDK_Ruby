# CryptoApis::WalletAsAServiceWalletBalanceNotEnough

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetailsInner&gt;**](BannedIpAddressDetailsInner.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::WalletAsAServiceWalletBalanceNotEnough.new(
  code: wallet_as_a_service_wallet_balance_not_enough,
  message: Your wallet balance is insufficient to complete this action. Please check for any pending transaction requests or add more funds.,
  details: null
)
```

