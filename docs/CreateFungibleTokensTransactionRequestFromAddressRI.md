# CryptoApis::CreateFungibleTokensTransactionRequestFromAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). |  |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. &#x60;We support ONLY httpS type of protocol&#x60;. |  |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |
| **note** | **String** | Represents an optional note to add a free text in, explaining or providing additional detail on the transaction request. | [optional] |
| **recipients** | [**Array&lt;CreateFungibleTokensTransactionRequestFromAddressRIRecipients&gt;**](CreateFungibleTokensTransactionRequestFromAddressRIRecipients.md) | Defines the destination for the transaction, i.e. the recipient(s). |  |
| **senders** | [**CreateFungibleTokensTransactionRequestFromAddressRISenders**](CreateFungibleTokensTransactionRequestFromAddressRISenders.md) |  |  |
| **token_type_specific_data** | [**CreateFungibleTokensTransactionRequestFromAddressRIS**](CreateFungibleTokensTransactionRequestFromAddressRIS.md) |  |  |
| **transaction_request_id** | **String** | Represents a unique identifier of the transaction request (the request sent to make a transaction), which helps in identifying which callback and which &#x60;referenceId&#x60; concern that specific transaction request. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateFungibleTokensTransactionRequestFromAddressRI.new(
  callback_secret_key: yourSecretString,
  callback_url: https://example.com,
  fee_priority: fast,
  note: yourAdditionalInformationhere,
  recipients: 0x1316bea88fb7cd4ccc4a57e2f9f4f43d1a86ee59,
  senders: null,
  token_type_specific_data: null,
  transaction_request_id: 6038d09050653d1f0e40584c
)
```

