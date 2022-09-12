# CryptoApis::WalletAsAServiceProvidedNetworkIsNotSuitableForThisWalletType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetailsInner&gt;**](BannedIpAddressDetailsInner.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::WalletAsAServiceProvidedNetworkIsNotSuitableForThisWalletType.new(
  code: wallet_as_a_service_provided_network_is_not_suitable_for_this_wallet_type,
  message: This wallet is not for the provided network.,
  details: null
)
```

