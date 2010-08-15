require 'rubygems'
require 'rake'

desc "attempt to symlink all dot files from the current user's home directory"
task :symlink do
  symlink(:skip => '.gitconfig')
end

namespace :symlink do
  desc "symlink all dot files (including .gitconfig) from the current user's home directory"
  task :pairing do
    symlink
  end
end

def symlink(options = {})
  dir   = File.dirname(__FILE__)
  files = Dir.glob('.*') - ['.git', '.gitmodules', '.', '..'] - options[:skip].to_a
  existing_files = []
  
  files.each do |file|
    existing_files << "~/#{file}" if File.exists?("#{ENV['HOME']}/#{file}")
  end
  
  if existing_files.any?
    puts "Existing config files were found (#{existing_files.join(' ')}).  Please back them up and remove them first."
  else
    files.each do |file|
      sh("ln -s #{File.join(dir, file)} #{ENV['HOME']}/#{file}")
    end
  end
end
