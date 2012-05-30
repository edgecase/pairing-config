require File.join(File.dirname(__FILE__), 'core_extensions.rb')

required = [
  'application',
  'cleanup',
  'cucumber',
  'factory_girl',
  'gem',
  'gitignore',
  'haml',
  'rspec',
  'simple_form'
].map{|r| File.join(RECIPES_ROOT, 'required', "#{r}.rb")}

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

