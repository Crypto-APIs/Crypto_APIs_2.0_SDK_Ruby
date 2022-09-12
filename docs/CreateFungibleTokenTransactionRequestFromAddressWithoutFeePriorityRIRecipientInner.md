# CryptoApis::CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityRIRecipientInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Defines the destination address. |  |
| **amount** | **String** | Defines the amount sent to the destination address. |  |
| **unit** | **String** | Represents the unit of the tokens amount recieved. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityRIRecipientInner.new(
  address: TMVeigwYyuXJVHER4oA2yQzsFFSN2JfXkt,
  amount: 0.2568,
  unit: JST
)
```

