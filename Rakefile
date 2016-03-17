require "bundler/gem_tasks"

# require 'rake/testtask'

# Rake::TestTask.new do |t|
#   t.libs << 'test'
# end

# desc "Run tests"
# task :default => :test

# task :default => :spec

require('androidcopy')
task :default do
  source_Path = "/Users/djzhang/Desktop/wikipedia/apps-android-wikipedia/app/src/main/res"
  dest_Path = "/tmp/IEATTA-ANDROID/res"
  fileName = "ic_search.png"
  Androidcopy.copy(source_Path, dest_Path, fileName)
end


