# CryptoApis::TokensForwardingSuccessEthereumerc721token

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

instance = CryptoApis::TokensForwardingSuccessEthereumerc721token.new(
  name: CryptoKitties,
  symbol: CK,
  token_id: 1295570,
  contract_address: 0x06012c8cf97bead5deae237070f9587f8e7a266d
)
```

