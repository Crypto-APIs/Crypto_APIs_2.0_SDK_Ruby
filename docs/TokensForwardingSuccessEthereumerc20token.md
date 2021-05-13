# CryptoApis::TokensForwardingSuccessEthereumerc20token

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Specifies the name of the token. |  |
| **symbol** | **String** | Specifies an identifier of the token, where up to five alphanumeric characters can be used for it. |  |
| **decimals** | **String** | Defines how many decimals can be used to break the token. | [optional] |
| **amount** | **String** | Defines the amount of tokens sent with the confirmed transaction. |  |
| **contract_address** | **String** | Defines the address of the contract. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::TokensForwardingSuccessEthereumerc20token.new(
  name: Tether USD,
  symbol: USDT,
  decimals: 7,
  amount: 9.5,
  contract_address: 0xdaF17f958d2ee523a2206206994597c13t831ec6
)
```

