require 'thecore_floorplan_designer/engine'

require 'thecore'
module ThecoreFloorplanDesigner
  # Your code goes here...
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class ThecoreFloorplanDesigner < Base
        RailsAdmin::Config::Actions.register(self)
        register_instance_option :object_level do
          false
        end
        # This ensures the action only shows up for Users
        register_instance_option :visible? do
          # visible only if authorized and if the object has a defined method
          authorized? # && bindings[:abstract_model].model == ThecoreFloorplanDesigner && bindings[:abstract_model].model.column_names.include?('barcode')
        end
        # We want the action on members, not the Users collection
        register_instance_option :member do
          false
        end

        register_instance_option :collection do
          false
        end
        register_instance_option :root? do
          true
        end

        register_instance_option :breadcrumb_parent do
          [nil]
        end

        register_instance_option :link_icon do
          'icon-barcode'
        end
        # You may or may not want pjax for your action
        register_instance_option :pjax? do
          true
        end
        # Adding the controller which is needed to compute calls from the ui
        register_instance_option :controller do
          proc do # This is needed becaus we sant that this code is re-evaluated each time is called
            # This could be useful to distinguish between ajax calls and restful calls
            if request.xhr?
            end
          end
        end
      end
    end
  end
end
