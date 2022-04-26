# CryptoApis::DecodeRawTransactionHexRISB22

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **approximate_fee** | **String** | Defines the approximate fee value. When isConfirmed is True - Defines the amount of the transaction fee When isConfirmed is False - For ETH-based blockchains this attribute represents the max fee value. | [optional] |
| **approximate_minimum_required_fee** | **String** | Defines the approximate minimum fee that is required for the transaction. | [optional] |
| **gas_limit** | **String** | Represents the amount of gas used by this specific transaction alone. |  |
| **gas_paid_for_data** | **String** | Represents the amount of gas paid for the data in the transaction. | [optional] |
| **gas_price** | **String** | Represents the price offered to the miner to purchase this amount of gas. | [optional] |
| **input_data** | **String** | Represents additional information that is required for the transaction. | [optional] |
| **nonce** | **Integer** | Represents the sequential running number for an address, starting from 0 for the first transaction. E.g., if the nonce of a transaction is 10, it would be the 11th transaction sent from the sender&#39;s address. |  |
| **r** | **String** | Represents output of an ECDSA signature. | [optional] |
| **recipient** | **String** | The address which receives this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one recipient. |  |
| **s** | **String** | Represents output of an ECDSA signature. | [optional] |
| **sender** | **String** | Represents the address which sends this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one sender. |  |
| **type** | **Integer** | Specifies the transaction type as one from three options: if response returns a &#x60;\&quot;0\&quot;&#x60; it means the raw transaction includes legacy transaction data, if it is &#x60;\&quot;1\&quot;&#x60; - includes access lists for EIP2930, and if it is &#x60;\&quot;2\&quot;&#x60; - EIP1559 data. |  |
| **v** | **String** | Defines the the recovery id. | [optional] |
| **value** | **String** | Represents the sent/received amount. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::DecodeRawTransactionHexRISB22.new(
  approximate_fee: 0.00016932,
  approximate_minimum_required_fee: 0.000021,
  gas_limit: 552020,
  gas_paid_for_data: 0,
  gas_price: 2994782927,
  input_data: 0x34,
  nonce: 16,
  r: 0xc297031972fe2d4926e01e66768d669882ace256f8a8397f757af341f5e7c49,
  recipient: 0x59d9d70DC4717cc9F3c1f7Bf3Fb9B62430872725,
  s: 0x7b717faa31c5edf9332e1cd5fa3f736838a9262834ece621bb3c30671b66ab05,
  sender: 0x4dF189c73C714dd636a99AA4f3317CcD72a05d62,
  type: 0,
  v: 0x26,
  value: 11.25
)
```

