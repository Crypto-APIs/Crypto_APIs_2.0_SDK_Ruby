# CryptoApis::EstimateGasLimitRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_data** | **String** | Represents an optional field to add additonal data. | [optional] |
| **amount** | **String** | Represents transactions&#39; amount. |  |
| **recipient** | **String** | The address which receives this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one recipient. |  |
| **sender** | **String** | Represents the address which sends this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one sender. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::EstimateGasLimitRBDataItem.new(
  additional_data: yourAdditionalString,
  amount: 0.002,
  recipient: 0xc065b539490f81b6c297c37b1925c3be2f190738,
  sender: 0x6f61e3c2fbb8c8be698bd0907ba6c04b62800fe5
)
```

