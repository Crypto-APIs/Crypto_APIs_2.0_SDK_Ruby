# CryptoApis::ListUnconfirmedTransactionsByAddressRIBSZ

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **binding_sig** | **String** | It is used to enforce balance of Spend and Output transfers, in order to prevent their replay across transactions. |  |
| **expiry_height** | **Integer** | Represents a block height after which the transaction will expire. |  |
| **join_split_pub_key** | **String** | Represents an encoding of a JoinSplitSig public validating key. |  |
| **join_split_sig** | **String** | Is used to sign transactions that contain at least one JoinSplit description. |  |
| **locktime** | **Integer** | Represents the locktime on the transaction on the specific blockchain, i.e. the blockheight at which the transaction is valid. |  |
| **overwintered** | **Boolean** | \&quot;Overwinter\&quot; is the network upgrade for the Zcash blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **v_join_split** | [**Array&lt;ListConfirmedTransactionsByAddressRIBSZVJoinSplitInner&gt;**](ListConfirmedTransactionsByAddressRIBSZVJoinSplitInner.md) | Represents a sequence of JoinSplit descriptions using BCTV14 proofs. |  |
| **v_shielded_output** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSZVShieldedOutputInner&gt;**](GetTransactionDetailsByTransactionIDRIBSZVShieldedOutputInner.md) | Object Array representation of transaction output descriptions |  |
| **v_shielded_spend** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSZVShieldedSpendInner&gt;**](GetTransactionDetailsByTransactionIDRIBSZVShieldedSpendInner.md) | Object Array representation of transaction spend descriptions |  |
| **value_balance** | **String** | Defines the transaction value balance. |  |
| **version** | **Integer** | Defines the version of the transaction. |  |
| **version_group_id** | **String** | Represents the transaction version group ID. |  |
| **vin** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSZVinInner&gt;**](GetTransactionDetailsByTransactionIDRIBSZVinInner.md) | Object Array representation of transaction inputs |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSZVoutInner&gt;**](GetTransactionDetailsByTransactionIDRIBSZVoutInner.md) | Object Array representation of transaction outputs |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRIBSZ.new(
  binding_sig: 603624b3e78e0de0415dea320797a107076a9f7aabd39f44bc4957803330e9891cb33744ac2ec749c2d2d341f29467c49c0ae35bf34765e2fb7c4cda68584804,
  expiry_height: 0,
  join_split_pub_key: 5d2673b4c727241410e42f214a39218e4f13354d77db8ec31243a7be7ed8e2b7,
  join_split_sig: 8b06b926d619ead780b0769e5997ded93f9851fd0efd4b667afc5bcc2792b26cd4a565b4efa7733535fdc09fa566ca59042785d7fd8043d37fdf9e144465080a,
  locktime: 1781965,
  overwintered: true,
  size: 234,
  v_join_split: null,
  v_shielded_output: null,
  v_shielded_spend: null,
  value_balance: 0,
  version: 1,
  version_group_id: 0x892f2085,
  vin: null,
  vout: null
)
```

