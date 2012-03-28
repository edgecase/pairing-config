gem_group :cucumber do
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'capybara-webkit'
end

after_bundler do
  generate 'cucumber:install'
  inject_into_file 'features/support/env.rb', "\nCapybara.javascript_driver = :webkit", :after => 'Capybara.default_selector = :css'
end
