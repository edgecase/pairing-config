gem 'haml-rails', '~> 0.3.4'

after_bundler do
  remove_file 'app/views/layouts/application.html.erb'
  add_view 'application.html.haml', 'layouts/application.html.haml'
end

