require 'brainfucktt/conversion_helpers'

module Brainfucktt
  
  # A Byte.
  class Byte
    include ConversionHelpers
    include Comparable
    
    # Set the value of the Byte instance at the given offset.
    # 
    # @param [Byte, Integer, #to_i] value
    # @raise [Brainfucktt::InvalidByteError] When the given value cannot be converted into an Integer or is not between 0 and 255.
    def initialize(value=0)
      @value = convert_to_integer(value)
    end
    
    # Add to this Byte instance's value.
    # 
    # @param [Byte, Integer, #to_i] value
    # @raise [Brainfucktt::InvalidByteError] When the given value cannot be converted into an Integer or is not between 0 and 255.
    # @return [Integer] The new value.
    def +(value)
      @value += convert_to_integer(value)
    end
    
    # Subtract from this Byte instance's value.
    # 
    # @param [Byte, Integer, #to_i] value
    # @raise [Brainfucktt::InvalidByteError] When the given value cannot be converted into an Integer or is not between 0 and 255.
    # @return [Integer] The new value.
    def -(value)
      @value -= convert_to_integer(value)
    end
    
    # Compare with another Byte, Integer, String, etc..
    # 
    # @return [nil, Integer]
    def <=>(other)
      @value <=> convert_to_integer(other)
    end
    
    # Check to see if the given object instance is the same instance as self.
    # 
    # @return [true, false]
    def ==(other)
      self == other
    end
    
    # Check to see if the given object instance as an Integer is the same as the value of
    # this Byte instance.
    # 
    # @return [true, false]
    def eql?(other)
      @value == convert_to_integer(other)
    end
    alias_method :equal?, :eql?
    
    # Check this Byte instance is empty.
    # 
    # @return [true, false]
    def empty?
      @value == 0
    end
    
    # Return the Byte as an Integer
    # 
    # @return [Integer]
    def to_i
      @value
    end
    
    # Return the Byte as a binary string.
    # 
    # @return [String]
    def to_binary
      @value.to_s(2)
    end
    
    # Return the Byte as an ASCII character.
    # 
    # @return [String]
    def to_ascii
      @value.chr
    end
    alias_method :to_s, :to_ascii
    
    # Return the Byte as a hexadecimal string.
    # 
    # @return [String]
    def to_hex
      @value.to_s(16)
    end
    
    # Return the Byte as a binary string.
    # 
    # @return [String]
    def inspect
      "#<#{self.class}:#{object_id.to_s(16)} integer=#{to_i.inspect} hex=#{to_hex.inspect} ascii=#{to_ascii.inspect} binary=#{to_binary.inspect} >"
    end
    
  end
  
end
