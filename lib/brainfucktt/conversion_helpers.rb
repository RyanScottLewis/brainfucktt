require 'brainfucktt/errors'

module Brainfucktt
  
  # Helpers for Classes which have methods that accepts a value that need
  # to be converted into a specific type.
  module ConversionHelpers
    
    protected
    
    def convert_to_integer(value)
      raise InvalidByteError unless value.is_a?(Integer) || value.respond_to?(:to_i)
      value = value.to_i unless value.is_a?(Integer)
      
      value
    end
    
    def convert_to_byte(value)
      raise InvalidByteError unless value.is_a?(Byte) || value.is_a?(Integer) || value.respond_to?(:to_i)
      value = value.to_i unless value.is_a?(Byte) || value.is_a?(Integer)
      value = Byte.new(value) unless value.is_a?(Byte)
      
      # TODO: Complain about 0 to 255 compliance
      
      value
    end
    
    def convert_to_options(value)
      raise InvalidOptionsError unless value.is_a?(Hash) || value.respond_to?(:to_hash) || value.respond_to?(:to_h)
      value = value.to_hash rescue value.to_h unless value.is_a?(Hash)
      
      value
    end
    
  end
  
end
