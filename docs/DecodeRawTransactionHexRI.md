# CryptoApis::DecodeRawTransactionHexRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain_speficic_data** | [**DecodeRawTransactionHexRIS**](DecodeRawTransactionHexRIS.md) |  |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **transaction_id** | **String** | Represents the decoded transaction hex. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRI.new(
  blockchain_speficic_data: null,
  size: 248,
  transaction_id: 00a8a090a7c78f64e4626e6720b305edd95fcd7865b5b45864a88070a8079cea
)
```

