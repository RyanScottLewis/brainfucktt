require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    # [ ]
    class Loop < Node
      
      # Run the loop
      def run(parser)
        elements.first.run(parser) until parser.byte.empty?
      end
      
    end
    
  end
end
