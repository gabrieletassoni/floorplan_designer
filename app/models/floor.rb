class Floor < ApplicationRecord
    has_many :floor_locations, inverse_of: :floor, dependent: :destroy
    has_many :locations, through: :floor_locations #, inverse_of: :floor

    # accepts_nested_attributes_for :floor_locations, allow_destroy: true
   
    RailsAdmin.config do |config|
        config.model self.name.underscore.capitalize.classify do
            navigation_label I18n.t('admin.registries.label')
            navigation_icon 'fa fa-map-marker'

            configure :floor_locations do
                visible false
            end
            configure :locations do
                visible false
            end
        end
    end
end
