# CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). | [optional] |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. | [optional] |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;slow\&quot;, \&quot;standard\&quot; or \&quot;fast\&quot;. |  |
| **note** | **String** | Represents an optional note to add a free text in, explaining or providing additional detail on the transaction request. | [optional] |
| **prepare_strategy** | **String** | Refers to a model of a UTXO spending strategy, where customers can choose how to spend their transaction outputs from multiple Bitcoin addresses. Two options available - \&quot;minimize-dust\&quot; (select lower amounts from multiple addresses) or \&quot;optimize-size\&quot; (select higher amounts from less addresses). | [optional][default to &#39;minimize-dust&#39;] |
| **recipients** | [**Array&lt;CreateCoinsTransactionRequestFromWalletRBDataItemRecipients&gt;**](CreateCoinsTransactionRequestFromWalletRBDataItemRecipients.md) | Defines the destination of the transaction, whether it is incoming or outgoing. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateCoinsTransactionRequestFromWalletRBDataItem.new(
  callback_secret_key: yourSecretKey,
  callback_url: https://example.com,
  fee_priority: standard,
  note: yourAdditionalInformationhere,
  prepare_strategy: minimize-dust,
  recipients: null
)
```

