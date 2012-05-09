require 'rubygems'
require 'rake'

desc "symlink all dot files and bin directory"
task :default do
  files = Dir.glob('.*') - ['.git', '.gitmodules', '.DS_Store', '.', '..']
  files << 'bin'
  symlink_files files

  # non-pairing machines should not symlink the .gitconfig
  print "are you on an EdgeCase pairing machine? [yn] "

  if gets.chomp.downcase == 'n' && file_identical?('.gitconfig')
    directory = File.dirname(__FILE__)
    sh "rm #{ENV['HOME']}/.gitconfig"
    sh "cp #{File.join(directory, '.gitconfig')} #{File.join(ENV['HOME'], '.gitconfig')}"

    %w[ name email ].each do |param|
      current = `git config --global user.#{param}`
      print "enter your #{param} (leave blank to keep #{current.chomp}): "
      replacement = gets.chomp
      unless replacement.empty?
        sh "git config --global --replace-all user.#{param} '#{replacement}'"
      end
    end
  end

  # symlink the rails-bootstrap folder so the shell script can find it
  replace_file("rails-bootstrap")
end


def symlink_files(files)
  files.each do |file|
    case
      when file_identical?(file) then skip_identical_file(file)
      when replace_all_files?    then link_file(file)
      when file_missing?(file)   then link_file(file)
      else                            prompt_to_link_file(file)
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
    when 'y' then replace_file(file)
    when 'a' then replace_all(file)
    when 'q' then exit
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
