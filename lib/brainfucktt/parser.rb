require 'polyglot'
require 'treetop'
require 'brainfucktt/errors'
require 'brainfucktt/language'
require 'brainfucktt/language_parser'
require 'brainfucktt/bytes'

module Brainfucktt
  
  # The Brainfuck parser.
  class Parser
    
    class << self
      
      # Get a new or the cached instance of this class.
      # 
      # @return [Brainfucktt::LanguageParser]
      def instance
        @instance ||= LanguageParser.new
      end
      
      # Parse the given Brainfuck code.
      # 
      # @param [String, #to_s] code
      # @return [Brainfucktt::Parser]
      def parse(code)
        tree = instance.parse(code)
        raise ParserError, instance unless tree
        
        new(tree)
      end
      
      # Parse and run the given Brainfuck code.
      # 
      # @param [String, #to_s] code
      def run(code, options={})
        parse(code).run(options)
      end
    end
    
    attr_reader :data, :tree, :input, :output
    attr_accessor :pointer
    
    def initialize(tree)
      @data, @tree, @pointer = Bytes.new, tree, 0
    end
      
    # Run the parsed Brainfuck code.
    # 
    # @param [Hash, #to_hash, #to_h] options
    def run(options={})
      options = { input: STDIN, output: STDOUT }.merge( convert_to_hash(options) )
      
      @input, @output = options.values_at(:input, :output)
      @tree.run(self)
    end
    
  end
  
end
