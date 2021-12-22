# CryptoApis::InlineResponse40070

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | Specifies the version of the API that incorporates this endpoint. |  |
| **request_id** | **String** | Defines the ID of the request. The &#x60;requestId&#x60; is generated by Crypto APIs and it&#39;s unique for every request. |  |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **error** | [**GetTransactionDetailsByTransactionIDFromCallbackE400**](GetTransactionDetailsByTransactionIDFromCallbackE400.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::InlineResponse40070.new(
  api_version: 2.0,
  request_id: 601c1710034ed6d407996b30,
  context: You can add any text here,
  error: null
)
```
