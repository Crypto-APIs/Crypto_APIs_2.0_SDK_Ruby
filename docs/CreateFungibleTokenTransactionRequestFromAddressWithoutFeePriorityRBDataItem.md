# CryptoApis::CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Represents the specific amount of the transaction. |  |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). | [optional] |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. &#x60;We support ONLY httpS type of protocol&#x60;. | [optional] |
| **fee_limit** | **String** | Fee limit of the smart contract |  |
| **note** | **String** | Represents an optional note to add a free text in, explaining or providing additional detail on the transaction request. | [optional] |
| **recipient_address** | **String** | Defines the specific recipient address for the transaction. |  |
| **token_identifier** | **String** | Token identifier - for BITCOIN BASED should be property id e.g 31 for ETHEREUM BASED shoud be contract e.g 0xdac17f958d2ee523a2206206994597c13d831ec7 |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateFungibleTokenTransactionRequestFromAddressWithoutFeePriorityRBDataItem.new(
  amount: 0.25684,
  callback_secret_key: yourSecretString,
  callback_url: https://example.com,
  fee_limit: 1000000000,
  note: yourAdditionalInformationhere,
  recipient_address: TMVeigwYyuXJVHER4oA2yQzsFFSN2JfXkt,
  token_identifier: TF17BgPaZYbz8oxbjhriubPDsA7ArKoLX3
)
```

