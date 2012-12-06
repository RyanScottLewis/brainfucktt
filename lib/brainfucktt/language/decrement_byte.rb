require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    # -
    class DecrementByte < Node
      
      # Decrement the byte at the pointer.
      def run(parser)
        parser.byte -= 1
      end
      
    end
    
  end
end
