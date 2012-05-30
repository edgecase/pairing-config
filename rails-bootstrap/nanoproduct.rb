require File.join(File.dirname(__FILE__), 'lib', 'rails_bootstrap', 'core_extensions')

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
]

optional = [
  'error_reporting'
]

# hack to overide bundler running by default at the end of the process since
# we already ran it...
def run_bundle
end

bootstrap(required, optional)

