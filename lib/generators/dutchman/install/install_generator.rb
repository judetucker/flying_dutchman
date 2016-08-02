require 'rails/generators'
require 'rails'

module Dutchman
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root ::File.expand_path('../../../../../vendor/', __FILE__)
      desc "Running this Generator will copy the needed files per the captain and install them in the correct place."

      class_option :captain
      class_option :custom
      
      def add_assets
        css_inject = " *= require #{options[:captain]}/#{options[:captain]}\n"

        app_scss = File.join(Rails.root, 'app', 'assets', 'stylesheets', 'application.scss')
        app_css = File.join(Rails.root, 'app', 'assets', 'stylesheets', 'application.css')
        app_js = 'app/assets/javascripts/application.js'

        captain = options[:captain]
        custom = options[:custom]

        if captain.nil?
          puts "Arr. The Dutchman must have a captain."
          puts "Rerun with --captain=normalize/skeleton/bootstrap"
        else

           puts ""
           puts "The Flying Dutchman"
           puts "Your Captain is #{options[:captain]}."
           puts ""
           
          # copy_file "assets/stylesheets/#{options[:captain]}/#{options[:captain]}.scss", "vendor/assets/stylesheets/#{options[:captain]}.scss"

          if File.exist?(app_scss)
            insert_into_file app_scss, css_inject, :after => "require_self\n"
          elsif File.exist?(app_css)
            insert_into_file app_css, css_inject, :after => "require_self\n"
          else
            say_status('','The Dutchman was unable to locate an application.css or application.scss.')
          end

          if captain=="bootstrap"
            if ::File.exists?(::File.join(destination_root, app_js))
              inject_into_file app_js, before: '//= require_tree' do
                "//= require bootstrap/tether.min\n//= require bootstrap/bootstrap.min\n"
              end
            else
              say_status('','The Dutchman was unable to locate an application.js.')
            end
          end

          if custom=="yes"
            copy_file "assets/stylesheets/#{options[:captain]}/.", "vendor/assets/stylesheets/#{options[:captain]}/."
          end

          puts ""
          puts "Your ship is built."
          puts "Welcome Aboard!"
          puts ""

        end
      end
    end
  end
end
