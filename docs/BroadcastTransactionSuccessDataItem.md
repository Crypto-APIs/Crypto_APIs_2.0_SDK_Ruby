# CryptoApis::BroadcastTransactionSuccessDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **transaction_id** | **String** | Defines the unique ID of the specific transaction, i.e. its identification number. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::BroadcastTransactionSuccessDataItem.new(
  blockchain: Bitcoin/Ethereum (whichever applicable),
  network: Testnet/Mainnet (whichever applicable),
  transaction_id: 347d96855d41b77f1e23048fff11c18e9fe699ee69b0b402338f34189734e0a2
)
```

