require 'treetop/runtime/syntax_node'

module Brainfucktt
  
  # The base class for Brainfucktt syntax nodes in the AST
  class Node < Treetop::Runtime::SyntaxNode
    
    alias_method :elements_with_treetop, :elements
    
    # The children of this Node instance.
    # 
    # @return [<Brainfucktt::Node>]
    def elements
      elements_with_treetop.find_all { |node| node.is_a?(Brainfucktt::Node) } rescue []
    end
    
    # Return the text value of this Node instance.
    # 
    # @return [String]
    def to_s
      text_value
    end
    
    # Print out the AST of this instance node and it's children with indentation.
    # 
    # @return [String]
    def inspect(indent="")
      result = ""
      result << indent
      result << self.class.to_s.sub(/.*:/,'')
      result << " #{to_s} " unless self.is_a?(Language::Tree) || self.is_a?(Language::Loop)
      
      unless elements.empty?
        result << ":"
        elements.each do |e|
          result << "\n#{e.inspect(indent+"  ")}" rescue "\n#{indent} #{e.inspect}"
        end
      end
      
      result
    end
    
  end
  
end
