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
  # Defines an `item` as one result.
  class AddressTokensTransactionUnconfirmedDataItem
    # Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    attr_accessor :blockchain

    # Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
    attr_accessor :network

    # Defines the specific address to which the token transaction has been sent and is pending confirmation.
    attr_accessor :address

    # Defines the unique ID of the specific transaction, i.e. its identification number.
    attr_accessor :transaction_id

    # Defines the type of token sent with the transaction, e.g. ERC 20.
    attr_accessor :token_type

    attr_accessor :token

    # Defines whether the transaction is \"incoming\" or \"outgoing\".
    attr_accessor :direction

    # Defines the exact time the transaction has been first accepted into the mempool to await confirmation as timestamp.
    attr_accessor :first_seen_in_mempool_timestamp

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'blockchain' => :'blockchain',
        :'network' => :'network',
        :'address' => :'address',
        :'transaction_id' => :'transactionId',
        :'token_type' => :'tokenType',
        :'token' => :'token',
        :'direction' => :'direction',
        :'first_seen_in_mempool_timestamp' => :'firstSeenInMempoolTimestamp'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'blockchain' => :'String',
        :'network' => :'String',
        :'address' => :'String',
        :'transaction_id' => :'String',
        :'token_type' => :'String',
        :'token' => :'AddressTokensTransactionUnconfirmedToken',
        :'direction' => :'String',
        :'first_seen_in_mempool_timestamp' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::AddressTokensTransactionUnconfirmedDataItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::AddressTokensTransactionUnconfirmedDataItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'blockchain')
        self.blockchain = attributes[:'blockchain']
      end

      if attributes.key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.key?(:'token_type')
        self.token_type = attributes[:'token_type']
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'direction')
        self.direction = attributes[:'direction']
      end

      if attributes.key?(:'first_seen_in_mempool_timestamp')
        self.first_seen_in_mempool_timestamp = attributes[:'first_seen_in_mempool_timestamp']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @blockchain.nil?
        invalid_properties.push('invalid value for "blockchain", blockchain cannot be nil.')
      end

      if @network.nil?
        invalid_properties.push('invalid value for "network", network cannot be nil.')
      end

      if @address.nil?
        invalid_properties.push('invalid value for "address", address cannot be nil.')
      end

      if @transaction_id.nil?
        invalid_properties.push('invalid value for "transaction_id", transaction_id cannot be nil.')
      end

      if @token_type.nil?
        invalid_properties.push('invalid value for "token_type", token_type cannot be nil.')
      end

      if @token.nil?
        invalid_properties.push('invalid value for "token", token cannot be nil.')
      end

      if @direction.nil?
        invalid_properties.push('invalid value for "direction", direction cannot be nil.')
      end

      if @first_seen_in_mempool_timestamp.nil?
        invalid_properties.push('invalid value for "first_seen_in_mempool_timestamp", first_seen_in_mempool_timestamp cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @blockchain.nil?
      return false if @network.nil?
      return false if @address.nil?
      return false if @transaction_id.nil?
      return false if @token_type.nil?
      token_type_validator = EnumAttributeValidator.new('String', ["ERC-20", "ERC-721", "OMNI"])
      return false unless token_type_validator.valid?(@token_type)
      return false if @token.nil?
      return false if @direction.nil?
      direction_validator = EnumAttributeValidator.new('String', ["incoming", "outgoing"])
      return false unless direction_validator.valid?(@direction)
      return false if @first_seen_in_mempool_timestamp.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] token_type Object to be assigned
    def token_type=(token_type)
      validator = EnumAttributeValidator.new('String', ["ERC-20", "ERC-721", "OMNI"])
      unless validator.valid?(token_type)
        fail ArgumentError, "invalid value for \"token_type\", must be one of #{validator.allowable_values}."
      end
      @token_type = token_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direction Object to be assigned
    def direction=(direction)
      validator = EnumAttributeValidator.new('String', ["incoming", "outgoing"])
      unless validator.valid?(direction)
        fail ArgumentError, "invalid value for \"direction\", must be one of #{validator.allowable_values}."
      end
      @direction = direction
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          blockchain == o.blockchain &&
          network == o.network &&
          address == o.address &&
          transaction_id == o.transaction_id &&
          token_type == o.token_type &&
          token == o.token &&
          direction == o.direction &&
          first_seen_in_mempool_timestamp == o.first_seen_in_mempool_timestamp
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [blockchain, network, address, transaction_id, token_type, token, direction, first_seen_in_mempool_timestamp].hash
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
