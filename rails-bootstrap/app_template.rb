require File.join(File.dirname(__FILE__), 'core_extensions.rb')

required = [
  'application',
  'standard_gems',
  'rspec',
  'cucumber',
  'factory_girl',
  'haml',
  'simple_form',
  'gitignore',
  'cleanup'
].map{|r| File.join(RECIPES_ROOT, "#{r}.rb")}

optional = [
  'compass',
  'devise',
  'disable_coffeescript',
  'postgres',
  'pry',
  'thin',
  'vcr'
].map{|r| File.join(RECIPES_ROOT, 'optional', "#{r}.rb")}

bootstrap(required, optional)

