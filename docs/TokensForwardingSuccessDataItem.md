# OpenapiClient::TokensForwardingSuccessDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **from_address** | **String** | Represents the hash of the address that provides the tokens. |  |
| **to_address** | **String** | Represents the hash of the address to forward the tokens to. |  |
| **spent_fees_amount** | **String** | Represents the amount of the fee spent for the tokens to be forwarded. |  |
| **spent_fees_unit** | **String** | Represents the unit of the fee spent for the tokens to be forwarded, e.g. BTC. |  |
| **trigger_transaction_id** | **String** | Defines the unique Transaction ID that triggered the token forwarding. |  |
| **forwarding_transaction_id** | **String** | Defines the unique Transaction ID that forwarded the tokens. |  |
| **token_type** | **String** | Defines the type of token sent with the transaction, e.g. ERC 20. |  |
| **token** | [**TokensForwardingSuccessToken**](TokensForwardingSuccessToken.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TokensForwardingSuccessDataItem.new(
  blockchain: bitcoin,
  network: testnet,
  from_address: mh8E9c2YDQvn8uRf47Wy4zCv2zHQzcdgkk,
  to_address: ms4KNsbNpoU8g424pzmEjbkFbfAHae1msB,
  spent_fees_amount: 0.00013601,
  spent_fees_unit: BTC,
  trigger_transaction_id: 6ed1f1c8f2887a78ee8c45a975d928ca63eafc7b63def56324606ddd3cc9854f,
  forwarding_transaction_id: b15ab5bbaf5107d551ae1b50181f4c55959205c4ff843e3c10d86d00e690fc72,
  token_type: omniLayerToken,
  token: null
)
```

