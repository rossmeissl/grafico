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

  def test_line_graph_tag
    assert_equal @helper.line_graph_tag('my_element', [1, 2, 3]), wrap_as_javascript("var my_elementLineGraph = new Grafico.LineGraph($('my_element'), [1,2,3]);")
  end

  def test_sparkline_tag
    assert_equal @helper.line_graph_tag('my_element', [1, 2, 3]), wrap_as_javascript("var my_elementSparkLine = new Grafico.SparkLine($('my_element'), [1,2,3]);")
  end
end
