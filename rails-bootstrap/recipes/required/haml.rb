gem 'haml-rails'

remove_file 'app/views/layouts/application.html.erb'
create_file 'app/views/layouts/application.html.haml', <<-layout
!!!
%html{html_attrs}
  %head
    %title= yield(:title) || #{app_name}
    = stylesheet_link_tag 'application', :media => 'all'
    = csrf_meta_tag
    = yield :js_head
  %body.bp
    #container
      - flash.each do |name, msg|
        = content_tag :div, msg, :id => "flash_\#{name}"

      = yield

    = javascript_include_tag 'application'
    = yield :js_body

layout

