# Rails Bootstrap

This is a template which allows creating new Ruby on Rails 3 applications quickly using some opinionated defaults.

## Usage

    # Create a new rails project with name app_name in the current directory
    rails-bootstrap <app_name>

## Generated Application

Rails bootstrap will generate the following:

### Ruby on Rails

* [Haml](http://haml-lang.com) as the template engine
* [Sass](http://sass-lang.com) for generating CSS
* [simple_form](https://github.com/plataformatec/simple_form) for form building
* [jQuery](http://jquery.com/) for JavaScript over Prototype
* [annotate](https://github.com/ctran/annotate_models) for annotating your model files with schema info
* [simple_enum](https://github.com/lwe/simple_enum) for easy to use enum functionality

### Database

* Uses Active Record as the default ORM against sqllite

### Testing

* [RSpec](http://github.com/rspec/rspec) for testing
* [factory_girl](http://github.com/thoughtbot/factory_girl) for fixture replacement
* [Cucumber](http://github.com/aslakhellesoy/cucumber-rails) for integration tests
* [Capybara](https://github.com/jnicklas/capybara) for headless driving if integration tests
* [Capybara-webkit](https://github.com/thoughtbot/capybara-webkit) for integration testing of javascript

### Smart Defaults

* No generation of view, controller, route specs from scaffolding
* No generation of css or helpers from scaffolding

### Optionally installed

* [compass](http://compass-style.org) for awesome css development
* [devise](https://github.com/plataformatec/devise) for super easy authentication
* [pry](https://github.com/pry/pry) rails console and debugger replacement
* [vcr](https://github.com/myronmarston/vcr) for record / playback of external web requests
* Disable coffee script
