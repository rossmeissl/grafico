module Grafico
  module Helpers
    def graph_tag(graph_type, element, data, options = {})
      args = []
      args << data.to_json
      args << options.to_json unless options.empty?
      javascript_tag "var #{options[:variable_name] || (element + graph_type)} = new Grafico.#{graph_type}($('#{element}'), #{args.join});"
    end
    
    def line_graph_tag(element, data, options = {})
      graph_tag 'LineGraph', element, data, options
    end

    def sparkline_tag(element, data, options = {})
      graph_tag 'SparkLine', element, data, options
    end
  end
end