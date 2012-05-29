after_bundler do
  generate "controller home index"
  route "root :to => 'home#index'"
  run 'rm public/index.html'
end

