# commit to git

# note this needs to be called before the Heroku gem (if you're using it)
# so that the heroku command can set up the necessary remote
repo = "git@github.com:edgecase/#{app_name}.git"

git :init
git :add => "."
git :commit => "-a -m 'create initial application'"

git :remote => "add origin #{repo}"

