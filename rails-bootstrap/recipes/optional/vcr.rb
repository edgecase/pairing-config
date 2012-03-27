gem 'vcr', :group => [:test, :cucumber]
gem 'webmock', :group => [:test, :cucumber]

after_bundler 1 do
  create_file "features/support/vcr.rb", <<-eos
require 'vcr'

VCR.configure do |c|
  c.hook_into :webmock
  c.ignore_localhost = true
  c.cassette_library_dir = 'features/cassettes'
  c.allow_http_connections_when_no_cassette = true
  c.default_cassette_options = { :record => :new_episodes, :re_record_interval => 7.days }
end

VCR.cucumber_tags do |t|
  t.tag '@vcr'
end
  eos

  create_file "spec/support/vcr.rb", <<-eos
require 'vcr'

VCR.configure do |c|
  c.hook_into :webmock
  c.ignore_localhost = true
  c.cassette_library_dir = 'spec/cassettes'
  c.allow_http_connections_when_no_cassette = true
  c.default_cassette_options = { :record => :new_episodes, :re_record_interval => 7.days }
end

RSpec.configure do |c|
  c.extend VCR::RSpec::Macros
end
  eos

  say <<-eos

    VCR has been configured with Cucumber to:
      1. Use cassettes for scenarios tagged @vcr
      2. Record new web requests for tagged scenarios
      3. Re-record them every 7 days
      4. Ignore requests to localhost (we assume these to be fast)
      5. Store cassettes in features/cassetes
      6. Ignore requests to external resources for scenarios that are not tagged @vcr

    and with RSpec to:
      1. Record new web requests for scenarios using the VCR RSpec macros
      2. Re-record them every 7 days
      3. Ignore requests to localhost (we assume these to be fast)
      4. Store cassettes in spec/cassetes
      5. Ignore requests to external resources for specs not explicitly using vcr

    If you are integrating with services that require sensitive data such as API
    keys, you may wish to set the .filter_sensitive_data option to replace the
    sensitive info with a dummy value.
  eos
end
