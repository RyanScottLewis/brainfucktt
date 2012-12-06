require 'brainfucktt/conversion_helpers'
require 'brainfucktt/byte'

module Brainfucktt
  
  # An Array of Byte instances.
  class Bytes
    include ConversionHelpers
    
    def initialize
      @bytes = []
    end
    
    # Retrieve the Byte instance at the given offset.
    # 
    # @param [Integer, #to_i] offset
    # @raise [Brainfucktt::InvalidOffsetError] When the given offset cannot be converted into an Integer.
    # @return [Byte] The Byte instance at the given offset.
    def [](offset)
      offset = convert_to_integer(offset)
      self[offset] = 0 if @bytes[offset].nil?
      
      @bytes[offset]
    end
    
    # Set the value of the Byte instance at the given offset.
    # 
    # @param [Integer, #to_i] offset
    # @param [Byte, Integer, #to_i] value
    # @raise [Brainfucktt::InvalidByteError] When the given value cannot be converted into an Integer or is not between 0 and 255.
    # @raise [Brainfucktt::InvalidOffsetError] When the given offset cannot be converted into an Integer.
    # @return [Byte] The Byte instance at the given offset.
    def []=(offset, value)
      expand_to(offset)
      
      @bytes[offset] = convert_to_byte(value)
    end
    
    # Fill from the end of the Bytes collection to the given offset with empty
    # Byte instances, if Bytes collection is less than the given offset.
    # 
    # @param [Integer, #to_i] offset
    # @raise [Brainfucktt::InvalidOffsetError] When the given offset cannot be converted into an Integer.
    # @return [Byte] The Byte instance at the given offset.
    def expand_to(offset)
      offset = convert_to_integer(offset)
      (@bytes.length..offset).each { @bytes << Byte.new } if @bytes.at(offset).nil?
      
      @bytes[offset]
    end
    
  end
  
end
