# CryptoApis::WalletAsAServiceNoDepositAddressesFound

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetailsInner&gt;**](BannedIpAddressDetailsInner.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::WalletAsAServiceNoDepositAddressesFound.new(
  code: wallet_as_a_service_no_deposit_addresses_found,
  message: Please first create a deposit address for the specific blockchain and network, in order to be able to make transactions.,
  details: null
)
```

