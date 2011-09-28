namespace :underoos do
  desc "Copy files to the assets directory"
  task :install do
    target_root = ENV['TARGET']
    raise "You must supply a target directory with TARGET" unless target_root
    source_root = File.expand_path(File.join(File.dirname(__FILE__), '..', 'app', 'stylesheets'))
    `mkdir -p #{target_root}`
    `cp -a #{source_root}/* #{target_root}/`
  end
end