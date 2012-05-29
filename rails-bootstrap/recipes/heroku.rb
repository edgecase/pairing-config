after_bundler do
  @heroku_name = app_name.gsub('_', '-')
  if yes?("Create app #{@heroku_name} on Heroku? [Y/n]", :yellow)
    run "heroku create #{@heroku_name} --stack cedar"
  end
  add_to_readme 'How to deploy', %Q{```bash
git push heroku
open http://#{@heroku_name}.herokuapp.com
```}
end


