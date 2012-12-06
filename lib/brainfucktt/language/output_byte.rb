require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    class OutputByte < Node
      def run(parser)
        parser.output.print parser.data[parser.pointer].chr
      end
    end
    
  end
end
