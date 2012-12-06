require_relative '../lib/brainfucktt'

# "Hello World!" written in Brainfuck
code = '++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.'

p Brainfucktt.run(code)
