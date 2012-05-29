after_bundler do
  repo = "git@github.com:edgecase/#{app_name}.git"

  git :init
  git :add => "."
  git :commit => "-m 'Created new application using #{__FILE__}'"
  git :remote => "add origin #{repo}"
end

