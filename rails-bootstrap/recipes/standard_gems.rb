remove_file 'Gemfile'

get(
  File.join(RECIPES_ROOT, '..', 'templates', 'Gemfile'),
  'Gemfile'
)

