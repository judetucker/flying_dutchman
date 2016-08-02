require 'rails'

module Dutchman
  class Engine < Rails::Engine
    initializer 'flying_dutchman.setup',
      :group => :all do |app|
        app.paths['config'] << File.join(config.root, 'vendor')
    end
  end
end
