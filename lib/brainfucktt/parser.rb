require 'polyglot'
require 'treetop'
require 'brainfucktt/errors'
require 'brainfucktt/language'
require 'brainfucktt/language_parser'
require 'brainfucktt/bytes'

module Brainfucktt
  class Parser
    
    class << self
      
      # Get a new or the cached instance of this class.
      # 
      # @return [Brainfucktt::LanguageParser]
      def instance
        @instance ||= LanguageParser.new
      end
      
      # @return [Brainfucktt::Parser]
      def parse(data)
        tree = instance.parse(data)
        raise ParserError, instance unless tree
        
        new(tree)
      end
      
      def run(data, options={})
        parse(data).run(options)
      end
    end
    
    attr_reader :data, :tree, :input, :output
    attr_accessor :pointer
    
    def initialize(tree)
      @data, @tree, @pointer = Bytes.new, tree, 0
    end
    
    def run(options={})
      raise TypeError, :options unless options.is_a?(Hash) || options.respond_to?(:to_hash) || options.respond_to?(:to_h)
      options = options.to_hash rescue options.to_h unless options.is_a?(Hash)
      
      options = { input: STDIN, output: STDOUT }.merge(options)
      
      @input, @output = options.values_at(:input, :output)
      @tree.run(self)
    end
    
  end
end
