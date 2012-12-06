require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    class InputByte < Node
      def run(parser)
        parser.data[parser.pointer] = get_character(parser.stdin)
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
