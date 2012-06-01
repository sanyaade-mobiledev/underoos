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

namespace :sherpa do

  desc 'Inspect the output generated by the sherpa parser as json'
  task :probe do
    `bundle exec sherpa -i ./sherpa/config.yml -d`
  end

  desc 'Generate html documentation from a config.yml file'
  task :html do
    `bundle exec sherpa -i ./sherpa/config.yml --html`
  end

  desc 'Generate a single markdown file of all sherpa raw blocks'
  task :markdown do
    `bundle exec sherpa -i ./sherpa/config.yml --markdown`
  end

  desc 'Generate a markdown file for each section of the sherpa raw blocks'
  task :markdown_sections do
    `bundle exec sherpa -i ./sherpa/config.yml --markdown-sections`
  end

  desc 'Generate a json file from the output of the sherpa parser'
  task :json do
    `bundle exec sherpa -i ./sherpa/config.yml --json`
  end

  desc 'Generates all output types supported by sherpa'
  task :outputs do
    `bundle exec sherpa -i ./sherpa/config.yml --html --markdown --markdown-sections --json`
  end

end

