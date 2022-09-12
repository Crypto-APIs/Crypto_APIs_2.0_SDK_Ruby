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
  class InternalApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Internal Transaction by Transaction Hash and Operation Id
    # Through this endpoint customers can obtain detailed information about a specific Internal Transaction by using the attributes `transactionHash`  (the parent transaction's Hash) and `operationId` (type trace address).    An internal transaction is the result of a smart contract being triggered by an EOA or a subsequent contract call.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param operation_id [String] Represents the unique internal transaction ID in regards to the parent transaction (type trace address).
    # @param transaction_hash [String] String identifier of the parent transaction of the internal transaction represented in CryptoAPIs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [GetInternalTransactionByTransactionHashAndOperationIdR]
    def get_internal_transaction_by_transaction_hash_and_operation_id(blockchain, network, operation_id, transaction_hash, opts = {})
      data, _status_code, _headers = get_internal_transaction_by_transaction_hash_and_operation_id_with_http_info(blockchain, network, operation_id, transaction_hash, opts)
      data
    end

    # Get Internal Transaction by Transaction Hash and Operation Id
    # Through this endpoint customers can obtain detailed information about a specific Internal Transaction by using the attributes &#x60;transactionHash&#x60;  (the parent transaction&#39;s Hash) and &#x60;operationId&#x60; (type trace address).    An internal transaction is the result of a smart contract being triggered by an EOA or a subsequent contract call.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param operation_id [String] Represents the unique internal transaction ID in regards to the parent transaction (type trace address).
    # @param transaction_hash [String] String identifier of the parent transaction of the internal transaction represented in CryptoAPIs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [Array<(GetInternalTransactionByTransactionHashAndOperationIdR, Integer, Hash)>] GetInternalTransactionByTransactionHashAndOperationIdR data, response status code and response headers
    def get_internal_transaction_by_transaction_hash_and_operation_id_with_http_info(blockchain, network, operation_id, transaction_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalApi.get_internal_transaction_by_transaction_hash_and_operation_id ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling InternalApi.get_internal_transaction_by_transaction_hash_and_operation_id"
      end
      # verify enum value
      allowable_values = ["ethereum", "binance-smart-chain", "ethereum-classic"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling InternalApi.get_internal_transaction_by_transaction_hash_and_operation_id"
      end
      # verify enum value
      allowable_values = ["mainnet", "testnet", "mordor", "goerli"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'operation_id' is set
      if @api_client.config.client_side_validation && operation_id.nil?
        fail ArgumentError, "Missing the required parameter 'operation_id' when calling InternalApi.get_internal_transaction_by_transaction_hash_and_operation_id"
      end
      # verify the required parameter 'transaction_hash' is set
      if @api_client.config.client_side_validation && transaction_hash.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_hash' when calling InternalApi.get_internal_transaction_by_transaction_hash_and_operation_id"
      end
      # resource path
      local_var_path = '/blockchain-data/{blockchain}/{network}/transactions/{transactionHash}/internal/{operationId}'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s)).sub('{' + 'operationId' + '}', CGI.escape(operation_id.to_s)).sub('{' + 'transactionHash' + '}', CGI.escape(transaction_hash.to_s))

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
      return_type = opts[:debug_return_type] || 'GetInternalTransactionByTransactionHashAndOperationIdR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"InternalApi.get_internal_transaction_by_transaction_hash_and_operation_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalApi#get_internal_transaction_by_transaction_hash_and_operation_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Internal Transaction Details by Transaction Hash
    # Through this endpoint customers can list internal transactions along with their details by a specific attribute `transactionHash`, which is the parent transaction's Hash.    An internal transaction is the result of a smart contract being triggered by an EOA or a subsequent contract call.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param transaction_hash [String] String identifier of the parent transaction of the internal transaction represented in CryptoAPIs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis. (default to 50)
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items. (default to 0)
    # @return [ListInternalTransactionDetailsByTransactionHashR]
    def list_internal_transaction_details_by_transaction_hash(blockchain, network, transaction_hash, opts = {})
      data, _status_code, _headers = list_internal_transaction_details_by_transaction_hash_with_http_info(blockchain, network, transaction_hash, opts)
      data
    end

    # List Internal Transaction Details by Transaction Hash
    # Through this endpoint customers can list internal transactions along with their details by a specific attribute &#x60;transactionHash&#x60;, which is the parent transaction&#39;s Hash.    An internal transaction is the result of a smart contract being triggered by an EOA or a subsequent contract call.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param transaction_hash [String] String identifier of the parent transaction of the internal transaction represented in CryptoAPIs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis. (default to 50)
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items. (default to 0)
    # @return [Array<(ListInternalTransactionDetailsByTransactionHashR, Integer, Hash)>] ListInternalTransactionDetailsByTransactionHashR data, response status code and response headers
    def list_internal_transaction_details_by_transaction_hash_with_http_info(blockchain, network, transaction_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalApi.list_internal_transaction_details_by_transaction_hash ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling InternalApi.list_internal_transaction_details_by_transaction_hash"
      end
      # verify enum value
      allowable_values = ["ethereum", "binance-smart-chain", "ethereum-classic"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling InternalApi.list_internal_transaction_details_by_transaction_hash"
      end
      # verify enum value
      allowable_values = ["mainnet", "testnet", "mordor", "goerli"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'transaction_hash' is set
      if @api_client.config.client_side_validation && transaction_hash.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_hash' when calling InternalApi.list_internal_transaction_details_by_transaction_hash"
      end
      # resource path
      local_var_path = '/blockchain-data/{blockchain}/{network}/transactions/{transactionHash}/internal'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s)).sub('{' + 'transactionHash' + '}', CGI.escape(transaction_hash.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListInternalTransactionDetailsByTransactionHashR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"InternalApi.list_internal_transaction_details_by_transaction_hash",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalApi#list_internal_transaction_details_by_transaction_hash\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Internal Transactions By Address
    # Through this endpoint customers can list internal transactions by the `address` attribute.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param address [String] String identifier of the address document represented in CryptoAPIs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis. (default to 50)
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items. (default to 0)
    # @return [ListInternalTransactionsByAddressR]
    def list_internal_transactions_by_address(blockchain, network, address, opts = {})
      data, _status_code, _headers = list_internal_transactions_by_address_with_http_info(blockchain, network, address, opts)
      data
    end

    # List Internal Transactions By Address
    # Through this endpoint customers can list internal transactions by the &#x60;address&#x60; attribute.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param address [String] String identifier of the address document represented in CryptoAPIs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis. (default to 50)
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items. (default to 0)
    # @return [Array<(ListInternalTransactionsByAddressR, Integer, Hash)>] ListInternalTransactionsByAddressR data, response status code and response headers
    def list_internal_transactions_by_address_with_http_info(blockchain, network, address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalApi.list_internal_transactions_by_address ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling InternalApi.list_internal_transactions_by_address"
      end
      # verify enum value
      allowable_values = ["ethereum", "ethereum-classic", "binance-smart-chain"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling InternalApi.list_internal_transactions_by_address"
      end
      # verify enum value
      allowable_values = ["mainnet", "mordor", "testnet", "goerli"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'address' is set
      if @api_client.config.client_side_validation && address.nil?
        fail ArgumentError, "Missing the required parameter 'address' when calling InternalApi.list_internal_transactions_by_address"
      end
      # resource path
      local_var_path = '/blockchain-data/{blockchain}/{network}/addresses/{address}/internal'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s)).sub('{' + 'address' + '}', CGI.escape(address.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListInternalTransactionsByAddressR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"InternalApi.list_internal_transactions_by_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalApi#list_internal_transactions_by_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
