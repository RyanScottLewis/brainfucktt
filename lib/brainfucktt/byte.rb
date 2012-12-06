require 'brainfucktt/conversion_helpers'

module Brainfucktt
  
  # A Byte.
  class Byte
    include ConversionHelpers
    
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
    
    # Return the Byte as an Integer
    # 
    # @return [Integer]
    def to_i
      @value
    end
    
  end
  
end
