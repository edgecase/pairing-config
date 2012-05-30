gem 'devise', '~> 2.0.4'
model_name = ask("What would you like the user model to be called? [DEFAULT: user]", :yellow)
model_name = "user" if model_name.blank?

after_bundler do
  # setup
  generate 'devise:install', '-q'
  generate "devise", model_name
  generate "devise:views"

  # testing
  create_file 'spec/support/devise.rb', <<-eos
RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
end
  eos

  # config
  application "config.action_mailer.default_url_options = { :host => 'localhost:3000' }"
  application "config.assets.initialize_on_precompile = false", :env => "production"

  # readme
  add_to_readme 'Technology', "\n###Devise\n\nUsing Devise on model '#{model_name}'"
end


