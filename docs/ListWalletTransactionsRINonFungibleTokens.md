# CryptoApis::ListWalletTransactionsRINonFungibleTokens

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **converted_amount** | **String** | Defines the tokens&#39; converted amount value. |  |
| **exchange_rate_unit** | **String** | Represents token&#39;s exchange rate unit. |  |
| **name** | **String** | Defines the token&#39;s name as a string. |  |
| **recipient** | **String** | Defines the address to which the recipient receives the transferred tokens. |  |
| **sender** | **String** | Defines the address from which the sender transfers tokens. |  |
| **symbol** | **String** | Defines the symbol of the non-fungible tokens. |  |
| **token_id** | **String** | Represents tokens&#39; unique identifier. |  |
| **type** | **String** | Defines the specific token type. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListWalletTransactionsRINonFungibleTokens.new(
  converted_amount: 0.034,
  exchange_rate_unit: USD,
  name: Axie Infinity,
  recipient: 0xdac17f958d2ee523a2206206994597c13d831ec7,
  sender: 0x65b895f400dae5541d70cbbec07527210158f6e2,
  symbol: AXS,
  token_id: 13383,
  type: ERC-721
)
```

