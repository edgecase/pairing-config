require File.join(File.dirname(__FILE__), 'core_extensions.rb')

required = [
  'check_rails_version',
  'standard_gems',
  'recipe_generator',
  'rspec',
  'cucumber',
  'factory_girl',
  'devise',
  'postgres',
  'haml',
  'twitter',
  'facebook',
  'markdown',
  'file_upload',
  'leftovers',
  'readme',
  'heroku'
].map{|r| File.join(RECIPES_ROOT, "#{r}.rb")}

optional = [
  'error_reporting'
]

bootstrap(required, optional)

