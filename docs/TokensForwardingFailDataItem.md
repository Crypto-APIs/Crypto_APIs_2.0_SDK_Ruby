# CryptoApis::TokensForwardingFailDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks. |  |
| **from_address** | **String** | Represents the hash of the address that provides the tokens. |  |
| **to_address** | **String** | Represents the hash of the address to forward the tokens to. |  |
| **trigger_transaction_id** | **String** | Defines the unique Transaction ID that triggered the token forwarding. |  |
| **error_code** | **String** | Represents the error code received for the failed token forwarding. |  |
| **error_message** | **String** | Represents the error message received for the failed token forwarding. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::TokensForwardingFailDataItem.new(
  blockchain: bitcoin,
  network: testnet,
  from_address: bc1qy4tncwfr6nw3rd8hcr6psxlrkufe6cq44tlfvv,
  to_address: 32Dv1CCNFagLcEdmC1uamj2k2jVDdokVQL,
  trigger_transaction_id: 044681d8571cb55047d9425b7095272fbb8fe4f325b0cd822d374b6153af12a1,
  error_code: FEE_ADDRESS_OUT_OF_FUNDS,
  error_message: The specified URI has not been found. Check the URI and try again.
)
```

