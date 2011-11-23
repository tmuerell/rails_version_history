# encoding: utf-8
require 'rails/generators/base'

module RailsVersionHistory
    class Generator < Rails::Generators::Base #:nodoc:
      argument :version_name, :type => :string, :default => 'versions', :banner => 'version_name'

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
end
