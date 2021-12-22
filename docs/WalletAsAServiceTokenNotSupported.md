# CryptoApis::WalletAsAServiceTokenNotSupported

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetails&gt;**](BannedIpAddressDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::WalletAsAServiceTokenNotSupported.new(
  code: wallet_as_a_service_token_not_supported,
  message: The token is not supported for this blockchain and network. To be supported, please contact our team.,
  details: null
)
```

