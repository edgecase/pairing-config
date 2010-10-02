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
  files = Dir.glob('.*') - ['.git', '.gitmodules', '.', '..'] - options[:skip].to_a
  files.each do |file|
    case
      when file_identical?(file) : skip_identical_file(file)
      when replace_all_files?    : link_file(file)
      when file_missing?(file)   : link_file(file)
      else                         prompt_to_link_file(file)
    end
  end
end




# FILE CHECKS
def file_exists?(file)
  File.exists?("#{ENV['HOME']}/#{file}")
end

def file_missing?(file)
  !file_exists?(file)
end

def file_identical?(file)
  File.identical? file, File.join(ENV['HOME'], "#{file}")
end

def replace_all_files?
  @replace_all == true
end




# FILE ACTIONS
def prompt_to_link_file(file)
  print "overwrite? ~/#{file} [ynaq]  "
  case $stdin.gets.chomp
    when 'y' : replace_file(file)
    when 'a' : replace_all(file)
    when 'q' : exit      
    else       skip_file(file)
  end
end

def link_file(file)
  puts " => symlinking #{file}"
  directory = File.dirname(__FILE__)
  sh("ln -s #{File.join(directory, file)} #{ENV['HOME']}/#{file}")
end

def replace_file(file)
  sh "rm -rf #{ENV['HOME']}/#{file}"
  link_file(file)
end

def replace_all(file)
  @replace_all = true
  replace_file(file)
end

def skip_file(file)
  puts " => skipping ~/#{file}" 
end

def skip_identical_file(file)
  puts " => skipping identical ~/#{file}"
end
