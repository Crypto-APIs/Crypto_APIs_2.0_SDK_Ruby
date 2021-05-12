# OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecific

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecific.openapi_one_of
# =>
# [
#   :'ListTransactionsByBlockHeightResponseItemBlockchainSpecificBitcoin',
#   :'ListTransactionsByBlockHeightResponseItemBlockchainSpecificBitcoinCash',
#   :'ListTransactionsByBlockHeightResponseItemBlockchainSpecificDash',
#   :'ListTransactionsByBlockHeightResponseItemBlockchainSpecificDogecoin',
#   :'ListTransactionsByBlockHeightResponseItemBlockchainSpecificEthereum',
#   :'ListTransactionsByBlockHeightResponseItemBlockchainSpecificEthereumClassic',
#   :'ListTransactionsByBlockHeightResponseItemBlockchainSpecificLitecoin'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecific.build(data)
# => #<ListTransactionsByBlockHeightResponseItemBlockchainSpecificBitcoin:0x00007fdd4aab02a0>

OpenapiClient::ListTransactionsByBlockHeightResponseItemBlockchainSpecific.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListTransactionsByBlockHeightResponseItemBlockchainSpecificBitcoin`
- `ListTransactionsByBlockHeightResponseItemBlockchainSpecificBitcoinCash`
- `ListTransactionsByBlockHeightResponseItemBlockchainSpecificDash`
- `ListTransactionsByBlockHeightResponseItemBlockchainSpecificDogecoin`
- `ListTransactionsByBlockHeightResponseItemBlockchainSpecificEthereum`
- `ListTransactionsByBlockHeightResponseItemBlockchainSpecificEthereumClassic`
- `ListTransactionsByBlockHeightResponseItemBlockchainSpecificLitecoin`
- `nil` (if no type matches)

