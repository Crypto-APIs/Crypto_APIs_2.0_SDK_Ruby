# CryptoApis::GenerateAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | [**Array&lt;GenerateAddressRIAddresses&gt;**](GenerateAddressRIAddresses.md) |  |  |
| **private_key** | **String** | Represents the privately known secret key used for authentication and encryption of the address. |  |
| **public_key** | **String** | Represents the publicly known key used for identification of the address. |  |
| **wif** | **String** | Represents the Wallet Import Format which dictates the encoding that allows the copy of the private ECDSA key easily. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GenerateAddressRI.new(
  addresses: null,
  private_key: 7662b19db068aa373b591b83478dc243c60d11ba812b2a678c3a2b2db20dd764,
  public_key: 03761e771ec1505d2d349cc6362c8bd76fe2f78c759211eaf2217fe129901e0928,
  wif: L1BqVUYPhyL71wg53Tre9a5bWq5kFLwV7mQVfrmSR5DnKqNuy8Wk
)
```

