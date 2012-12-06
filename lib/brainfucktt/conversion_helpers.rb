require 'brainfucktt/errors'

module Brainfucktt
  
  # Helpers for Classes which have methods that accepts a value that need
  # to be converted into a specific type.
  module ConversionHelpers
    
    protected
    
    def convert_to_integer(value)
      raise InvalidByteError unless value.is_a?(Byte) || value.is_a?(Integer) || value.respond_to?(:to_i)
      value = value.to_i unless value.is_a?(Byte) || value.is_a?(Integer)
      value = value.to_i if value.is_a?(Byte)
      
      value
    end
    
    def convert_to_byte(value)
      raise InvalidByteError unless value.is_a?(Byte) || value.is_a?(Integer) || value.respond_to?(:to_i)
      value = value.to_i unless value.is_a?(Byte) || value.is_a?(Integer)
      value = Byte.new(value) unless value.is_a?(Byte)
      
      value
    end
    
    def convert_to_hash(value)
      raise TypeError unless value.is_a?(Hash) || value.respond_to?(:to_hash) || value.respond_to?(:to_h)
      value = value.to_hash rescue value.to_h unless value.is_a?(Hash)
      
      value
    end
    
  end
  
end
