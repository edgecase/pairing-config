after_bundler 9 do
  say "Building README ...", :yellow

  run 'rm README.rdoc'
  get File.join(TEMPLATES_ROOT, 'README.md'), 'README.md'
  @after_readme.each {|b| b.call}

  inject_into_file 'README.md', :after => "## Technology\n\n" do
    %Q{* Ruby #{RUBY_VERSION}\n* Rails #{Rails::VERSION::STRING}\n\n}
  end
end

