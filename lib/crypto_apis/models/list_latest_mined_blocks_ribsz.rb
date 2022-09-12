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
  # Zilliqa
  class ListLatestMinedBlocksRIBSZ
    # Represents a mathematical value of how hard it is to find a valid hash for this block.
    attr_accessor :difficulty

    # Represents the Directory Service block which contains metadata about the miners who participate in the consensus protocol.
    attr_accessor :ds_block

    # Defines how difficult it is to mine the dsBlocks.
    attr_accessor :ds_difficulty

    # Represents a part of the DS Committee which leads the consensus protocol for the epoch.
    attr_accessor :ds_leader

    # Represents the maximum amount of gas allowed in the block in order to determine how many transactions it can fit.
    attr_accessor :gas_limit

    # Defines how much of the gas for the block has been used.
    attr_accessor :gas_used

    attr_accessor :micro_blocks

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'difficulty' => :'difficulty',
        :'ds_block' => :'dsBlock',
        :'ds_difficulty' => :'dsDifficulty',
        :'ds_leader' => :'dsLeader',
        :'gas_limit' => :'gasLimit',
        :'gas_used' => :'gasUsed',
        :'micro_blocks' => :'microBlocks'
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
        :'ds_block' => :'Integer',
        :'ds_difficulty' => :'String',
        :'ds_leader' => :'String',
        :'gas_limit' => :'Integer',
        :'gas_used' => :'Integer',
        :'micro_blocks' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::ListLatestMinedBlocksRIBSZ` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::ListLatestMinedBlocksRIBSZ`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'difficulty')
        self.difficulty = attributes[:'difficulty']
      end

      if attributes.key?(:'ds_block')
        self.ds_block = attributes[:'ds_block']
      end

      if attributes.key?(:'ds_difficulty')
        self.ds_difficulty = attributes[:'ds_difficulty']
      end

      if attributes.key?(:'ds_leader')
        self.ds_leader = attributes[:'ds_leader']
      end

      if attributes.key?(:'gas_limit')
        self.gas_limit = attributes[:'gas_limit']
      end

      if attributes.key?(:'gas_used')
        self.gas_used = attributes[:'gas_used']
      end

      if attributes.key?(:'micro_blocks')
        if (value = attributes[:'micro_blocks']).is_a?(Array)
          self.micro_blocks = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @difficulty.nil?
        invalid_properties.push('invalid value for "difficulty", difficulty cannot be nil.')
      end

      if @ds_block.nil?
        invalid_properties.push('invalid value for "ds_block", ds_block cannot be nil.')
      end

      if @ds_difficulty.nil?
        invalid_properties.push('invalid value for "ds_difficulty", ds_difficulty cannot be nil.')
      end

      if @ds_leader.nil?
        invalid_properties.push('invalid value for "ds_leader", ds_leader cannot be nil.')
      end

      if @gas_limit.nil?
        invalid_properties.push('invalid value for "gas_limit", gas_limit cannot be nil.')
      end

      if @gas_used.nil?
        invalid_properties.push('invalid value for "gas_used", gas_used cannot be nil.')
      end

      if @micro_blocks.nil?
        invalid_properties.push('invalid value for "micro_blocks", micro_blocks cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @difficulty.nil?
      return false if @ds_block.nil?
      return false if @ds_difficulty.nil?
      return false if @ds_leader.nil?
      return false if @gas_limit.nil?
      return false if @gas_used.nil?
      return false if @micro_blocks.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          difficulty == o.difficulty &&
          ds_block == o.ds_block &&
          ds_difficulty == o.ds_difficulty &&
          ds_leader == o.ds_leader &&
          gas_limit == o.gas_limit &&
          gas_used == o.gas_used &&
          micro_blocks == o.micro_blocks
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [difficulty, ds_block, ds_difficulty, ds_leader, gas_limit, gas_used, micro_blocks].hash
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
