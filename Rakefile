require 'rubygems'
require 'rake'

desc "attempt to symlink all dot files from the current user's home directory"
task :symlink do
  symlink
end

namespace :symlink do
  desc "force symlink all dot files (except .gitconfig) from the current user's home directory"
  task :force do
    symlink(:force => true, :skip => '.gitconfig')
  end

  desc "force symlink all dot files (including .gitconfig) from the current user's home directory"
  task :pairing do
    symlink(:force => true)
  end
end

def symlink(options = {})
  dir   = File.dirname(__FILE__)
  force = options[:force] ? '-Ff' : ''
  files = Dir.glob('.*') - ['.git', '.', '..'] - options[:skip].to_a
  
  files.each do |file|
    sh "ln -s #{force} #{File.join(dir, file)} #{ENV['HOME']}/#{file}"
  end
end
