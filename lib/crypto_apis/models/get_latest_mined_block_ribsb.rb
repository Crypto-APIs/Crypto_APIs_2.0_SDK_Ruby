=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'date'
require 'time'

module CryptoApis
  # Bitcoin
  class GetLatestMinedBlockRIBSB
    # Represents a mathematical value of how hard it is to find a valid hash for this block.
    attr_accessor :difficulty

    # Represents a random value that can be adjusted to satisfy the proof of work
    attr_accessor :nonce

    # Represents the total size of the block in Bytes.
    attr_accessor :size

    # A sub-unit of BTC equal to 0.000001 BTC, or 100 Satoshi, and is the same as microbitcoin (μBTC). Bits have two-decimal precision.
    attr_accessor :bits

    # Represents a hexadecimal number of all the hashes necessary to produce the current chain. E.g., when converting 0000000000000000000000000000000000000000000086859f7a841475b236fd to a decimal you get 635262017308958427068157 hashes, or 635262 exahashes.
    attr_accessor :chainwork

    # Defines the single and final (root) node of a Merkle tree. It is the combined hash of all transactions' hashes that are part of a blockchain block.
    attr_accessor :merkle_root

    # Defines the numeric representation of the block size excluding the witness data.
    attr_accessor :stripped_size

    # Represents the version of the specific block on the blockchain.
    attr_accessor :version

    # Is the hexadecimal string representation of the block's version.
    attr_accessor :version_hex

    # Represents a measurement to compare the size of different transactions to each other in proportion to the block size limit.
    attr_accessor :weight

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'difficulty' => :'difficulty',
        :'nonce' => :'nonce',
        :'size' => :'size',
        :'bits' => :'bits',
        :'chainwork' => :'chainwork',
        :'merkle_root' => :'merkleRoot',
        :'stripped_size' => :'strippedSize',
        :'version' => :'version',
        :'version_hex' => :'versionHex',
        :'weight' => :'weight'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'difficulty' => :'String',
        :'nonce' => :'Integer',
        :'size' => :'Integer',
        :'bits' => :'String',
        :'chainwork' => :'String',
        :'merkle_root' => :'String',
        :'stripped_size' => :'Integer',
        :'version' => :'Integer',
        :'version_hex' => :'String',
        :'weight' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::GetLatestMinedBlockRIBSB` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::GetLatestMinedBlockRIBSB`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'difficulty')
        self.difficulty = attributes[:'difficulty']
      end

      if attributes.key?(:'nonce')
        self.nonce = attributes[:'nonce']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'bits')
        self.bits = attributes[:'bits']
      end

      if attributes.key?(:'chainwork')
        self.chainwork = attributes[:'chainwork']
      end

      if attributes.key?(:'merkle_root')
        self.merkle_root = attributes[:'merkle_root']
      end

      if attributes.key?(:'stripped_size')
        self.stripped_size = attributes[:'stripped_size']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'version_hex')
        self.version_hex = attributes[:'version_hex']
      end

      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @difficulty.nil?
        invalid_properties.push('invalid value for "difficulty", difficulty cannot be nil.')
      end

      if @nonce.nil?
        invalid_properties.push('invalid value for "nonce", nonce cannot be nil.')
      end

      if @size.nil?
        invalid_properties.push('invalid value for "size", size cannot be nil.')
      end

      if @bits.nil?
        invalid_properties.push('invalid value for "bits", bits cannot be nil.')
      end

      if @chainwork.nil?
        invalid_properties.push('invalid value for "chainwork", chainwork cannot be nil.')
      end

      if @merkle_root.nil?
        invalid_properties.push('invalid value for "merkle_root", merkle_root cannot be nil.')
      end

      if @stripped_size.nil?
        invalid_properties.push('invalid value for "stripped_size", stripped_size cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      if @version_hex.nil?
        invalid_properties.push('invalid value for "version_hex", version_hex cannot be nil.')
      end

      if @weight.nil?
        invalid_properties.push('invalid value for "weight", weight cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @difficulty.nil?
      return false if @nonce.nil?
      return false if @size.nil?
      return false if @bits.nil?
      return false if @chainwork.nil?
      return false if @merkle_root.nil?
      return false if @stripped_size.nil?
      return false if @version.nil?
      return false if @version_hex.nil?
      return false if @weight.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          difficulty == o.difficulty &&
          nonce == o.nonce &&
          size == o.size &&
          bits == o.bits &&
          chainwork == o.chainwork &&
          merkle_root == o.merkle_root &&
          stripped_size == o.stripped_size &&
          version == o.version &&
          version_hex == o.version_hex &&
          weight == o.weight
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [difficulty, nonce, size, bits, chainwork, merkle_root, stripped_size, version, version_hex, weight].hash
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