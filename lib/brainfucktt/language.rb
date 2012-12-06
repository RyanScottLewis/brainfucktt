require 'pathname'

Dir[ Pathname.new(__FILE__).join('..', 'language').expand_path.join('**', '*.rb') ].each do |path|
  require path
end
