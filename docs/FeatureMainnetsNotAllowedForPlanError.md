# OpenapiClient::FeatureMainnetsNotAllowedForPlanError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Specifies an error code, e.g. error 404. |  |
| **message** | **String** | Specifies the message of the error, i.e. why the error was returned, e.g. error 404 stands for “not found”. |  |
| **details** | [**Array&lt;BannedIpAddressErrorDetails&gt;**](BannedIpAddressErrorDetails.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::FeatureMainnetsNotAllowedForPlanError.new(
  code: feature_mainnets_not_allowed_for_plan,
  message: Mainnets access is not available for your current subscription plan, please upgrade your plan to be able to use it.,
  details: null
)
```

