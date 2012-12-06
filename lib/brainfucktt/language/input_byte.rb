require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    # ,
    class InputByte < Node
      
      # Input an ASCII character and store it in the byte at the pointer.
      def run(parser)
        parser.byte = get_character(parser.stdin)
      end
      
      protected
      
      def get_character(io)
        begin
          system("stty raw -echo")
          str = io.getc
        ensure
          system("stty -raw echo")
        end
      end
      
    end
    
  end
end
