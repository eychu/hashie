require 'minitest/autorun'

require 'coveralls'
Coveralls.wear!('rails')

class TestCase < MiniTest::Test
  def load_fixture(filename)
    File.read(File.dirname(__FILE__) + "/fixtures/#{filename}")
  end
end
