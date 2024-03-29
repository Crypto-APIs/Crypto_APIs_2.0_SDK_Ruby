=begin
#CryptoAPIs

#Crypto APIs is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2021-03-20
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1-SNAPSHOT

=end

require 'cgi'

module CryptoApis
  class CallbackDataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Address Details From Callback
    # This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific address from the Event it takes part in only if the address already exists in the blockchain events subscriptions. It applies only for Events related to that customer.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param address [String] Represents the public address, which is a compressed and shortened form of a public key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [GetAddressDetailsFromCallbackR]
    def get_address_details_from_callback(blockchain, network, address, opts = {})
      data, _status_code, _headers = get_address_details_from_callback_with_http_info(blockchain, network, address, opts)
      data
    end

    # Get Address Details From Callback
    # This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific address from the Event it takes part in only if the address already exists in the blockchain events subscriptions. It applies only for Events related to that customer.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param address [String] Represents the public address, which is a compressed and shortened form of a public key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [Array<(GetAddressDetailsFromCallbackR, Integer, Hash)>] GetAddressDetailsFromCallbackR data, response status code and response headers
    def get_address_details_from_callback_with_http_info(blockchain, network, address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallbackDataApi.get_address_details_from_callback ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling CallbackDataApi.get_address_details_from_callback"
      end
      # verify enum value
      allowable_values = ["bitcoin", "bitcoin-cash", "litecoin", "dash", "dogecoin", "ethereum", "ethereum-classic", "binance-smart-chain", "xrp", "zilliqa", "zcash", "polygon"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling CallbackDataApi.get_address_details_from_callback"
      end
      # verify enum value
      allowable_values = ["mainnet", "testnet", "mordor", "mumbai", "goerli"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'address' is set
      if @api_client.config.client_side_validation && address.nil?
        fail ArgumentError, "Missing the required parameter 'address' when calling CallbackDataApi.get_address_details_from_callback"
      end
      # resource path
      local_var_path = '/blockchain-events/{blockchain}/{network}/addresses/{address}'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s)).sub('{' + 'address' + '}', CGI.escape(address.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetAddressDetailsFromCallbackR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CallbackDataApi.get_address_details_from_callback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallbackDataApi#get_address_details_from_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Block Details By Block Hash From Callback
    # This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific block by providing the `blockHash` attribute from the Event it takes part in and after making check that the customer in question does have a subscription for this block. It applies only for Events related to that user.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param block_hash [String] Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [GetBlockDetailsByBlockHashFromCallbackR]
    def get_block_details_by_block_hash_from_callback(blockchain, network, block_hash, opts = {})
      data, _status_code, _headers = get_block_details_by_block_hash_from_callback_with_http_info(blockchain, network, block_hash, opts)
      data
    end

    # Get Block Details By Block Hash From Callback
    # This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific block by providing the &#x60;blockHash&#x60; attribute from the Event it takes part in and after making check that the customer in question does have a subscription for this block. It applies only for Events related to that user.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param block_hash [String] Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [Array<(GetBlockDetailsByBlockHashFromCallbackR, Integer, Hash)>] GetBlockDetailsByBlockHashFromCallbackR data, response status code and response headers
    def get_block_details_by_block_hash_from_callback_with_http_info(blockchain, network, block_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallbackDataApi.get_block_details_by_block_hash_from_callback ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling CallbackDataApi.get_block_details_by_block_hash_from_callback"
      end
      # verify enum value
      allowable_values = ["bitcoin", "bitcoin-cash", "litecoin", "dash", "dogecoin", "ethereum", "binance-smart-chain", "ethereum-classic", "zilliqa", "xrp", "zcash", "tron", "polygon"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling CallbackDataApi.get_block_details_by_block_hash_from_callback"
      end
      # verify enum value
      allowable_values = ["mainnet", "testnet", "mordor", "nile", "mumbai", "goerli"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'block_hash' is set
      if @api_client.config.client_side_validation && block_hash.nil?
        fail ArgumentError, "Missing the required parameter 'block_hash' when calling CallbackDataApi.get_block_details_by_block_hash_from_callback"
      end
      # resource path
      local_var_path = '/blockchain-events/{blockchain}/{network}/blocks/hash/{blockHash}'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s)).sub('{' + 'blockHash' + '}', CGI.escape(block_hash.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetBlockDetailsByBlockHashFromCallbackR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CallbackDataApi.get_block_details_by_block_hash_from_callback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallbackDataApi#get_block_details_by_block_hash_from_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Block Details By Block Height From Callback
    # This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for the specific Block by providing the `blockHeight` attribute from the Event it takes part in. It applies only for Events related to that user.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param block_height [String] Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [GetBlockDetailsByBlockHeightFromCallbackR]
    def get_block_details_by_block_height_from_callback(blockchain, network, block_height, opts = {})
      data, _status_code, _headers = get_block_details_by_block_height_from_callback_with_http_info(blockchain, network, block_height, opts)
      data
    end

    # Get Block Details By Block Height From Callback
    # This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for the specific Block by providing the &#x60;blockHeight&#x60; attribute from the Event it takes part in. It applies only for Events related to that user.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param block_height [String] Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \&quot;Genesis block\&quot;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [Array<(GetBlockDetailsByBlockHeightFromCallbackR, Integer, Hash)>] GetBlockDetailsByBlockHeightFromCallbackR data, response status code and response headers
    def get_block_details_by_block_height_from_callback_with_http_info(blockchain, network, block_height, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallbackDataApi.get_block_details_by_block_height_from_callback ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling CallbackDataApi.get_block_details_by_block_height_from_callback"
      end
      # verify enum value
      allowable_values = ["bitcoin", "bitcoin-cash", "litecoin", "dash", "dogecoin", "ethereum", "binance-smart-chain", "ethereum-classic", "zilliqa", "xrp", "zcash", "tron", "polygon"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling CallbackDataApi.get_block_details_by_block_height_from_callback"
      end
      # verify enum value
      allowable_values = ["mainnet", "testnet", "mordor", "nile", "mumbai", "goerli"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'block_height' is set
      if @api_client.config.client_side_validation && block_height.nil?
        fail ArgumentError, "Missing the required parameter 'block_height' when calling CallbackDataApi.get_block_details_by_block_height_from_callback"
      end
      # resource path
      local_var_path = '/blockchain-events/{blockchain}/{network}/blocks/height/{blockHeight}'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s)).sub('{' + 'blockHeight' + '}', CGI.escape(block_height.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetBlockDetailsByBlockHeightFromCallbackR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CallbackDataApi.get_block_details_by_block_height_from_callback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallbackDataApi#get_block_details_by_block_height_from_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Transaction Details By Transaction ID From Callback
    # This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific transaction from the Event it takes part in by providing the `transactionId` attribute. It applies only for Events related to that user.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param transaction_id [String] Represents the unique identifier of a transaction, i.e. it could be transactionId in UTXO-based protocols like Bitcoin, and transaction hash in Ethereum blockchain.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [GetTransactionDetailsByTransactionIDFromCallbackR]
    def get_transaction_details_by_transaction_id_from_callback(blockchain, network, transaction_id, opts = {})
      data, _status_code, _headers = get_transaction_details_by_transaction_id_from_callback_with_http_info(blockchain, network, transaction_id, opts)
      data
    end

    # Get Transaction Details By Transaction ID From Callback
    # This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific transaction from the Event it takes part in by providing the &#x60;transactionId&#x60; attribute. It applies only for Events related to that user.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param transaction_id [String] Represents the unique identifier of a transaction, i.e. it could be transactionId in UTXO-based protocols like Bitcoin, and transaction hash in Ethereum blockchain.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [Array<(GetTransactionDetailsByTransactionIDFromCallbackR, Integer, Hash)>] GetTransactionDetailsByTransactionIDFromCallbackR data, response status code and response headers
    def get_transaction_details_by_transaction_id_from_callback_with_http_info(blockchain, network, transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallbackDataApi.get_transaction_details_by_transaction_id_from_callback ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling CallbackDataApi.get_transaction_details_by_transaction_id_from_callback"
      end
      # verify enum value
      allowable_values = ["bitcoin", "ethereum", "bitcoin-cash", "litecoin", "dash", "dogecoin", "zcash", "ethereum-classic", "binance-smart-chain", "zilliqa", "xrp", "tron", "polygon"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling CallbackDataApi.get_transaction_details_by_transaction_id_from_callback"
      end
      # verify enum value
      allowable_values = ["mainnet", "testnet", "mordor", "nile", "mumbai", "goerli"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling CallbackDataApi.get_transaction_details_by_transaction_id_from_callback"
      end
      # resource path
      local_var_path = '/blockchain-events/{blockchain}/{network}/transactions/{transactionId}'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s)).sub('{' + 'transactionId' + '}', CGI.escape(transaction_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetTransactionDetailsByTransactionIDFromCallbackR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"CallbackDataApi.get_transaction_details_by_transaction_id_from_callback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallbackDataApi#get_transaction_details_by_transaction_id_from_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
