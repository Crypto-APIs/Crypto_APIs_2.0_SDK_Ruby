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
  class GetAddressDetailsRI
    # Represents the total number of confirmed coins transactions for this address, both incoming and outgoing. Applies for coins only **and not** tokens transfers e.g. for Ethereum. `transactionsCount` could result as less than incoming and outgoing transactions put together (e.g. in Bitcoin), due to the fact that one and the same address could be in senders and receivers addresses.
    attr_accessor :transactions_count

    attr_accessor :confirmed_balance

    attr_accessor :total_received

    attr_accessor :total_spent

    # Numeric representation of the received transaction count of the address
    attr_accessor :incoming_transactions_count

    # Numeric representation of the sent transaction count of the address
    attr_accessor :outgoing_transactions_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'transactions_count' => :'transactionsCount',
        :'confirmed_balance' => :'confirmedBalance',
        :'total_received' => :'totalReceived',
        :'total_spent' => :'totalSpent',
        :'incoming_transactions_count' => :'incomingTransactionsCount',
        :'outgoing_transactions_count' => :'outgoingTransactionsCount'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'transactions_count' => :'Integer',
        :'confirmed_balance' => :'GetAddressDetailsRIConfirmedBalance',
        :'total_received' => :'GetAddressDetailsRITotalReceived',
        :'total_spent' => :'GetAddressDetailsRITotalSpent',
        :'incoming_transactions_count' => :'Integer',
        :'outgoing_transactions_count' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::GetAddressDetailsRI` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::GetAddressDetailsRI`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'transactions_count')
        self.transactions_count = attributes[:'transactions_count']
      end

      if attributes.key?(:'confirmed_balance')
        self.confirmed_balance = attributes[:'confirmed_balance']
      end

      if attributes.key?(:'total_received')
        self.total_received = attributes[:'total_received']
      end

      if attributes.key?(:'total_spent')
        self.total_spent = attributes[:'total_spent']
      end

      if attributes.key?(:'incoming_transactions_count')
        self.incoming_transactions_count = attributes[:'incoming_transactions_count']
      end

      if attributes.key?(:'outgoing_transactions_count')
        self.outgoing_transactions_count = attributes[:'outgoing_transactions_count']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @transactions_count.nil?
        invalid_properties.push('invalid value for "transactions_count", transactions_count cannot be nil.')
      end

      if @confirmed_balance.nil?
        invalid_properties.push('invalid value for "confirmed_balance", confirmed_balance cannot be nil.')
      end

      if @total_received.nil?
        invalid_properties.push('invalid value for "total_received", total_received cannot be nil.')
      end

      if @total_spent.nil?
        invalid_properties.push('invalid value for "total_spent", total_spent cannot be nil.')
      end

      if @incoming_transactions_count.nil?
        invalid_properties.push('invalid value for "incoming_transactions_count", incoming_transactions_count cannot be nil.')
      end

      if @outgoing_transactions_count.nil?
        invalid_properties.push('invalid value for "outgoing_transactions_count", outgoing_transactions_count cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @transactions_count.nil?
      return false if @confirmed_balance.nil?
      return false if @total_received.nil?
      return false if @total_spent.nil?
      return false if @incoming_transactions_count.nil?
      return false if @outgoing_transactions_count.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          transactions_count == o.transactions_count &&
          confirmed_balance == o.confirmed_balance &&
          total_received == o.total_received &&
          total_spent == o.total_spent &&
          incoming_transactions_count == o.incoming_transactions_count &&
          outgoing_transactions_count == o.outgoing_transactions_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [transactions_count, confirmed_balance, total_received, total_spent, incoming_transactions_count, outgoing_transactions_count].hash
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
