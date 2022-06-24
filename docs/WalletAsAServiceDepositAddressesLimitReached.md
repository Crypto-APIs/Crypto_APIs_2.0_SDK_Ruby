# CryptoApis::WalletAsAServiceDepositAddressesLimitReached

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetailsInner&gt;**](BannedIpAddressDetailsInner.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::WalletAsAServiceDepositAddressesLimitReached.new(
  code: wallet_as_a_service_deposit_addresses_limit_reached,
  message: You have reached the maximum Deposit Addresses count which is currently {depositAddressesCount}. Please, upgrade your plan in order to have a higher Deposit Address count.,
  details: null
)
```

