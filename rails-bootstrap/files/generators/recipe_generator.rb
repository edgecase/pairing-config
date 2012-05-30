class RecipeGenerator < Rails::Generators::NamedBase

  RecipeGenerator.source_root(RECIPES_ROOT)

  def setup
    @after_bundler = []
  end

  def recipe_runner
    say "Running recipe #{file_name} ..."
    run_recipe file_name
    run "bundle install"
    @after_bundler.each {|b| b.call}
  end

  private

  def app_name
    Rails.application.class.parent_name
  end

  def run_recipe(recipe)
    apply File.join(RECIPES_ROOT, "#{recipe}.rb")
  end

  def after_bundler(&block)
    @after_bundler << block
  end
end

