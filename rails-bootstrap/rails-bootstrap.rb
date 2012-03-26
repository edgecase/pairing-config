app_name = ARGV[0]

unless app_name
  puts "\n The first arg to this command should be the name of your new rails app."
end

if app_name

  current_ruby = %x{rvm list}.match(/^=[>|\*]\s+(.*)\s\[/)[1].strip
  rvm_gemset = ""

  puts %{
  This script will setup a new rails app using your current ruby version.
  Would you like to create an RVM gemset for the app? ([y] / n):}
  create_gemset = STDIN.gets.chomp
  create_gemset = (create_gemset.downcase == "n" || create_gemset.downcase == "no") ? false : true

  if create_gemset
    rvm_gemset = "@#{app_name}"

    puts "Creating gemset #{app_name} in #{current_ruby}"
    system "rvm gemset create #{app_name}"
  end

  puts "Installing bundler gem."
  system "rvm #{current_ruby}#{rvm_gemset} do gem install bundler"

  puts "Installing rails gem."
  system "rvm #{current_ruby}#{rvm_gemset} do gem install rails"

  template_file = File.join(File.expand_path(File.dirname(__FILE__)), 'app_template.rb')
  system "rvm #{current_ruby}#{rvm_gemset} do rails new #{app_name} -T -m #{template_file}"

  #Create .rvmrc
  if create_gemset
    puts "Creating .rvmrc"
    File.open(File.join(Dir.pwd, app_name, ".rvmrc"), 'w') {|f| f.write("rvm gemset use #{app_name}") }
  end

end
