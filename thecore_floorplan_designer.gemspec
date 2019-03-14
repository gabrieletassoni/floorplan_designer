$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'thecore_floorplan_designer/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'thecore_floorplan_designer'
  spec.version     = ThecoreFloorplanDesigner::VERSION
  spec.authors     = ['Gabriele Tassoni']
  spec.email       = ['gabriele.tassoni@gmail.com']
  spec.homepage    = 'https://github.com/gabrieletassoni/floorplan_designer'
  spec.summary     = 'Root Thecore action which lets you draw wysiwyg floorplans.'
  spec.description = 'Root Thecore action which lets you draw wysiwyg floorplans, with rooms chained to a Location Model.'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'thecore', '~> 1.6'
  spec.add_dependency 'rails_admin_ui_layout_taris', '~> 1.3'
end
