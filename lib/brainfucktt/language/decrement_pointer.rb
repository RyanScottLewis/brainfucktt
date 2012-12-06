require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    class DecrementPointer < Node
      def run(parser)
        parser.pointer -= 1
      end
    end
    
  end
end
