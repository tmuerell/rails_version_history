# encoding: utf-8
require 'rails/generators/base'

class RailsVersionHistoryGenerator < Rails::Generators::NamedBase #:nodoc:
      source_root File.expand_path("templates", File.dirname(__FILE__))
      argument :version_name, :type => :string, :default => 'versions', :banner => 'version_name'

      desc "This initializer creates a version history"
      def create_config
        template "load_versions.rb", "config/initializers/load_#{file_name}.rb"
        copy_file "versions.yml", "config/#{file_name}.yml"
      end

      private

      def file_name
        version_name.underscore
      end

      def constant_name
        version_name.underscore.upcase
      end
end
