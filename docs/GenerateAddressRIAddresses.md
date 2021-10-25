# CryptoApis::GenerateAddressRIAddresses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the specific address that will be generated. |  |
| **format** | **String** | Defines the form of transaction that is used. Keep in mind that we support more than one type of formats for example: p2pkh p2sh p2wpkh etc. and they are generated simultaneously in the response of the Generate Address endpoint, depending on the blockchain and network that has been chosen. For more information about supported formats - please check \&quot;What we support\&quot; section |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GenerateAddressRIAddresses.new(
  address: 2MzbNswGR1Y3BQP2bQfHcmkmrkAtp9gRhN1,
  format: P2SH
)
```

