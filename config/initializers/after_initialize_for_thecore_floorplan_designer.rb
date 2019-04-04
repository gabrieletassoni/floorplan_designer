Rails.application.configure do
    # config.assets.precompile += %w( thecore_floorplan_designer/draggabilly.pkgd.min.js )
    # config.assets.precompile += %w( thecore_floorplan_designer/packery.pkgd.min.js )
    config.assets.precompile += %w( thecore_floorplan_designer/d3.v3.min.js )
    config.after_initialize do
    end
end
