gem 'haml-rails', '~> 0.3.4'

after_bundler do
  add_view 'application.html.haml', 'layouts/application.html.haml'
  run 'rm app/views/layouts/application.html.erb'
end

