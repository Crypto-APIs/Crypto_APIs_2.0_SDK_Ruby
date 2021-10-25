# CryptoApis::AddressTokensTransactionConfirmedEachConfirmationErc721

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Specifies the name of the token. |  |
| **symbol** | **String** | Specifies an identifier of the token, where up to five alphanumeric characters can be used for it. |  |
| **token_id** | **String** | Specifies the ID of the token. |  |
| **contract_address** | **String** | Specifies the address of the contract. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddressTokensTransactionConfirmedEachConfirmationErc721.new(
  name: Wonky Stonks,
  symbol: WSTK,
  token_id: 5027,
  contract_address: 0x518ba36f1ca6dfe3bb1b098b8dd0444030e79d9f
)
```

