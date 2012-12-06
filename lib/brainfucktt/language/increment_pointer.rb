require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    # >
    class IncrementPointer < Node
      
      # Increment the pointer.
      def run(parser)
        parser.pointer += 1
      end
      
    end
    
  end
end
