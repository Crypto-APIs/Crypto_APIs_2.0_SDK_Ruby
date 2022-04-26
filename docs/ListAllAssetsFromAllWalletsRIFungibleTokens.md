# CryptoApis::ListAllAssetsFromAllWalletsRIFungibleTokens

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the fungible tokens. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **identifier** | **String** | Defines the specific token identifier. For Bitcoin-based transactions it should be the propertyId and for Ethereum-based transactions - the contract. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **symbol** | **String** | Defines the symbol of the fungible tokens. |  |
| **type** | **String** | Defines the specific token type. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllAssetsFromAllWalletsRIFungibleTokens.new(
  amount: 0.254,
  blockchain: ethereum,
  identifier: 0xdac17f958d2ee523a2206206994597c13d831ec7,
  network: mainnet,
  symbol: USDT,
  type: ERC-20
)
```

