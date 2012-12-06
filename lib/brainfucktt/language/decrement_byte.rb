require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    class DecrementByte < Node
      def run(parser)
        parser.data[parser.pointer] -= 1
      end
    end
    
  end
end
