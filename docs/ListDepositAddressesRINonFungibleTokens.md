# CryptoApis::ListDepositAddressesRINonFungibleTokens

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Defines the specific token identifier. For Bitcoin-based transactions it should be the propertyId and for Ethereum-based transactions - the contract. |  |
| **name** | **String** | Defines the token&#39;s name as a string. |  |
| **symbol** | **String** | Defines the symbol of the non-fungible tokens. |  |
| **token_id** | **String** | Represents tokens&#39; unique identifier. |  |
| **type** | **String** | Defines the specific token type. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListDepositAddressesRINonFungibleTokens.new(
  identifier: 0x90ca8a3eb2574f937f514749ce619fdcca187d45,
  name: Tether,
  symbol: ENS,
  token_id: 0x000000000000000000000000000000000000000000000000000000000000195b,
  type: ERC-721
)
```

