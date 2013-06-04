require 'bundler/setup'
Bundler.require
require 'minitest/autorun'

require 'coveralls'
Coveralls.wear!('rails')
Dir[File.expand_path('../fixtures/**/*.rb', __FILE__)].each { |f| require f }
class TestCase < MiniTest::Test


end
