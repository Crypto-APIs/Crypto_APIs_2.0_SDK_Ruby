# CryptoApis::WalletAsAServiceAddressBalanceNotEnough

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetails&gt;**](BannedIpAddressDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::WalletAsAServiceAddressBalanceNotEnough.new(
  code: wallet_as_a_service_address_balance_not_enough,
  message: Your address balance is insufficient to complete the action. Please, deposit funds to your address and try again.,
  details: null
)
```

