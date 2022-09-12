# CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityRIRecipientInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Defines the destination address. |  |
| **amount** | **String** | Defines the amount sent to the destination address. |  |
| **classic_address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. The classic address is shown when the source address is an x-Address. | [optional] |
| **unit** | **String** | Defines the unit of the recieved amount for the address. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityRIRecipientInner.new(
  address: TX8VXpdEoNNrKeEuNTfbEXfa9eZivcyUwD,
  amount: 0.0006,
  classic_address: TMVeigwYyuXJVHER4oA2yQzsFFSN2JfXkt,
  unit: TRX
)
```

