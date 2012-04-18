require 'aruba/cucumber'

Before do
  @aruba_timeout_seconds = 20
end

Before('@slow') do
  @aruba_timeout_seconds = 180
end
