# CryptoApis::ListTransactionsByAddressResponseItemBlockchainSpecific

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListTransactionsByAddressResponseItemBlockchainSpecific.openapi_one_of
# =>
# [
#   :'ListTransactionsByAddressResponseItemBlockchainSpecificBitcoin',
#   :'ListTransactionsByAddressResponseItemBlockchainSpecificBitcoinCash',
#   :'ListTransactionsByAddressResponseItemBlockchainSpecificDash',
#   :'ListTransactionsByAddressResponseItemBlockchainSpecificDogecoin',
#   :'ListTransactionsByAddressResponseItemBlockchainSpecificEthereum',
#   :'ListTransactionsByAddressResponseItemBlockchainSpecificEthereumClassic',
#   :'ListTransactionsByAddressResponseItemBlockchainSpecificLitecoin'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListTransactionsByAddressResponseItemBlockchainSpecific.build(data)
# => #<ListTransactionsByAddressResponseItemBlockchainSpecificBitcoin:0x00007fdd4aab02a0>

CryptoApis::ListTransactionsByAddressResponseItemBlockchainSpecific.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListTransactionsByAddressResponseItemBlockchainSpecificBitcoin`
- `ListTransactionsByAddressResponseItemBlockchainSpecificBitcoinCash`
- `ListTransactionsByAddressResponseItemBlockchainSpecificDash`
- `ListTransactionsByAddressResponseItemBlockchainSpecificDogecoin`
- `ListTransactionsByAddressResponseItemBlockchainSpecificEthereum`
- `ListTransactionsByAddressResponseItemBlockchainSpecificEthereumClassic`
- `ListTransactionsByAddressResponseItemBlockchainSpecificLitecoin`
- `nil` (if no type matches)

