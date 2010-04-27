require 'grafico'
require 'grafico/helper'

ActionView::Base.class_eval do
  include Grafico::Helper
end