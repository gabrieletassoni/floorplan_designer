require 'active_support/concern'

module ThecoreFloorplanDesignerLocationsConcern
    extend ActiveSupport::Concern
    included do
        has_many :floor_locations, inverse_of: :location, dependent: :destroy
        has_many :floors, through: :floor_locations #, inverse_of: :location

        # RailsAdmin.config do |config|
        #     config.model Location do
        #         field :floors
        #     end
        # end
    end
end