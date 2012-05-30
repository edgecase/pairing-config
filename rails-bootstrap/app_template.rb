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
]

optional = [
  'compass',
  'devise',
  'disable_coffeescript',
  'postgres',
  'pry',
  'thin',
  'vcr'
]

bootstrap(required, optional)

