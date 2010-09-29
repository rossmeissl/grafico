require 'grafico'
require 'rails'

module Grafico
  class Railtie < Rails::Railtie

    GEM_ROOT = File.join(File.dirname(__FILE__), '..', '..')

    initializer 'grafico.initialization' do
      require File.join(GEM_ROOT, 'rails', 'init')
    end

    generators do
      require File.join(GEM_ROOT, 'generators', 'grafico_assets', 'grafico_assets_generator')
    end

  end
end