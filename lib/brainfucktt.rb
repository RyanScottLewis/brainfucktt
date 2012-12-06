require 'pathname'
require 'forwardable'

__LIB__ ||= Pathname.new(__FILE__).join('..').expand_path
$:.unshift(__LIB__.to_s) unless $:.include?(__LIB__)

require 'brainfucktt/parser'

module Brainfucktt
  class << self
    extend Forwardable
    
    delegate [:parse, :run] => Parser
    
  end
end
