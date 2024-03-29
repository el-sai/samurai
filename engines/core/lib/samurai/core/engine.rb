module Samurai
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Samurai
      paths["app/views"] << "app/views/samurai"

      initializer :append_migrations do |app|
    	 unless app.root.to_s.match(root.to_s)
    		config.paths["db/migrate"].expanded.each do |p|
    			app.config.paths["db/migrate"] << p
    		end #do
    	 end #unless
      end #do

    end #class
  end #mod
end #mod

