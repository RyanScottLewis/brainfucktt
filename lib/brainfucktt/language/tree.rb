require 'brainfucktt/node'

module Brainfucktt
  module Language
    
    class Tree < Node
      attr_accessor :data
      
      def run(parser)
        elements.each { |element| element.run(parser) }
      end
    end
    
  end
end
