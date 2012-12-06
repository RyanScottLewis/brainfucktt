require 'brainfucktt/errors'

module Brainfucktt
  
  # Just an Array, but when you set 
  class Bytes < Array
    def [](index)
      result = super
      result.nil? ? 0 : result
    end
    
    def []=(index, value)
      (length..index).each { self << 0 } if self.at(index).nil?
      
      super
    end
  end
  
end
