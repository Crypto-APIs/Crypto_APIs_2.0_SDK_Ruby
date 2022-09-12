# CryptoApis::BlockHeightReachedDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **height** | **Integer** | Defines the number of blocks in the blockchain preceding this specific block. |  |
| **hash** | **String** | Represents the hash of the block&#39;s header, i.e. an output that has a fixed length. |  |
| **timestamp** | **Integer** | Defines the exact date/time when this block was mined in seconds since Unix Epoch time. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::BlockHeightReachedDataItem.new(
  blockchain: bitcoin,
  network: testnet,
  height: 667900,
  hash: 00000000000000000006ddb5e854505f8b792122b0ac9469c07eb26db414f6fb,
  timestamp: 1610365615
)
```

