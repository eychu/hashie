require 'test_helper'

class DashTest < TestCase

  def setup
    @person = Person.new(name: "Bob")
    #raise @person.inspect
  end

  def test_should_not_create_new
    assert_equal 'Bob', @person.name
  end

end