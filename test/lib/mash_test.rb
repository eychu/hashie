require 'test_helper'

class MashTest < TestCase

  def setup
    @mash = Hashie::Mash.new
  end

  def test_should_return_nil
    assert_equal nil, @mash.name
  end
end