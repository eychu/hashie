require 'test_helper'

class DashTest < TestCase

  def setup
    @person = Person.new(name: "Bob")
  end

  def test_should_get_name
    assert_equal 'Bob', @person.name
  end

  def test_should_put_name

    @person.name = 'Mark'
    assert_equal 'Mark', @person.name
  end

  def test_should_alert_when_required
    assert_raises ArgumentError do
      Person.new
    end
  end

  def test_should_return_default
    assert_equal 'Rubyist', @person.occupation
  end

  def test_should_return_name
    assert_equal 'Rubyist', @person[:occupation]
  end

end