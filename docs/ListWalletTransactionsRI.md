# CryptoApis::ListWalletTransactionsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **direction** | **String** | Defines the direction of the transaction, e.g. incoming. |  |
| **fee** | [**ListWalletTransactionsRIFee**](ListWalletTransactionsRIFee.md) |  |  |
| **fungible_tokens** | [**Array&lt;ListWalletTransactionsRIFungibleTokens&gt;**](ListWalletTransactionsRIFungibleTokens.md) | Represents fungible tokens&#39;es detailed information | [optional] |
| **internal_transactions** | [**Array&lt;ListWalletTransactionsRIInternalTransactions&gt;**](ListWalletTransactionsRIInternalTransactions.md) |  | [optional] |
| **non_fungible_tokens** | [**Array&lt;ListWalletTransactionsRINonFungibleTokens&gt;**](ListWalletTransactionsRINonFungibleTokens.md) | Represents non-fungible tokens&#39;es detailed information. | [optional] |
| **recipients** | [**Array&lt;ListWalletTransactionsRIRecipients&gt;**](ListWalletTransactionsRIRecipients.md) | Represents a list of recipient addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **senders** | [**Array&lt;ListWalletTransactionsRISenders&gt;**](ListWalletTransactionsRISenders.md) | Represents a list of sender addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **status** | **String** | Defines the status of the transaction, if it is confirmed or unconfirmed. |  |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_id** | **String** | Represents the unique TD of the transaction. |  |
| **value** | [**ListWalletTransactionsRIValue**](ListWalletTransactionsRIValue.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListWalletTransactionsRI.new(
  direction: incoming,
  fee: null,
  fungible_tokens: null,
  internal_transactions: null,
  non_fungible_tokens: null,
  recipients: null,
  senders: null,
  status: confirmed,
  timestamp: 1622466746,
  transaction_id: b3ddf04d74e5bd57f3ccb5375db6f39d228ed98cfa1ae9bf959b9406fc975f01,
  value: null
)
```

