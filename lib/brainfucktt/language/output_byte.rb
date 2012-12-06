require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    # .
    class OutputByte < Node
      
      # Output the byte at the pointer as an ASCII character.
      def run(parser)
        parser.output.print parser.byte.to_s
      end
      
    end
    
  end
end
