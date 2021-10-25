# CryptoApis::AddressTokensTransactionConfirmedEachConfirmationErc20

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

instance = CryptoApis::AddressTokensTransactionConfirmedEachConfirmationErc20.new(
  name: Tether USD,
  symbol: USDT,
  decimals: 6,
  amount: 11.9,
  contract_address: 0xdac17f958d2ee523a2206206994597c13d831ec7
)
```

