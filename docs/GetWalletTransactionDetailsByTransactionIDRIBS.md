# CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBS.openapi_one_of
# =>
# [
#   :'GetWalletTransactionDetailsByTransactionIDRIBSB',
#   :'GetWalletTransactionDetailsByTransactionIDRIBSBC',
#   :'GetWalletTransactionDetailsByTransactionIDRIBSBSC',
#   :'GetWalletTransactionDetailsByTransactionIDRIBSD',
#   :'GetWalletTransactionDetailsByTransactionIDRIBSD2',
#   :'GetWalletTransactionDetailsByTransactionIDRIBSE',
#   :'GetWalletTransactionDetailsByTransactionIDRIBSEC',
#   :'GetWalletTransactionDetailsByTransactionIDRIBSL',
#   :'GetWalletTransactionDetailsByTransactionIDRIBSZ'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBS.build(data)
# => #<GetWalletTransactionDetailsByTransactionIDRIBSB:0x00007fdd4aab02a0>

CryptoApis::GetWalletTransactionDetailsByTransactionIDRIBS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetWalletTransactionDetailsByTransactionIDRIBSB`
- `GetWalletTransactionDetailsByTransactionIDRIBSBC`
- `GetWalletTransactionDetailsByTransactionIDRIBSBSC`
- `GetWalletTransactionDetailsByTransactionIDRIBSD`
- `GetWalletTransactionDetailsByTransactionIDRIBSD2`
- `GetWalletTransactionDetailsByTransactionIDRIBSE`
- `GetWalletTransactionDetailsByTransactionIDRIBSEC`
- `GetWalletTransactionDetailsByTransactionIDRIBSL`
- `GetWalletTransactionDetailsByTransactionIDRIBSZ`
- `nil` (if no type matches)

