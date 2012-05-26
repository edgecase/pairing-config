module RailsBootstrap
  class Bootstrapper
    def initialize(app_name, template)
      @app_name = app_name
      @template = template
    end

    def run
      system "rails new #{@app_name} -T -m #{@template}"
    end
  end
end

