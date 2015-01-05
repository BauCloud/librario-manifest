task default: :test

desc 'Zips manifest file'
task :zip do
  `zip -r Librario.zip manifest`
end

desc 'Validates manifest file'
task :test do
  require_relative 'lib/json_validator'
  
  json_file = JsonValidator.new('manifest/manifest.json')
  
  if json_file.valid?
    puts 'manifest.json is valid'
  else
    puts 'manifest.json is invalid'
    puts json_file.message
    abort
  end
end
