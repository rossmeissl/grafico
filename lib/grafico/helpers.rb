module Grafico
  module Helpers
    GRAPH_TYPES = %w[LineGraph AreaGraph StackGraph StreamGraph BarGraph StackedBarGraph HorizontalBarGraph SparkLine SparkBar]

    def graph_tag(graph_type, element, data, options = {})
      args = []
      args << data.to_json
      args << options.to_json unless options.empty?
      javascript_tag "var #{options[:variable_name] || (element + graph_type)} = new Grafico.#{graph_type}($('#{element}'), #{args.join(',')});"
    end

    def self.included(receiver)
      GRAPH_TYPES.each do |graph|
        receiver.instance_eval do
          define_method(:"#{graph.underscore}_tag") do |e, d, *opts|
            opts = opts.first || Hash.new
            graph_tag(graph, e, d, opts)
          end
        end
      end
    end
  end
end
