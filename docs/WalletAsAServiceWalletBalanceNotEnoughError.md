# CryptoApis::WalletAsAServiceWalletBalanceNotEnoughError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressErrorDetails&gt;**](BannedIpAddressErrorDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::WalletAsAServiceWalletBalanceNotEnoughError.new(
  code: wallet_as_a_service_wallet_balance_not_enough,
  message: Your Wallet balance is insufficient to complete the action. Please, deposit funds to your Wallet and try again.,
  details: null
)
```

