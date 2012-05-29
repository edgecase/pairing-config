gem 'devise', '~> 2.0.4'

after_bundler do
  generate 'devise:install', '-q'
  model_name = ask("What would you like the user model to be called? [DEFAULT: user]", :yellow)
  model_name = "user" if model_name.blank?
  generate "devise", model_name
  application "config.action_mailer.default_url_options = { :host => 'localhost:3000' }"
  application "config.assets.initialize_on_precompile = false", :env => "production"
  add_to_readme 'Technology', "\n###Devise\n\nUsing Devise on model '#{model_name}'"
end


