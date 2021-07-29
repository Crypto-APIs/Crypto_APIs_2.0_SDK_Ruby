# CryptoApis::TransactionRequestBroadcastedDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **required_approvals** | **Integer** | The required number of approvals needed to approve the transaction. |  |
| **required_rejections** | **Integer** | The required number of rejections needed to reject the transaction. |  |
| **current_approvals** | **Integer** | The current number of approvals given for the transaction. |  |
| **current_rejections** | **Integer** | The current number of rejections given for the transaction. |  |
| **transaction_id** | **String** | Defines the unique ID of the specific transaction, i.e. its identification number. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::TransactionRequestBroadcastedDataItem.new(
  blockchain: Bitcoin/Ethereum (whichever applicable),
  network: Testnet/Mainnet (whichever applicable),
  required_approvals: 5,
  required_rejections: 2,
  current_approvals: 2,
  current_rejections: 1,
  transaction_id: 4e78f606bc42534744e223f54b85d5bbd54a3949f54eb8fac31d73028c286e31
)
```

