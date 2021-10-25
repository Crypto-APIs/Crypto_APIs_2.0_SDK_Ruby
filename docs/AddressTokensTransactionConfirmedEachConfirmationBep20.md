# CryptoApis::AddressTokensTransactionConfirmedEachConfirmationBep20

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

instance = CryptoApis::AddressTokensTransactionConfirmedEachConfirmationBep20.new(
  name: BEP-20,
  symbol: BEST,
  decimals: 8,
  amount: 0.00039,
  contract_address: 0xc4a9f4217748390f597e79050de41a39293345d2
)
```

