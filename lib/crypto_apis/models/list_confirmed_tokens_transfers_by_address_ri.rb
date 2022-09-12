=begin
#CryptoAPIs

#Crypto APIs is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2021-03-20
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1-SNAPSHOT

=end

require 'date'
require 'time'

module CryptoApis
  class ListConfirmedTokensTransfersByAddressRI
    # Represents the contract address of the token, which controls its logic. It is not the address that holds the tokens.
    attr_accessor :contract_address

    # Defines the block height in which this transaction was confirmed/mined.
    attr_accessor :mined_in_block_height

    # Defines the address to which the recipient receives the transferred tokens.
    attr_accessor :recipient_address

    # Defines the address from which the sender transfers tokens.
    attr_accessor :sender_address

    # Defines the decimals of the token, i.e. the number of digits that come after the decimal coma of the token.
    attr_accessor :token_decimals

    # Represents the unique token identifier.
    attr_accessor :token_id

    # Defines the token's name as a string.
    attr_accessor :token_name

    # Defines the token symbol by which the token contract is known. It is usually 3-4 characters in length.
    attr_accessor :token_symbol

    # Defines the specific token type.
    attr_accessor :token_type

    # Defines the token amount of the transfer.
    attr_accessor :tokens_amount

    # Represents the hash of the transaction, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
    attr_accessor :transaction_hash

    # Defines the specific time/date when the transaction was created in Unix Timestamp.
    attr_accessor :transaction_timestamp

    attr_accessor :transaction_fee

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'contract_address' => :'contractAddress',
        :'mined_in_block_height' => :'minedInBlockHeight',
        :'recipient_address' => :'recipientAddress',
        :'sender_address' => :'senderAddress',
        :'token_decimals' => :'tokenDecimals',
        :'token_id' => :'tokenId',
        :'token_name' => :'tokenName',
        :'token_symbol' => :'tokenSymbol',
        :'token_type' => :'tokenType',
        :'tokens_amount' => :'tokensAmount',
        :'transaction_hash' => :'transactionHash',
        :'transaction_timestamp' => :'transactionTimestamp',
        :'transaction_fee' => :'transactionFee'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'contract_address' => :'String',
        :'mined_in_block_height' => :'Integer',
        :'recipient_address' => :'String',
        :'sender_address' => :'String',
        :'token_decimals' => :'Integer',
        :'token_id' => :'String',
        :'token_name' => :'String',
        :'token_symbol' => :'String',
        :'token_type' => :'String',
        :'tokens_amount' => :'String',
        :'transaction_hash' => :'String',
        :'transaction_timestamp' => :'Integer',
        :'transaction_fee' => :'ListTokensTransfersByTransactionHashRITransactionFee'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::ListConfirmedTokensTransfersByAddressRI` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::ListConfirmedTokensTransfersByAddressRI`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'contract_address')
        self.contract_address = attributes[:'contract_address']
      end

      if attributes.key?(:'mined_in_block_height')
        self.mined_in_block_height = attributes[:'mined_in_block_height']
      end

      if attributes.key?(:'recipient_address')
        self.recipient_address = attributes[:'recipient_address']
      end

      if attributes.key?(:'sender_address')
        self.sender_address = attributes[:'sender_address']
      end

      if attributes.key?(:'token_decimals')
        self.token_decimals = attributes[:'token_decimals']
      end

      if attributes.key?(:'token_id')
        self.token_id = attributes[:'token_id']
      end

      if attributes.key?(:'token_name')
        self.token_name = attributes[:'token_name']
      end

      if attributes.key?(:'token_symbol')
        self.token_symbol = attributes[:'token_symbol']
      end

      if attributes.key?(:'token_type')
        self.token_type = attributes[:'token_type']
      end

      if attributes.key?(:'tokens_amount')
        self.tokens_amount = attributes[:'tokens_amount']
      end

      if attributes.key?(:'transaction_hash')
        self.transaction_hash = attributes[:'transaction_hash']
      end

      if attributes.key?(:'transaction_timestamp')
        self.transaction_timestamp = attributes[:'transaction_timestamp']
      end

      if attributes.key?(:'transaction_fee')
        self.transaction_fee = attributes[:'transaction_fee']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @contract_address.nil?
        invalid_properties.push('invalid value for "contract_address", contract_address cannot be nil.')
      end

      if @mined_in_block_height.nil?
        invalid_properties.push('invalid value for "mined_in_block_height", mined_in_block_height cannot be nil.')
      end

      if @recipient_address.nil?
        invalid_properties.push('invalid value for "recipient_address", recipient_address cannot be nil.')
      end

      if @sender_address.nil?
        invalid_properties.push('invalid value for "sender_address", sender_address cannot be nil.')
      end

      if @token_decimals.nil?
        invalid_properties.push('invalid value for "token_decimals", token_decimals cannot be nil.')
      end

      if @token_name.nil?
        invalid_properties.push('invalid value for "token_name", token_name cannot be nil.')
      end

      if @token_symbol.nil?
        invalid_properties.push('invalid value for "token_symbol", token_symbol cannot be nil.')
      end

      if @token_type.nil?
        invalid_properties.push('invalid value for "token_type", token_type cannot be nil.')
      end

      if @transaction_hash.nil?
        invalid_properties.push('invalid value for "transaction_hash", transaction_hash cannot be nil.')
      end

      if @transaction_timestamp.nil?
        invalid_properties.push('invalid value for "transaction_timestamp", transaction_timestamp cannot be nil.')
      end

      if @transaction_fee.nil?
        invalid_properties.push('invalid value for "transaction_fee", transaction_fee cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @contract_address.nil?
      return false if @mined_in_block_height.nil?
      return false if @recipient_address.nil?
      return false if @sender_address.nil?
      return false if @token_decimals.nil?
      return false if @token_name.nil?
      return false if @token_symbol.nil?
      return false if @token_type.nil?
      return false if @transaction_hash.nil?
      return false if @transaction_timestamp.nil?
      return false if @transaction_fee.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          contract_address == o.contract_address &&
          mined_in_block_height == o.mined_in_block_height &&
          recipient_address == o.recipient_address &&
          sender_address == o.sender_address &&
          token_decimals == o.token_decimals &&
          token_id == o.token_id &&
          token_name == o.token_name &&
          token_symbol == o.token_symbol &&
          token_type == o.token_type &&
          tokens_amount == o.tokens_amount &&
          transaction_hash == o.transaction_hash &&
          transaction_timestamp == o.transaction_timestamp &&
          transaction_fee == o.transaction_fee
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [contract_address, mined_in_block_height, recipient_address, sender_address, token_decimals, token_id, token_name, token_symbol, token_type, tokens_amount, transaction_hash, transaction_timestamp, transaction_fee].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = CryptoApis.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
