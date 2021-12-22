# CryptoApis::CouldNotCalculateRateForPair

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetails&gt;**](BannedIpAddressDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CouldNotCalculateRateForPair.new(
  code: could_not_calculate_rate_for_pair,
  message: Rate could not be calculated due to not enough pair trades data.,
  details: null
)
```

