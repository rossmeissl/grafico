module Grafico
  module Helpers
    def graph_tag(graph_type, element, data, options = {})
      args = []
      args << data.to_json
      args << options.to_json unless options.empty?
      javascript_tag "var #{options[:variable_name] || (element + graph_type)} = new Grafico.#{graph_type}($('#{element}'), #{args.join});"
    end
  end
end