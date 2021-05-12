# OpenapiClient::ListTransactionsByBlockHashResponseItemBlockchainSpecific

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::ListTransactionsByBlockHashResponseItemBlockchainSpecific.openapi_one_of
# =>
# [
#   :'ListTransactionsByBlockHashResponseItemBlockchainSpecificBitcoin',
#   :'ListTransactionsByBlockHashResponseItemBlockchainSpecificBitcoinCash',
#   :'ListTransactionsByBlockHashResponseItemBlockchainSpecificDash',
#   :'ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoin',
#   :'ListTransactionsByBlockHashResponseItemBlockchainSpecificEthereum',
#   :'ListTransactionsByBlockHashResponseItemBlockchainSpecificEthereumClassic',
#   :'ListTransactionsByBlockHashResponseItemBlockchainSpecificLitecoin'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::ListTransactionsByBlockHashResponseItemBlockchainSpecific.build(data)
# => #<ListTransactionsByBlockHashResponseItemBlockchainSpecificBitcoin:0x00007fdd4aab02a0>

OpenapiClient::ListTransactionsByBlockHashResponseItemBlockchainSpecific.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListTransactionsByBlockHashResponseItemBlockchainSpecificBitcoin`
- `ListTransactionsByBlockHashResponseItemBlockchainSpecificBitcoinCash`
- `ListTransactionsByBlockHashResponseItemBlockchainSpecificDash`
- `ListTransactionsByBlockHashResponseItemBlockchainSpecificDogecoin`
- `ListTransactionsByBlockHashResponseItemBlockchainSpecificEthereum`
- `ListTransactionsByBlockHashResponseItemBlockchainSpecificEthereumClassic`
- `ListTransactionsByBlockHashResponseItemBlockchainSpecificLitecoin`
- `nil` (if no type matches)

