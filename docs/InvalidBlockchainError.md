# CryptoApis::InvalidBlockchainError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressErrorDetails&gt;**](BannedIpAddressErrorDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::InvalidBlockchainError.new(
  code: invalid_blockchain,
  message: The provided blockchain is invalid. The blockchain **must** be a supported one. For the full list of supported blockchains please see our Documentation.,
  details: null
)
```

