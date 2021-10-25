# CryptoApis::ListTokensTransfersByTransactionHashRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_address** | **String** | Represents the contract address of the token, which controls its logic. It is not the address that holds the tokens. |  |
| **mined_in_block_height** | **Integer** | Defines the block height in which this transaction was confirmed/mined. |  |
| **recipient_address** | **String** | Defines the address to which the recipient receives the transferred tokens. |  |
| **sender_address** | **String** | Defines the address from which the sender transfers tokens. |  |
| **token_decimals** | **Integer** | Defines the decimals of the token, i.e. the number of digits that come after the decimal coma of the token. |  |
| **token_name** | **String** | Defines the token&#39;s name as a string. |  |
| **token_symbol** | **String** | Defines the token symbol by which the token contract is known. It is usually 3-4 characters in length. |  |
| **token_type** | **String** | Defines the specific token type. |  |
| **tokens_amount** | **String** | Defines the token amount of the transfer. |  |
| **transaction_hash** | **String** | Represents the hash of the transaction, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **transaction_timestamp** | **Integer** | Defines the specific time/date when the transaction was created in Unix Timestamp. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTokensTransfersByTransactionHashRI.new(
  contract_address: 0x7495fede000c8a3b77eeae09cf70fa94cd2d53f5,
  mined_in_block_height: 9841271,
  recipient_address: 0x9e91eb3a35b96f0f0fe71f3c17fe8d29eb406b16,
  sender_address: 0x9df8a6441e8a3dda75019595d431f9aa0dec475c,
  token_decimals: 6,
  token_name: Tether USD,
  token_symbol: BAND,
  token_type: ERC-20,
  tokens_amount: 0.0012,
  transaction_hash: 0x60ba3dded833e61f63b6b6d62afe5c7526c5ca09c6744749f13eef11afde2cb4,
  transaction_timestamp: 1615818368
)
```

