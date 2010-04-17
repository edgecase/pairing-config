require 'rubygems'

begin
  require 'wirble'
  Wirble.init
  Wirble.colorize
rescue LoadError => e
  puts "wirble gem not found -- no colors, history, or completion for you"
end

begin
  require 'ap'
rescue LoadError => e
  puts "awesome_print gem not found -- install and use 'ap' to print ruby objects awesomely"
end

alias q exit

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true

IRB.conf[:IRB_RC] = proc do |conf|
  name = "irb: "
  name = "rails: " if $0 == 'irb' && ENV['RAILS_ENV'] 
  leader = " " * name.length
  conf.prompt_i = "#{name}"
  conf.prompt_s = leader + '\-" '
  conf.prompt_c = leader + '\-+ '
  conf.return_format = ('=' * (name.length - 2)) + "> %s\n"
end

class Object
  def my_methods(include_inherited = false)
    ignored_methods = include_inherited ? Object.methods : self.class.superclass.instance_methods
    (self.methods - ignored_methods).sort
  end
end


######### RAILS ONLY

if $0 == 'irb' && ENV['RAILS_ENV'] 
  require 'logger'
  Object.const_set(:RAILS_DEFAULT_LOGGER, Logger.new(STDOUT))
end

