require_relative 'interval_component'

module Coprl
  module Presenters
    module Plugins
      module Interval
        # Components add new methods to the POM component hierarchy. They should add a component object to the
        # POM component stream. These components are the declarative instructions that are used to render a client.
        # POM components require corresponding views templates and JS that render them.
        # Name this method whatever you want.
        module DSLComponents
          def interval(delay, **attributes, &block)
            self << Interval::IntervalComponent.new(delay, parent: self, **attributes, &block)
          end
        end
      end
    end
  end
end
