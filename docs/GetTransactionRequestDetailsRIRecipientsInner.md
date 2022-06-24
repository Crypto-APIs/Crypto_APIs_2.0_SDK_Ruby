# CryptoApis::GetTransactionRequestDetailsRIRecipientsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The address which receives this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one recipient. |  |
| **address_tag** | **Integer** | Defines a specific Tag that is an additional XRP address feature. It helps identify a transaction recipient beyond a wallet address. The tag that was encoded into the x-Address along with the Classic Address. | [optional] |
| **amount** | **String** | Represents the amount received to this address. |  |
| **classic_address** | **String** | Represents the public address, which is a compressed and shortened form of a public key. A classic address is shown when the destination address is an x-Address. | [optional] |
| **unit** | **String** | Defines the unit of the amount. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionRequestDetailsRIRecipientsInner.new(
  address: mr3zKBc7skyDHcVHWww4JzzziPnrdYTscR,
  address_tag: 3999472835,
  amount: 0.001,
  classic_address: rA9bXGJcXvZKaWofrRphdJsBWzhyCfH3z,
  unit: BTC
)
```

