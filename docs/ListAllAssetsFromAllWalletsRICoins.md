# CryptoApis::ListAllAssetsFromAllWalletsRICoins

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **confirmed_balance** | **String** | Defines the total balance of the address that is confirmed. It doesn&#39;t include unconfirmed transactions. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **total_received** | **String** | Defines the total amount of all coins received to the address, based on confirmed transactions. |  |
| **total_spent** | **String** | Defines the total amount of all spent by this address coins, based on confirmed transactions. |  |
| **unit** | **String** | Represents the unit of the confirmed balance. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllAssetsFromAllWalletsRICoins.new(
  blockchain: bitcoin,
  confirmed_balance: 0.00009179,
  network: testnet,
  total_received: 5.6,
  total_spent: 2.1,
  unit: BTC
)
```

