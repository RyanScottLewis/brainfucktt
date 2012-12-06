require_relative '../lib/brainfucktt'

# "Hello World!" written in Brainfuck
code = '++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.'

Brainfucktt.run(code)
