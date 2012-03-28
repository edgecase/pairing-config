gem 'rspec-rails', :group => [:development, :test, :cucumber]

after_bundler do
  generate 'rspec:install'
end
