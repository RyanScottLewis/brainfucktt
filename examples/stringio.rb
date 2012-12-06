require_relative '../lib/brainfucktt'

require 'stringio'

# "Hello World!" written in Brainfuck
code = '++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.'

output = StringIO.new
Brainfucktt.run(code, output: output)

p output.string # => "Hello World!\n"
