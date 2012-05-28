require File.join(File.dirname(__FILE__), 'core_extensions.rb')

required = recipes_in('required')
optional = recipes_in('optional')

bootstrap(required, optional)

