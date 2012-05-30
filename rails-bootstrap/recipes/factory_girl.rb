insert_into_file 'Gemfile', :after => "group :test do\n" do
  "  gem 'factory_girl_rails', '~> 3.0.0'\n"
end

after_bundler 1 do
  # require factory girl from rspec and cucumber
  inject_into_file "spec/spec_helper.rb", "\nrequire 'factory_girl'", :after => "require 'rspec/rails'"
  inject_into_file "features/support/env.rb", "\nrequire 'factory_girl/step_definitions'", :after => "require 'cucumber/rails'"
end
