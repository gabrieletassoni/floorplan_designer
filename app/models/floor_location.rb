class FloorLocation < ApplicationRecord
  belongs_to :floor, inverse_of: :floor_locations
  belongs_to :location, inverse_of: :floor_locations

  RailsAdmin.config do |config|
    config.model self.name.underscore.capitalize.classify do
        navigation_label I18n.t('admin.registries.label')
        navigation_icon 'fa fa-map-marker'
    end
  end
end
