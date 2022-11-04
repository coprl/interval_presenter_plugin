module Coprl
  module Presenters
    module Plugins
      module Interval
        module WebClientComponents
          def view_dir_interval(pom)
            File.join(__dir__, '../../../../../../..', 'views', 'components')
          end

          def render_interval(comp,render:, components:, index:)
            render.call :erb, :interval, views: view_dir_interval(comp),
                        locals: {comp: comp,
                        components: components, index: index}
          end

          # The string returned from this method will be added to the HTML header section of the page layout
          # It will be called once for the page.
          # The pom is passed along with the sinatra render method.
          def render_header_interval(pom, render:)
            view_dir = File.join(__dir__, '../../../../../../..', 'views', 'components')
            render.call :erb, :interval_header, views: view_dir_interval(pom)
          end
        end
      end
    end
  end
end
