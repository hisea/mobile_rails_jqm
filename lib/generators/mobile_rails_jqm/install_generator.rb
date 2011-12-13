module MobileRailsJqm
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      desc <<DESC
Description:
    Creates jQuery mobile layout, stylesheet, and javascript file.
DESC
      def manifest
        if options[:haml]
          template "mobile.mobile.haml", "app/views/layouts/mobile.mobile.haml"
        else
          template "mobile.mobile.haml", "app/views/layouts/mobile.mobile.haml"
        end
        copy_file "mobile.css", "app/assets/stylesheets/mobile.css"
        copy_file "mobile.js", "app/assets/javascripts/mobile.js"
        
        inject_into_file 'config/environments/production.rb', :after => "Application.configure do" do
          "\n\n # Added by mobile_rails_jqm, precompile jQuery Related assets in production."+
          "\n  config.assets.precompile += %w(mobile.css mobile.js)\n" 
        end
      end

      protected

        def add_options!(opt)
          opt.separator ''
          opt.separator 'Options:'
          opt.on("--haml", "Generate HAML for view, and SASS for stylesheet.") { |v| options[:haml] = v }
        end
    end
  end
end