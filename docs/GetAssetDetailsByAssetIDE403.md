# CryptoApis::GetAssetDetailsByAssetIDE403

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetAssetDetailsByAssetIDE403.openapi_one_of
# =>
# [
#   :'BannedIpAddress',
#   :'EndpointNotAllowedForApiKey',
#   :'EndpointNotAllowedForPlan',
#   :'FeatureMainnetsNotAllowedForPlan'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetAssetDetailsByAssetIDE403.build(data)
# => #<BannedIpAddress:0x00007fdd4aab02a0>

CryptoApis::GetAssetDetailsByAssetIDE403.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `BannedIpAddress`
- `EndpointNotAllowedForApiKey`
- `EndpointNotAllowedForPlan`
- `FeatureMainnetsNotAllowedForPlan`
- `nil` (if no type matches)

