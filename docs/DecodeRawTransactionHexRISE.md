# CryptoApis::DecodeRawTransactionHexRISE

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **approximate_fee** | **String** | Defines the approximate fee value. When isConfirmed is True - Defines the amount of the transaction fee When isConfirmed is False - For ETH-based blockchains this attribute represents the max fee value. | [optional] |
| **approximate_minimum_required_fee** | **String** | Defines the approximate minimum fee that is required for the transaction. | [optional] |
| **gas_limit** | **String** | Represents the amount of gas used by this specific transaction alone. |  |
| **gas_paid_for_data** | **String** | Represents the amount of gas paid for the data in the transaction. | [optional] |
| **gas_price** | **String** | Represents the price offered to the miner to purchase this amount of gas. | [optional] |
| **input_data** | **String** | Represents additional information that is required for the transaction. | [optional] |
| **max_fee_per_gas** | **String** | Defines the maximum amount that customer is willing to pay per unit of gas to get his transaction included in a block. | [optional] |
| **max_fee_priority_per_gas** | **String** | Represents determined by the user value that is paid directly to miners. | [optional] |
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

instance = CryptoApis::DecodeRawTransactionHexRISE.new(
  approximate_fee: 0.00016932,
  approximate_minimum_required_fee: 0.000021,
  gas_limit: 552020,
  gas_paid_for_data: 0,
  gas_price: 2994782927,
  input_data: 0x67a5cd0600000000000000000000000031f42841c2db5173425b5223809cf3a38fede360,
  max_fee_per_gas: 0.000000149248157973,
  max_fee_priority_per_gas: 0.000000002,
  nonce: 16,
  r: 0xc297031972fe2d4926e01e66768d669882ace256f8a8397f757af341f5e7c499,
  recipient: 0xd30b438df65f4f788563b2b3611bd6059bff4ad9,
  s: 0x7b717faa31c5edf9332e1cd5fa3f736838a9262834ece621bb3c30671b66ab05,
  sender: 0xd30b438df65f4f788563b2b3611bd6059bff4ad9,
  type: 0,
  v: 0x26,
  value: 0.06
)
```

