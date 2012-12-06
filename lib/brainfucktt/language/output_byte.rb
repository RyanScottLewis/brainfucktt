require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    # .
    class OutputByte < Node
      
      # Output the byte at the pointer as an ASCII character.
      def run(parser)
        parser.output.print parser.data[parser.pointer].chr
      end
      
    end
    
  end
end
