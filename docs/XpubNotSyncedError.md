# CryptoApis::XpubNotSyncedError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressErrorDetails&gt;**](BannedIpAddressErrorDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::XpubNotSyncedError.new(
  code: xpub_not_synced,
  message: This xPub is not yet synced, please first use endpoint “Sync HD (xPub, yPub, zPub) wallet” to synchronize it.,
  details: null
)
```

