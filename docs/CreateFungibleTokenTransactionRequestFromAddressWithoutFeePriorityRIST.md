# CryptoApis::CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityRIST

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_address** | **String** | Defines the contract address in the blockchain for an ERC20 token. |  |
| **fee_limit** | **String** | Defines the fee limit value. |  |
| **symbol** | **String** | Defines the Token symbol. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityRIST.new(
  contract_address: TF17BgPaZYbz8oxbjhriubPDsA7ArKoLX3,
  fee_limit: 1000000000,
  symbol: JST
)
```

