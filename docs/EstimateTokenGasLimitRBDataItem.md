# CryptoApis::EstimateTokenGasLimitRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents transactions&#39; amount. |  |
| **contract** | **String** | Defines the specific token identifier.  For Ethereum-based transactions it is the contract. |  |
| **contract_type** | **String** | Represents the ERC contract type. It can be ERC20 or ERC721 |  |
| **recipient** | **String** | The address which receives this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one recipient. |  |
| **sender** | **String** | Represents the address which sends this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one sender. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::EstimateTokenGasLimitRBDataItem.new(
  amount: 0.12,
  contract: 0x092de782a7e1e0a92991ad829a0a33aef3c7545e,
  contract_type: ERC-20,
  recipient: 0xc065b539490f81b6c297c37b1925c3be2f190738,
  sender: 0x6f61e3c2fbb8c8be698bd0907ba6c04b62800fe5
)
```

