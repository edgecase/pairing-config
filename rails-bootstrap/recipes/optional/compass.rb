gem 'compass-rails', :group => [:assets]

if use_type = yes?("Would you like to use compass typography? [no]")
  base_font_size = ask("What should the base font-size be in px? [16]")
  base_font_size = "16" if base_font_size.blank?

  base_line_height = ask("What should the base line-height be in px? [20]")
  base_line_height = "20" if base_line_height.blank?
end

after_bundler do
  say "Beginning Compass setup"

  app_css = "app/assets/stylesheets/application.css"
  app_sass = "app/assets/stylesheets/application.css.sass"

  create_file app_sass, ''
  append_to_file app_sass, "\n@import compass"
  append_to_file app_sass, "\n@import compass/reset"

  if use_type
    append_to_file app_sass, "\n@import compass/typography"

    append_to_file app_sass, %Q{

// establish base vertical rhythm
$base-font-size: #{base_font_size}px
$base-line-height: #{base_line_height}px
@include establish-baseline}
  end

  remove_file app_css

  say "Compass has been setup"
end

