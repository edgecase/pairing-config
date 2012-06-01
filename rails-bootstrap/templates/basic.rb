require File.join(File.dirname(__FILE__), '..', 'lib', 'rails_bootstrap', 'core_extensions')

required = [
  'check_rails_version',
  'application',
  'standard_gems',
  'recipe_generator',
  'rspec',
  'factory_girl',
  'haml',
  'simple_form',
  'readme',
  'git',
  'gitignore',
  'cleanup',
]

optional = [
  'compass',
  'cucumber',
  'shoulda_matchers',
  'devise',
  'disable-coffeescript',
  'postgres',
  'pry',
  'twitter',
  'facebook',
  'markdown',
  'file_upload',
  'error_reporting',
  'thin',
  'vcr',
  'heroku',
]

# hack to overide bundler running by default at the end of the process since
# we already ran it...
def run_bundle
end

bootstrap(required, optional)

