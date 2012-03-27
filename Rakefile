require "bundler/gem_tasks"

begin 
  require 'cucumber'
  require 'cucumber/rake/task'

  Cucumber::Rake::Task.new(:cucumber) do |t|
    t.cucumber_opts = "features --format pretty --require features/"
  end
rescue LoadError
  puts 'Could not load Cucumber'
end
