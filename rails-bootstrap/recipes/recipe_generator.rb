run 'mkdir lib/generators'
add_generator 'recipe'

inject_into_file 'lib/generators/recipe_generator.rb',
    :after => "class RecipeGenerator < Rails::Generators::NamedBase\n" do
  "  RECIPES_ROOT = '#{RECIPES_ROOT}'\n"
end

add_to_readme 'Technology', %Q{### Recipe generator

You can run any of the recipes after the fact by running

```Bash
rails g recipe <recipe_name> # minus the file extension i.e. rails g recipe haml
```

Available recipes can be found in https://github.com/edgecase/pairing-config/tree/master/rails-bootstrap/recipes
}

