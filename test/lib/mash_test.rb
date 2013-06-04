require 'test_helper'

class MashTest < TestCase

  def setup
    @mash = Hashie::Mash.new
    @mash.name = 'Pete'
  end

  def test_should_return_nil
    assert_equal nil, @mash.something
  end

  def test_should_return_name?
    assert_equal true, @mash.name?
    assert_equal false, @mash.namewww?
  end

  def test_should_return_name
    assert_equal 'Pete', @mash.name
  end
end