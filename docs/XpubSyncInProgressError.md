# CryptoApis::XpubSyncInProgressError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressErrorDetails&gt;**](BannedIpAddressErrorDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::XpubSyncInProgressError.new(
  code: xpub_sync_in_progress,
  message: Your wallet (xPub, yPub, zPub) is still syncing, it should take few seconds depending on how many transactions it has.,
  details: null
)
```

