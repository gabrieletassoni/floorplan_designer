module ThecoreFloorplanDesigner
  class Engine < ::Rails::Engine

    initializer "thecore_floorplan_designer.assets.precompile" do |app|
      app.config.assets.precompile += %w( admin.js admin.css )
    end

    initializer 'thecore_floorplan_designer.add_to_migrations' do |app|
      unless app.root.to_s.match root.to_s
        # APPEND TO MAIN APP MIGRATIONS FROM THIS GEM
        config.paths['db/migrate'].expanded.each do |expanded_path|
          app.config.paths['db/migrate'] << expanded_path
        end
      end
    end

  end
end
