gem 'devise'
devise_user_model_name = ask("What would you like the user model to be called? [user]")
devise_user_model_name = "user" if devise_user_model_name.blank?

after_bundler do
  generate "devise:install"
  generate "devise", devise_user_model_name
  generate "devise:views"

  create_file "spec/support/devise.rb", <<-eos
RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
end
  eos

end

