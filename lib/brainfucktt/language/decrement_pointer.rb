require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    # <
    class DecrementPointer < Node
      
      # Decrement the pointer.
      def run(parser)
        parser.pointer -= 1
      end
      
    end
    
  end
end
