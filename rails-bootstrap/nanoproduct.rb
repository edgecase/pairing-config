require File.join(File.dirname(__FILE__), 'core_extensions.rb')


required = [
  'required/application',
  'required/cleanup',
  'required/gem',
  'required/rspec',
  'required/simple_form',
  'required/gitignore'
].map{|r| File.join(RECIPES_PATH, "#{r}.rb")}

optional = [ ]

bootstrap(required, optional)

