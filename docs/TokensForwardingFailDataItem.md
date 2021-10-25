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
  from_address: mizRduUBKEbJ6uzYJUegPh78gEGgM3WjAr,
  to_address: mnumE76iEKN47bUsdni85oped5D1fRwKWi,
  trigger_transaction_id: ba1a4e661d36457abc46ea0effef0105f639912119fc64df8fb866118ce7c0d8,
  error_code: FEE_ADDRESS_OUT_OF_FUNDS,
  error_message: You have insufficient credits.
)
```

