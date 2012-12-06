# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "brainfucktt"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Scott Lewis"]
  s.date = "2012-12-06"
  s.description = "A Brainfuck interpreter built using Treetop."
  s.email = "ryan@rynet.us"
  s.files = ["Gemfile", "LICENSE", "README.md", "Rakefile", "VERSION", "brainfucktt.gemspec", "examples/hello_world.rb", "examples/hello_world_with_comments.rb", "examples/stringio.rb", "lib/brainfucktt.rb", "lib/brainfucktt/byte.rb", "lib/brainfucktt/conversion_helpers.rb", "lib/brainfucktt/data.rb", "lib/brainfucktt/errors.rb", "lib/brainfucktt/language.rb", "lib/brainfucktt/language/decrement_byte.rb", "lib/brainfucktt/language/decrement_pointer.rb", "lib/brainfucktt/language/increment_byte.rb", "lib/brainfucktt/language/increment_pointer.rb", "lib/brainfucktt/language/input_byte.rb", "lib/brainfucktt/language/loop.rb", "lib/brainfucktt/language/output_byte.rb", "lib/brainfucktt/language/tree.rb", "lib/brainfucktt/language_parser.treetop", "lib/brainfucktt/node.rb", "lib/brainfucktt/parser.rb"]
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
