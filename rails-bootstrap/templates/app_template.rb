require File.join(File.dirname(__FILE__), '..', 'lib', 'rails_bootstrap', 'core_extensions')

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

# hack to overide bundler running by default at the end of the process since
# we already ran it...
def run_bundle
end

bootstrap(required, optional)

