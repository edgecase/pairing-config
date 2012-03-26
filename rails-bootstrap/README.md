# Rails Templater

This is a template which allows creating new Ruby on Rails 3 applications quickly using some opinionated defaults. It is inspired by ffmike's [BigOldRailsTemplate](http://github.com/ffmike/BigOldRailsTemplate) Rails 2 template project. To use templater with your Rails apps, use the -m switch when creating your application:

After cloning the rails-templater to your hard drive, you can generate a new app like so:

If you want to use Active Record with MySql:
    rails new application_name -JT -d mysql -m /path/to/rails-templater/templater.rb
    
If you want to use Mongo DB with Mongoid:
    rails new application_name -JOT -m /path/to/rails-templater/templater.rb

## For use with RVM (recommended)

To have a hermetic gem environment, it is advisable to create a gemset just for your new rails app. To create a new rails app with its own gemset:

* Clone rails-templater to your hard drive
* Run the bootstrap.rb file with the RVM installed rubie and the name of your app as arguments
  
    ruby /path/to/rails-templater/bootstrap.rb [rvm-rubie] [name of new app]
  
This will:

* create a new gemset in the RVM rubie you specified and give it the name you chose for your app
* change into the new gemset (start using it)
* install the bundler and rails gem into your new gemset
* run the command to generate a new rails app with the name you picked

Note that the line to generate the new rails app assumes that you want Active Record/MySql. If you intend to use Mongo, then just change the last line in bootstrap.rb from
  
    system("rails new #{app_name} -JT -d mysql -m #{template_file}")
  
to:
  
    system("rails new #{app_name} -JOT -m #{template_file}")
  
## Generated Application

Rails Templater will generate the following:

### Ruby on Rails

* Uses [Haml](http://haml-lang.com) as the template engine
* Uses [Sass](http://sass-lang.com) for generating CSS
* [jQuery](http://jquery.com/) for JavaScript over Prototype
* Optionally uses [Compass](http://compass-style.org) for design with the blueprint/semantic framework

## Database

* Uses Active Record as the default ORM
* Optionally uses [Mongoid](http://mongoid.org/) as the Object Document Model

## Testing

* [RSpec](http://github.com/rspec/rspec) for testing
* [factory_girl](http://github.com/thoughtbot/factory_girl) for fixture replacement
* [remarkable](http://github.com/remarkable/remarkable) for ActiveModel RSpec matchers
* Optionally uses [Cucumber](http://github.com/aslakhellesoy/cucumber-rails) for integration tests
    
## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Send me a pull request. Bonus points for topic branches.
