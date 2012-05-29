insert_into_file 'Gemfile', :after => "group :staging, :production do\n" do
  "  gem 'pg', '~> 0.13.2'\n"
end

