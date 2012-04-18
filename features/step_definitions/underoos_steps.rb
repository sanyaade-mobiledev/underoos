When /^I add Underoos as a gem dependency$/ do
    append_to_file('Gemfile', %{\ngem "underoos", :path => "#{File.expand_path('../../../', __FILE__)}"\n})
end
