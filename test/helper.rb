require 'rubygems'
require 'test/unit'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'grafico'
require 'grafico/helpers'
require 'active_support'
require 'action_view'
require 'action_controller'

class Test::Unit::TestCase
  def wrap_as_javascript(javascript)
    "<script type=\"text/javascript\">\n//<![CDATA[\n#{javascript}\n//]]>\n</script>"
  end
end

class TestHelper
  include ActionView::Helpers
  include Grafico::Helpers
end
