# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "brainfucktt"
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Scott Lewis"]
  s.date = "2012-12-06"
  s.description = "# Brainfucktt\n\nA [Brainfuck][brainfuck] interpreter built in [Ruby][ruby] using [Treetop][treetop].\n\nBrainfuck is an eight-instruction turing-clomplete programming language created in 1993\nby Urban M\u{fc}ller, based on the more formal programming language [P\u{2032}\u{2032}][p''] created by Corrado\nB\u{f6}hm in 1964.\n\nIt is designed to challenge and amuse programmers, and is not made to be suitable for \npractical use.\n\n## Install\n\n### Bundler: `gem 'brainfucktt'`\n\n### RubyGems: `gem install brainfucktt`\n\n## Brainfuck Instructions\n\n`>` Increment the data pointer (to point to the next cell to the right).\n\n`<` Decrement the data pointer (to point to the next cell to the left).\n\n`+` Increment (increase by one) the byte at the data pointer.\n\n`-` Decrement (decrease by one) the byte at the data pointer.\n\n`.` Output the byte at the data pointer as an ASCII encoded character.\n\n`,` Accept one byte of input, storing its value in the byte at the data pointer.\n\n`[` If the byte at the data pointer is zero, then instead of moving the instruction pointer forward to the next command, jump it forward to the command after the matching `]` command.\n\n`]` If the byte at the data pointer is nonzero, then instead of moving the instruction pointer forward to the next command, jump it back to the command after the matching `[` command.\n\n### Comments\n\nAny character besides one of the 8 instructions above is not parsed and will be regarded as a comment.\n\n## Usage\n\n### Running\n\n```ruby\nrequire 'brainfucktt'\n\n# \"Hello World!\" written in Brainfuck\ncode = '++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.'\n\nBrainfucktt.run(code)\n```\n\n### Parsing\n\n```ruby\nrequire 'brainfucktt'\n\n# \"Hello World!\" written in Brainfuck\ncode = '++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.'\nparser = Brainfucktt.parse(code)\n\n# Print out the AST of the code\np parser.tree\n\n# Run the code within Ruby\nparser.run\n```\n\n### StringIO\n\nSometimes you do now want to use STDIN or STDOUT for the I/O of the Brainfuck program.\n\nTo do that, you must use the stdlib `stringio`:\n\n```ruby\nrequire 'brainfucktt'\nrequire 'stringio'\n\n# \"Hello World!\" written in Brainfuck\ncode = '++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.'\n\noutput = StringIO.new\nBrainfucktt.run(code, output: output)\n\np output.string # => \"Hello World!\\n\"\n```\n\n## Copyright\n\nCopyright \u{a9} 2012 Ryan Scott Lewis <ryan@rynet.us>.\n\nThe MIT License (MIT) - See LICENSE for further details.\n\n[brainfuck]: http://www.muppetlabs.com/~breadbox/bf/\n[ruby]: http://ruby-lang.org\n[treetop]: http://treetop.rubyforge.org\n[p'']: http://en.wikipedia.org/wiki/P%E2%80%B2%E2%80%B2"
  s.email = "ryan@rynet.us"
  s.files = ["Gemfile", "LICENSE", "README.md", "Rakefile", "VERSION", "examples/comments.rb", "examples/hello_world.rb", "examples/stringio.rb", "lib/brainfucktt.rb", "lib/brainfucktt/bytes.rb", "lib/brainfucktt/errors.rb", "lib/brainfucktt/language.rb", "lib/brainfucktt/language/decrement_byte.rb", "lib/brainfucktt/language/decrement_pointer.rb", "lib/brainfucktt/language/increment_byte.rb", "lib/brainfucktt/language/increment_pointer.rb", "lib/brainfucktt/language/input_byte.rb", "lib/brainfucktt/language/loop.rb", "lib/brainfucktt/language/output_byte.rb", "lib/brainfucktt/language/tree.rb", "lib/brainfucktt/language_parser.treetop", "lib/brainfucktt/node.rb", "lib/brainfucktt/parser.rb"]
  s.homepage = "http://github.com/RyanScottLewis/brainfucktt"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "A Brainfuck interpreter built in Ruby using Treetop."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<treetop>, ["~> 1.4"])
      s.add_runtime_dependency(%q<polyglot>, ["~> 0.3"])
      s.add_runtime_dependency(%q<version>, ["~> 1.0"])
      s.add_development_dependency(%q<at>, ["~> 0.1"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 2.1"])
      s.add_development_dependency(%q<guard-yard>, ["~> 2.0"])
      s.add_development_dependency(%q<rb-fsevent>, ["~> 0.9"])
      s.add_development_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_development_dependency(%q<redcarpet>, ["~> 2.2.2"])
      s.add_development_dependency(%q<github-markup>, ["~> 0.7"])
    else
      s.add_dependency(%q<treetop>, ["~> 1.4"])
      s.add_dependency(%q<polyglot>, ["~> 0.3"])
      s.add_dependency(%q<version>, ["~> 1.0"])
      s.add_dependency(%q<at>, ["~> 0.1"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<guard-rspec>, ["~> 2.1"])
      s.add_dependency(%q<guard-yard>, ["~> 2.0"])
      s.add_dependency(%q<rb-fsevent>, ["~> 0.9"])
      s.add_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_dependency(%q<redcarpet>, ["~> 2.2.2"])
      s.add_dependency(%q<github-markup>, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<treetop>, ["~> 1.4"])
    s.add_dependency(%q<polyglot>, ["~> 0.3"])
    s.add_dependency(%q<version>, ["~> 1.0"])
    s.add_dependency(%q<at>, ["~> 0.1"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<guard-rspec>, ["~> 2.1"])
    s.add_dependency(%q<guard-yard>, ["~> 2.0"])
    s.add_dependency(%q<rb-fsevent>, ["~> 0.9"])
    s.add_dependency(%q<fuubar>, ["~> 1.1"])
    s.add_dependency(%q<redcarpet>, ["~> 2.2.2"])
    s.add_dependency(%q<github-markup>, ["~> 0.7"])
  end
end
