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
  class CreateSingleTransactionRequestFromAddressWithoutFeePriorityRI
    # Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security).
    attr_accessor :callback_secret_key

    # Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. `We support ONLY httpS type of protocol`.
    attr_accessor :callback_url

    # Represents the public address, which is a compressed and shortened form of a public key. The classic address is shown when the source address is an x-Address.
    attr_accessor :classic_address

    # Represents an optional note to add a free text in, explaining or providing additional detail on the transaction request.
    attr_accessor :note

    # Defines the destination for the transaction, i.e. the recipient(s).
    attr_accessor :recipient

    attr_accessor :sender

    # Represents a unique identifier of the transaction request (the request sent to make a transaction), which helps in identifying which callback and which `referenceId` concern that specific transaction request.
    attr_accessor :transaction_request_id

    # Defines the status of the transaction, e.g. \"created, \"await_approval\", \"pending\", \"prepared\", \"signed\", \"broadcasted\", \"success\", \"failed\", \"rejected\", mined\".
    attr_accessor :transaction_request_status

    attr_accessor :total_amount

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
        :'callback_secret_key' => :'callbackSecretKey',
        :'callback_url' => :'callbackUrl',
        :'classic_address' => :'classicAddress',
        :'note' => :'note',
        :'recipient' => :'recipient',
        :'sender' => :'sender',
        :'transaction_request_id' => :'transactionRequestId',
        :'transaction_request_status' => :'transactionRequestStatus',
        :'total_amount' => :'totalAmount'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'callback_secret_key' => :'String',
        :'callback_url' => :'String',
        :'classic_address' => :'String',
        :'note' => :'String',
        :'recipient' => :'Array<CreateSingleTransactionRequestFromAddressWithoutFeePriorityRIRecipientInner>',
        :'sender' => :'CreateSingleTransactionRequestFromAddressWithoutFeePriorityRISender',
        :'transaction_request_id' => :'String',
        :'transaction_request_status' => :'String',
        :'total_amount' => :'CreateSingleTransactionRequestFromAddressWithoutFeePriorityRITotalAmount'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityRI` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::CreateSingleTransactionRequestFromAddressWithoutFeePriorityRI`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'callback_secret_key')
        self.callback_secret_key = attributes[:'callback_secret_key']
      end

      if attributes.key?(:'callback_url')
        self.callback_url = attributes[:'callback_url']
      end

      if attributes.key?(:'classic_address')
        self.classic_address = attributes[:'classic_address']
      end

      if attributes.key?(:'note')
        self.note = attributes[:'note']
      end

      if attributes.key?(:'recipient')
        if (value = attributes[:'recipient']).is_a?(Array)
          self.recipient = value
        end
      end

      if attributes.key?(:'sender')
        self.sender = attributes[:'sender']
      end

      if attributes.key?(:'transaction_request_id')
        self.transaction_request_id = attributes[:'transaction_request_id']
      end

      if attributes.key?(:'transaction_request_status')
        self.transaction_request_status = attributes[:'transaction_request_status']
      end

      if attributes.key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @recipient.nil?
        invalid_properties.push('invalid value for "recipient", recipient cannot be nil.')
      end

      if @sender.nil?
        invalid_properties.push('invalid value for "sender", sender cannot be nil.')
      end

      if @transaction_request_id.nil?
        invalid_properties.push('invalid value for "transaction_request_id", transaction_request_id cannot be nil.')
      end

      if @transaction_request_status.nil?
        invalid_properties.push('invalid value for "transaction_request_status", transaction_request_status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @recipient.nil?
      return false if @sender.nil?
      return false if @transaction_request_id.nil?
      return false if @transaction_request_status.nil?
      transaction_request_status_validator = EnumAttributeValidator.new('String', ["created", "await-approval", "pending", "prepared", "signed", "broadcasted", "success", "failed", "rejected", "mined", "mined-with-errors"])
      return false unless transaction_request_status_validator.valid?(@transaction_request_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_request_status Object to be assigned
    def transaction_request_status=(transaction_request_status)
      validator = EnumAttributeValidator.new('String', ["created", "await-approval", "pending", "prepared", "signed", "broadcasted", "success", "failed", "rejected", "mined", "mined-with-errors"])
      unless validator.valid?(transaction_request_status)
        fail ArgumentError, "invalid value for \"transaction_request_status\", must be one of #{validator.allowable_values}."
      end
      @transaction_request_status = transaction_request_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          callback_secret_key == o.callback_secret_key &&
          callback_url == o.callback_url &&
          classic_address == o.classic_address &&
          note == o.note &&
          recipient == o.recipient &&
          sender == o.sender &&
          transaction_request_id == o.transaction_request_id &&
          transaction_request_status == o.transaction_request_status &&
          total_amount == o.total_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [callback_secret_key, callback_url, classic_address, note, recipient, sender, transaction_request_id, transaction_request_status, total_amount].hash
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
