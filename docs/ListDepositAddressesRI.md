# CryptoApis::ListDepositAddressesRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Specifies the specific address&#39;s unique string value. |  |
| **confirmed_balance** | [**ListDepositAddressesRIConfirmedBalance**](ListDepositAddressesRIConfirmedBalance.md) |  |  |
| **created_timestamp** | **Integer** | Defines the specific UNIX time when the deposit address was created. |  |
| **fungible_tokens** | [**Array&lt;ListDepositAddressesRIFungibleTokensInner&gt;**](ListDepositAddressesRIFungibleTokensInner.md) | Represents fungible tokens&#39;es detailed information |  |
| **index** | **String** | Represents the index of the address in the wallet. |  |
| **label** | **String** | Represents a custom tag that customers can set up for their Wallets and addresses. E.g. custom label named \&quot;Special addresses\&quot;. |  |
| **non_fungible_tokens** | [**Array&lt;ListDepositAddressesRINonFungibleTokensInner&gt;**](ListDepositAddressesRINonFungibleTokensInner.md) | Represents non-fungible tokens&#39;es detailed information. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListDepositAddressesRI.new(
  address: 0xe2b5f5e885a268e4b6faae53f99a663f3bb3e036,
  confirmed_balance: null,
  created_timestamp: 346658753,
  fungible_tokens: null,
  index: 1,
  label: yourStringHere,
  non_fungible_tokens: null
)
```

