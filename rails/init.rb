require 'grafico'
require 'grafico/helpers'

ActionView::Base.class_eval do
  include Grafico::Helpers
end