# CryptoApis::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecific

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecific.openapi_one_of
# =>
# [
#   :'GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoin',
#   :'GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinCash',
#   :'GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDash',
#   :'GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDogecoin',
#   :'GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificEthereum',
#   :'GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificEthereumClassic',
#   :'GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificLitecoin'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecific.build(data)
# => #<GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoin:0x00007fdd4aab02a0>

CryptoApis::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecific.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoin`
- `GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinCash`
- `GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDash`
- `GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificDogecoin`
- `GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificEthereum`
- `GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificEthereumClassic`
- `GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificLitecoin`
- `nil` (if no type matches)

