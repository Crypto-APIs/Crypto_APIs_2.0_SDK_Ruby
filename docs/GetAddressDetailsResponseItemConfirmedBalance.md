# OpenapiClient::GetAddressDetailsResponseItemConfirmedBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the total balance of the address that is confirmed. It doesn&#39;t include unconfirmed transactions. |  |
| **unit** | **String** | Defines the unit of the confirmed balance amount, e.g. BTC, ETH, XRP. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetAddressDetailsResponseItemConfirmedBalance.new(
  amount: 3.5,
  unit: BTC
)
```

