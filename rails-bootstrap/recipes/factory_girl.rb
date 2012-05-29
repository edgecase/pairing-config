insert_into_file 'Gemfile', :after => "group :test do\n" do
  "  gem 'factory_girl_rails', '~> 3.0.0'\n"
end

