require 'coprl/presenters/dsl/components/event_base'

module Coprl
  module Presenters
    module Plugins
      module Interval
        class IntervalComponent < DSL::Components::Event
          attr_reader :delay
          def initialize(delay, **attribs_, &block)
            super(event: :interval_expired, **attribs_, &block)
            @delay = delay
            @type = :interval
            expand!
          end
        end
      end
    end
  end
end
