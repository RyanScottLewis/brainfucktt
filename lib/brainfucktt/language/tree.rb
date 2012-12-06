require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    # The syntax tree of the source code or loop.
    class Tree < Node
      attr_accessor :data
      
      # Run the code.
      def run(parser)
        elements.each { |element| element.run(parser) }
      end
    end
    
  end
end
