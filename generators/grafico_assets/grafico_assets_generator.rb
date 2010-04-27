if defined?(Rails) && Rails::VERSION::MAJOR >= 3

  class GraficoAssetsGenerator < Rails::Generators::Base

    include Rails::Generators::Actions

    def create_grafico_file
      empty_directory('public/javascripts')
      copy_file(
        File.join(File.dirname(__FILE__), 'templates', 'raphael-min.js'),
        'public/javascripts/raphael.js'
      )
      copy_file(
        File.join(File.dirname(__FILE__), 'templates', 'grafico.min.js'),
        'public/javascripts/grafico.js'
      )
      readme(File.join(File.dirname(__FILE__), 'templates', 'NOTES'))
    end

  end

else

  class GraficoAssetsGenerator < Rails::Generator::Base

    def manifest
      record do |m|
        m.directory('public/javascripts')
        m.file('raphael-min.js', 'public/javascripts/raphael.js')
        m.file('grafico.min.js', 'public/javascripts/grafico.js')
        m.readme('NOTES')
      end
    end

  end

end

