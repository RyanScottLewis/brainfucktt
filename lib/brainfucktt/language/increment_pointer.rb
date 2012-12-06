require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    class IncrementPointer < Node
      def run(parser)
        parser.pointer += 1
      end
    end
    
  end
end
