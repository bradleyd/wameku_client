require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
    t.libs << 'lib/bramipsum'
      t.test_files = FileList['test/test_*.rb']
        t.verbose = true
end

task :default => :test

desc "Open an irb session preloaded with this library"
task :console do
    sh "irb -Ilib -r wameku_client"
end
