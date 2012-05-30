insert_into_file 'Gemfile', :after => "group :test do\n" do
  %{  gem 'cucumber-rails', '~> 1.3.0'
  gem 'database_cleaner', '~> 0.7.1'
  gem 'capybara-webkit'
  }
end

after_bundler do
  say "If you have any issues installing capybara-webkit, ensure you have QT installed <brew install qt>", :yellow
  generate 'cucumber:install'
  inject_into_file 'features/support/env.rb', "\nCapybara.javascript_driver = :webkit", :after => 'Capybara.default_selector = :css'
  add_to_readme "Testing", "```bash\nbundle exec cucumber\n```"
end


