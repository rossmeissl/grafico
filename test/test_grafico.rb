require 'helper'

class TestGrafico < Test::Unit::TestCase
  def setup
    @helper = TestHelper.new
  end
  
  def test_setup
    assert_instance_of TestHelper, @helper
  end
  
  def test_graph_tag
    assert_equal @helper.graph_tag('FooGraph', 'my_element', [1, 2, 3]), "<script type=\"text/javascript\">\n//<![CDATA[\nvar my_elementFooGraph = new Grafico.FooGraph($('my_element'), [1,2,3]);\n//]]>\n</script>"
  end
end
