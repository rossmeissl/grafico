require 'helper'

class TestGrafico < Test::Unit::TestCase
  def setup
    @helper = TestHelper.new
  end
  
  def test_setup
    assert_instance_of TestHelper, @helper
  end
  
  def test_graph_tag
    assert_equal @helper.graph_tag('FooGraph', 'my_element', [1, 2, 3]), wrap_as_javascript("var my_elementFooGraph = new Grafico.FooGraph($('my_element'), [1,2,3]);")
  end

  def test_graph_types
    Grafico::Helpers::GRAPH_TYPES.each do |type|
      assert_equal @helper.send(:"#{type.underscore}_tag", 'my_element', [1, 2, 3]), wrap_as_javascript("var my_element#{type} = new Grafico.#{type}($('my_element'), [1,2,3]);")
    end
  end
end
