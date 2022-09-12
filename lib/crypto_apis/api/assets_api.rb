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
  class AssetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Asset Details By Asset ID
    # Through this endpoint users can obtain information on assets by `assetId`.    The details returned could include information on the latest rate and rate fluctuation of different periods of time - 24 hours, a week, one hour, the encoding of the logo, and more.
    # @param asset_id [String] Defines the unique ID of the specific asset.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [GetAssetDetailsByAssetIDR]
    def get_asset_details_by_asset_id(asset_id, opts = {})
      data, _status_code, _headers = get_asset_details_by_asset_id_with_http_info(asset_id, opts)
      data
    end

    # Get Asset Details By Asset ID
    # Through this endpoint users can obtain information on assets by &#x60;assetId&#x60;.    The details returned could include information on the latest rate and rate fluctuation of different periods of time - 24 hours, a week, one hour, the encoding of the logo, and more.
    # @param asset_id [String] Defines the unique ID of the specific asset.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [Array<(GetAssetDetailsByAssetIDR, Integer, Hash)>] GetAssetDetailsByAssetIDR data, response status code and response headers
    def get_asset_details_by_asset_id_with_http_info(asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.get_asset_details_by_asset_id ...'
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.get_asset_details_by_asset_id"
      end
      # resource path
      local_var_path = '/market-data/assets/assetId/{assetId}'.sub('{' + 'assetId' + '}', CGI.escape(asset_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetAssetDetailsByAssetIDR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AssetsApi.get_asset_details_by_asset_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#get_asset_details_by_asset_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Asset Details By Asset Symbol
    # Through this endpoint users can obtain information on assets by asset symbol.    The details returned could include information on the latest rate and rate fluctuation of different periods of time - 24 hours, a week, one hour, the encoding of the logo, and more.
    # @param asset_symbol [String] Specifies the asset&#39;s unique symbol in the Crypto APIs listings.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [GetAssetDetailsByAssetSymbolR]
    def get_asset_details_by_asset_symbol(asset_symbol, opts = {})
      data, _status_code, _headers = get_asset_details_by_asset_symbol_with_http_info(asset_symbol, opts)
      data
    end

    # Get Asset Details By Asset Symbol
    # Through this endpoint users can obtain information on assets by asset symbol.    The details returned could include information on the latest rate and rate fluctuation of different periods of time - 24 hours, a week, one hour, the encoding of the logo, and more.
    # @param asset_symbol [String] Specifies the asset&#39;s unique symbol in the Crypto APIs listings.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [Array<(GetAssetDetailsByAssetSymbolR, Integer, Hash)>] GetAssetDetailsByAssetSymbolR data, response status code and response headers
    def get_asset_details_by_asset_symbol_with_http_info(asset_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.get_asset_details_by_asset_symbol ...'
      end
      # verify the required parameter 'asset_symbol' is set
      if @api_client.config.client_side_validation && asset_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'asset_symbol' when calling AssetsApi.get_asset_details_by_asset_symbol"
      end
      # resource path
      local_var_path = '/market-data/assets/{assetSymbol}'.sub('{' + 'assetSymbol' + '}', CGI.escape(asset_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetAssetDetailsByAssetSymbolR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AssetsApi.get_asset_details_by_asset_symbol",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#get_asset_details_by_asset_symbol\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
