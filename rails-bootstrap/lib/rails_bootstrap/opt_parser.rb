require 'optparse'

class OptParser
  ROOT_DIR = File.join(File.dirname(__FILE__), '..', '..')
  TEMPLATES_DIR = File.join(ROOT_DIR, 'templates')

  DEFAULT_OPTIONS = {
    use_rvm: true,
    template: File.join(TEMPLATES_DIR, 'app_template.rb')
  }

  def self.parse(args)
    options = DEFAULT_OPTIONS

    OptionParser.new do |opts|
      opts.banner = 'Usage: rails-bootstrap.rb <app_name> [options]'

      opts.on('-r', '--[no-]rvm', "Use RVM") do |r|
        options[:use_rvm] = r
      end

      opts.on('-t', '--template [FILENAME]', "Template") do |t|
        template = File.join(TEMPLATES_DIR, t) unless t.include?(TEMPLATES_DIR)
        template << ".rb" unless template.include?(".rb")
        options[:template] = template
      end
    end.parse!

    options
  end
end

