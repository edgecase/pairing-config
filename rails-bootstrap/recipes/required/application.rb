after_bundler do
  application <<-END
config.generators do |g|
  g.template_engine :haml
  g.test_framework :rspec, :helper_specs => false, :view_specs => false, :request_specs => false, :routing_specs => false
  g.fixture_replacement :factory_girl, :dir => "spec/factories"
  g.stylesheets false
  g.helper false
end
  END
end
