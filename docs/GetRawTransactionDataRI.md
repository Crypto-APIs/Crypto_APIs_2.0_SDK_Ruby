# CryptoApis::GetRawTransactionDataRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_hex** | **String** | Represents the raw transaction data in hexadecimal format. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetRawTransactionDataRI.new(
  transaction_hex: 01000000000101f8cb1cd1892d31aaafa35a92128b3a11469e675261c83a30be5b25ae8c97eeca0100000017160014daaf6d5cb86befe42df851a4d1df052e663754c1ffffffff02403800000000000017a914507a5bd8cac1d9efdf4c0a4bfacb3e0abb4f8d15879cd90c000000000017a91475eb14fa1dc2c72637df3c58bc22d925ca0753af8702483045022100c11ea5740bcd69f0f68a4914279838014d28923134d18e05c5a5486dfd06cc8c02200dadccec3f07bed0d1040f9e5a155efa5fdd40fc91f92342578d26848da4c6b901210287e995526aa6ccb96141bb598fc7f73323279e026c55039d15f0cfbda5dea84100000000
)
```

