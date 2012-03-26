require File.join(File.dirname(__FILE__), 'core_extensions.rb')

execute_recipes

inside app_name do
  run 'bundle install'
end

execute_strategies

rake "db:create", :env => 'development'
rake "db:migrate", :env => 'development'
rake "db:test:prepare"

# hack to overide bundler running by default at the end of the process since
# we already ran it...
def run_bundle
end

# commit to git
git :init
git :add => "."
git :commit => "-a -m 'create initial application'"

say <<-eos
  ============================================================================
  Your new Rails application is ready to go.

  Don't forget to scroll up for important messages from installed generators.
eos

