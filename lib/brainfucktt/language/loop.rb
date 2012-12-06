require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    class Loop < Node
      def run(parser)
        elements.first.run(parser) until parser.data[parser.pointer] == 0
      end
    end
    
  end
end
