# CryptoApis::GetTransactionRequestDetailsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_details** | **String** | Defines an optional note for additional details. |  |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **fee_priority** | **String** | Defines the priority for the fee, if it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **recipients** | [**Array&lt;GetTransactionRequestDetailsRIRecipients&gt;**](GetTransactionRequestDetailsRIRecipients.md) | Represents a list of recipient addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list. |  |
| **total_transaction_amount** | **String** | Defines the total transaction amount. |  |
| **transaction_id** | **String** | Represents the unique identifier of a transaction, i.e. it could be transactionId in UTXO-based protocols like Bitcoin, and transaction hash in Ethereum blockchain. | [optional] |
| **transaction_request_status** | **String** | Defines the status of the transaction request, e.g. pending. |  |
| **transaction_type** | **String** | Defines the transaction type, if it is for coins or tokens. |  |
| **unit** | **String** | Defines the unit of the amount. |  |
| **wallet_id** | **String** | Defines the unique ID of the Wallet. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionRequestDetailsRI.new(
  additional_details: yourExampleStringHere,
  blockchain: bitcoin,
  fee_priority: standard,
  network: testnet,
  recipients: null,
  total_transaction_amount: 0.001,
  transaction_id: 61922aa68f192800067a8404,
  transaction_request_status: created,
  transaction_type: coin,
  unit: BTC,
  wallet_id: 60c9d9921c38030006675ff6
)
```

