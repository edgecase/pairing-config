def all_specs
  "spec/models/ spec/lib/ spec/integration/"
end

trap 'INT' do
  if $interrupted
    exit! 0
  else
    puts "Interrupt a second time to quit"
    $interrupted = true
    sleep 1.5
    $interrupted = false
    run_spec(all_specs)
  end
end

def run_spec(file)
  return unless file.include?(" ") || File.exist?(file)
  puts "Running specs..."
  system("spec -f nested -c #{file}")
end

def run_test(file)
  return unless file.include?(" ") || File.exist?(file)
  puts "Running test..."
  system("ruby #{file}")
end

watch( '^lib/(.*)\.rb' ) {|md| run_spec("spec/lib/#{md[1]}_spec.rb") }
watch( '^app/models/(.*)\.rb' ) {|md| run_spec("spec/models/#{md[1]}_spec.rb") }

watch( '^app/controllers/(.*)\.rb' ) {|md| run_spec(all_specs) }
watch( '^app/views/(.*)\.erb' ) {|md| run_spec(all_specs) }
watch( '^app/helpers/(.*)\.rb' ) {|md| run_spec(all_specs) }

watch( '^config/.*' ) {|md| run_spec(all_specs) }
watch( '^spec/.*\.rb' ) {|md| run_spec(md[0]) }
watch( '^spec/support/.*' ) { |md| run_spec(all_specs) }
watch( '^spec/spec_helper.rb' ) { |md| run_spec(all_specs) }

watch( '^test/unit/.*_test\.rb' ) {|md| run_test(md[0]) }
