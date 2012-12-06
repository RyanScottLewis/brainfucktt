require 'pathname'

Dir[ Pathname.new(__FILE__).join('..', 'language').expand_path.join('**', '*.rb') ].each do |path|
  require path
end

module Brainfucktt
  
  # The container for syntax nodes.
  module Language
    
  end
  
end