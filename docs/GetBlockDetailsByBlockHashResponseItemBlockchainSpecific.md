# OpenapiClient::GetBlockDetailsByBlockHashResponseItemBlockchainSpecific

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::GetBlockDetailsByBlockHashResponseItemBlockchainSpecific.openapi_one_of
# =>
# [
#   :'GetBlockDetailsByBlockHashResponseItemBlockchainSpecificBitcoin',
#   :'GetBlockDetailsByBlockHashResponseItemBlockchainSpecificBitcoinCash',
#   :'GetBlockDetailsByBlockHashResponseItemBlockchainSpecificDash',
#   :'GetBlockDetailsByBlockHashResponseItemBlockchainSpecificDogecoin',
#   :'GetBlockDetailsByBlockHashResponseItemBlockchainSpecificEthereum',
#   :'GetBlockDetailsByBlockHashResponseItemBlockchainSpecificEthereumClassic',
#   :'GetBlockDetailsByBlockHashResponseItemBlockchainSpecificLitecoin'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::GetBlockDetailsByBlockHashResponseItemBlockchainSpecific.build(data)
# => #<GetBlockDetailsByBlockHashResponseItemBlockchainSpecificBitcoin:0x00007fdd4aab02a0>

OpenapiClient::GetBlockDetailsByBlockHashResponseItemBlockchainSpecific.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetBlockDetailsByBlockHashResponseItemBlockchainSpecificBitcoin`
- `GetBlockDetailsByBlockHashResponseItemBlockchainSpecificBitcoinCash`
- `GetBlockDetailsByBlockHashResponseItemBlockchainSpecificDash`
- `GetBlockDetailsByBlockHashResponseItemBlockchainSpecificDogecoin`
- `GetBlockDetailsByBlockHashResponseItemBlockchainSpecificEthereum`
- `GetBlockDetailsByBlockHashResponseItemBlockchainSpecificEthereumClassic`
- `GetBlockDetailsByBlockHashResponseItemBlockchainSpecificLitecoin`
- `nil` (if no type matches)

