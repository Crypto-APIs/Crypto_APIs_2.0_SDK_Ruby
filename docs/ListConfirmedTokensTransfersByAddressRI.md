# CryptoApis::ListConfirmedTokensTransfersByAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_address** | **String** | Represents the contract address of the token, which controls its logic. It is not the address that holds the tokens. |  |
| **mined_in_block_height** | **Integer** | Defines the block height in which this transaction was confirmed/mined. |  |
| **recipient_address** | **String** | Defines the address to which the recipient receives the transferred tokens. |  |
| **sender_address** | **String** | Defines the address from which the sender transfers tokens. |  |
| **token_decimals** | **Integer** | Defines the decimals of the token, i.e. the number of digits that come after the decimal coma of the token. |  |
| **token_id** | **String** | Represents the unique token identifier. | [optional] |
| **token_name** | **String** | Defines the token&#39;s name as a string. |  |
| **token_symbol** | **String** | Defines the token symbol by which the token contract is known. It is usually 3-4 characters in length. |  |
| **token_type** | **String** | Defines the specific token type. |  |
| **tokens_amount** | **String** | Defines the token amount of the transfer. | [optional] |
| **transaction_hash** | **String** | Represents the hash of the transaction, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **transaction_timestamp** | **Integer** | Defines the specific time/date when the transaction was created in Unix Timestamp. |  |
| **transaction_fee** | [**ListTokensTransfersByTransactionHashRITransactionFee**](ListTokensTransfersByTransactionHashRITransactionFee.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListConfirmedTokensTransfersByAddressRI.new(
  contract_address: 0xdac17f958d2ee523a2206206994597c13d831ec7,
  mined_in_block_height: 12046964,
  recipient_address: 0xdac17f958d2ee523a2206206994597c13d831ec7,
  sender_address: 0x65b895f400dae5541d70cbbec07527210158f6e2,
  token_decimals: 6,
  token_id: 16721,
  token_name: Tether USD,
  token_symbol: USDT,
  token_type: ERC-20,
  tokens_amount: 9.146383,
  transaction_hash: 0x32de09d747bcbed41e8162681a72b2a6c760cf2116ce372fcd357c260909838a,
  transaction_timestamp: 1615861410,
  transaction_fee: null
)
```

