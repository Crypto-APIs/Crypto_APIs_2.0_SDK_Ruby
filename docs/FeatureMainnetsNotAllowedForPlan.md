# CryptoApis::FeatureMainnetsNotAllowedForPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressDetails&gt;**](BannedIpAddressDetails.md) |  | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::FeatureMainnetsNotAllowedForPlan.new(
  code: feature_mainnets_not_allowed_for_plan,
  message: Mainnets access is not available for your current subscription plan, please upgrade your plan to be able to use it.,
  details: null
)
```

