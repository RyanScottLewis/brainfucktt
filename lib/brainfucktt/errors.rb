require 'brainfucktt/language_parser'

module Brainfucktt
  
  # Base class for all errors within this library.
  class Error < StandardError
    
  end
  
  # Raised when the value set within a Bytes instance is greater than a byte or less than zero.
  class InvalidByteError < Error
    
    # @return [String] The error message.
    def to_s
      'A byte must be between 0 and 255'
    end
    
  end
  
  class ParserError < Error
    extend Forwardable
    
    def_delegator :@language_parser, :failure_reason, :reason
    def_delegator :@language_parser, :failure_line,   :line
    def_delegator :@language_parser, :failure_column, :column
    
    # @param [Brainfucktt::LanguageParser] language_parser
    def initialize(language_parser)
      raise TypeError unless language_parser.instance_of?(Brainfucktt::LanguageParser)
        
      @language_parser = language_parser
    end
    
    # @return [String]
    def to_s
      reason || "Error at column #{column}, line #{line}"
    end
    
  end
  
end
