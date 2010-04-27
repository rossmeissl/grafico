require 'helper'

class TestGrafico < Test::Unit::TestCase
  def setup
    @helper = TestHelper.new
  end
  
  def test_setup
    assert_instance_of TestHelper, @helper
  end
end
