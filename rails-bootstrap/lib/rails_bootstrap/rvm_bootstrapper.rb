module RailsBootstrap
  class RvmBootstrapper
    include Actions

    def initialize(app_name, template)
      @app_name = app_name
      @template = template
      @gemset = create_gemset
    end

    def run
      rvm_run "gem install bundler"
      rvm_run "gem install rails"
      rvm_run "rails new #{@app_name} -T -m #{@template}"
      create_rvmrc
    end

    private

    def current_ruby
      @current_ruby ||= %x{rvm list}.match(/^=[>|\*]\s+(.*)\s\[/)[1].strip
    end

    def gemset
      @gemset
    end

    def create_gemset
      puts "This script will setup a new rails app using your current ruby version."

      return "" unless yes? "Would you like to create an RVM gemset for the app? (Y/n)"

      puts "Creating gemset #{@app_name} in #{current_ruby}"
      system "rvm gemset create #{@app_name}"

      "@#{@app_name}"
    end

    def rvm_run(command)
      puts "Running '#{command}'"
      system "rvm #{current_ruby}#{gemset} do #{command}"
    end

    def create_rvmrc
      puts "Creating .rvmrc"
      File.open(File.join(Dir.pwd, @app_name, ".rvmrc"), 'w') {|f| f.write("rvm use #{current_ruby}#{gemset}") }
    end
  end
end

