# CryptoApis::AddressTokensTransactionConfirmedEthereumerc20token

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

instance = CryptoApis::AddressTokensTransactionConfirmedEthereumerc20token.new(
  name: Tether USD,
  symbol: USDT,
  decimals: 5,
  amount: 5.3,
  contract_address: 0x06012c8cf97bead5deae237070f9587f8e7a266d
)
```

