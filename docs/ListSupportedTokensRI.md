# CryptoApis::ListSupportedTokensRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **decimals** | **Integer** | Defines the token&#39;s decimal number or all of its points after the zero. |  |
| **identifier** | **String** | Represents a unique identifier for the specific blockchain and network, e.g. smart contract address, property ID, etc. |  |
| **name** | **String** | Defines the token name. |  |
| **symbol** | **String** | Defines the token&#39;s unique symbol in the Crypto APIs listings. |  |
| **type** | **String** | Represents the token&#39;s type representation, e.g. ERC-20, Omni, etc. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListSupportedTokensRI.new(
  decimals: 6,
  identifier: 0xdac17f958d2ee523a2206206994597c13d831ec7,
  name: Tether,
  symbol: USDT,
  type: ERC-20
)
```

