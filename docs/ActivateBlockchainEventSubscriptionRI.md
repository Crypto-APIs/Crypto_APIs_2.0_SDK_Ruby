# CryptoApis::ActivateBlockchainEventSubscriptionRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address of the transaction, per which the result is returned. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our Documentation. |  |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. &#x60;We support ONLY httpS type of protocol&#x60;. |  |
| **confirmations_count** | **Integer** | Represents the number of confirmations, i.e. the amount of blocks that have been built on top of this block. |  |
| **created_timestamp** | **Integer** | Defines the specific time/date when the subscription was created in Unix Timestamp. |  |
| **event_type** | **String** | Defines the type of the specific event available for the customer to subscribe to for callback notification. |  |
| **is_active** | **Boolean** | Defines whether the subscription is active or not. Set as boolean. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **reference_id** | **String** | Represents a unique ID used to reference the specific callback subscription. |  |
| **transaction_id** | **String** | Represents the unique identification string that defines the transaction. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ActivateBlockchainEventSubscriptionRI.new(
  address: 0x7495fede000c8a3b77eeae09cf70fa94cd2d53f5,
  blockchain: bitcoin,
  callback_secret_key: yourSecretKey,
  callback_url: https://example.com,
  confirmations_count: 2,
  created_timestamp: 1611238648,
  event_type: ADDRESS_TOKENS_TRANSACTION_CONFIRMED,
  is_active: true,
  network: testnet,
  reference_id: bc243c86-0902-4386-b30d-e6b30fa1f2aa,
  transaction_id: 0xbe38781783b1b9d480219255ff98e20335a39e13979a66112efa33f05fde0a33
)
```

