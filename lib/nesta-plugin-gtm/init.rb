module Nesta
  module Plugin
    module Gtm
      module Helpers
        # If your plugin needs any helper methods, add them here...
        extend View::Helpers

        def set_common_variables
          super
          set_from_config(:google_tag_manager_id)
        end
      end
    end
  end

  class App
    helpers Nesta::Plugin::Gtm::Helpers
  end

  Config.class_eval do
    @settings += %w[google_tag_manager_id]
  end

end
