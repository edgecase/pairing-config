module Rails
  module Generators
    module Actions

      def after_bundler(delay=0, p=nil, &block)
        @after_bundler ||= Hash.new { |hash, key| hash[key] = [] }
        @after_bundler[delay] << (p || block)
      end

      def execute_recipes
        required_recipes.each { |recipe| execute_recipe(recipe) }
        optional_recipes.each do |recipe|
          execute_recipe(recipe) if yes?("Would you like to apply the #{ActiveSupport::Inflector.humanize(File.basename(recipe, ".rb"))} recipe? [no]")
        end
      end

      def execute_recipe(recipe)
        apply recipe
      end

      def execute_strategies
        @after_bundler.keys.sort.map {|k| @after_bundler[k]}.flatten.each {|strategy| strategy.call }
      end

      def required_recipes
        recipe_path = File.join(File.dirname(__FILE__), 'recipes', 'required')
        enumerate_recipes(recipe_path)
      end

      def optional_recipes
        recipe_path = File.join(File.dirname(__FILE__), 'recipes', 'optional')
        enumerate_recipes(recipe_path)
      end

      def enumerate_recipes(recipe_path)
        Dir.entries(recipe_path).map do |f|
          f = File.join(recipe_path, f)
          File.file?(f) ? f : nil
        end.compact
      end

    end
  end
end
