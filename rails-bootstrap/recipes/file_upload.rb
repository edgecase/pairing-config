gem 'carrierwave', '~> 0.6.0'
gem 'fog', '~> 1.3.1'

if yes?('Will you need to upload and manipulate images?', :yellow)
  run_recipe 'image_manipulation'
end
