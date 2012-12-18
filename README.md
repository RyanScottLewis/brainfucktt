# Brainfucktt

A [Brainfuck][brainfuck] interpreter built in [Ruby][ruby] using [Treetop][treetop] on [treetop_bootstrap][treetop_bootstrap].

Brainfuck is an eight-instruction turing-clomplete programming language created in 1993
by Urban Müller, based on the more formal programming language [P′′][p''] created by Corrado
Böhm in 1964.

It is designed to challenge and amuse programmers, and is not made to be suitable for 
practical use.

## Install

### Bundler: `gem 'brainfucktt'`

### RubyGems: `gem install brainfucktt`

## Brainfuck

### Instructions

`>` Increment the data pointer (to point to the next cell to the right).

`<` Decrement the data pointer (to point to the next cell to the left).

`+` Increment (increase by one) the byte at the data pointer.

`-` Decrement (decrease by one) the byte at the data pointer.

`.` Output the byte at the data pointer as an ASCII encoded character.

`,` Accept one byte of input, storing its value in the byte at the data pointer.

`[` If the byte at the data pointer is zero, then instead of moving the instruction pointer forward to the next command, jump it forward to the command after the matching `]` command.

`]` If the byte at the data pointer is nonzero, then instead of moving the instruction pointer forward to the next command, jump it back to the command after the matching `[` command.

### Comments

Any character besides one of the 8 instructions above is not parsed and will be regarded as a comment and ignored.

## Usage

### Running

```ruby
require 'brainfucktt'

# "Hello World!" written in Brainfuck
code = '++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.'

Brainfucktt.run(code)
```

### Parsing

```ruby
require 'brainfucktt'

# "Hello World!" written in Brainfuck
code = '++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.'
parser = Brainfucktt.parse(code)

# Print out the AST of the code
p parser.tree

# Run the code within Ruby
parser.run
```

### StringIO

Sometimes you do not want to use STDIN or STDOUT for the I/O of the Brainfuck program.

To do that, you must use the stdlib `stringio` and pass the `:input` and `:output` options to the `run` method:

```ruby
require 'brainfucktt'
require 'stringio'

# "Hello World!" written in Brainfuck
code = '++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.'

output = StringIO.new
Brainfucktt.run(code, output: output)

p output.string # => "Hello World!\n"
```

## Copyright

Copyright © 2012 Ryan Scott Lewis <ryan@rynet.us>.

The MIT License (MIT) - See LICENSE for further details.

[brainfuck]: http://www.muppetlabs.com/~breadbox/bf/
[ruby]: http://ruby-lang.org
[treetop]: http://treetop.rubyforge.org
[p'']: http://en.wikipedia.org/wiki/P%E2%80%B2%E2%80%B2
[treetop_bootstrap]: https://github.com/RyanScottLewis/treetop_bootstrap
