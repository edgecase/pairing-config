TARGET_RAILS_VERSION = "3.2"

if Rails::VERSION::STRING < TARGET_RAILS_VERSION
  message = "WARNING: It is recommended that you only use this template with Rails #{TARGET_RAILS_VERSION} upwards."
  unless yes? "#{message} Continue? (Y/n)", :red
    run "bundle install" # exiting straight away won't bundle install
    exit 0
  end
end

