require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('rails_version_history', '0.0.1') do |p|
  p.description     = "Manages a rails version history"
  p.url             = "http://github.com/tmuerell/rails_version_history"
  p.author          = "Thorsten Muerell"
  p.email           = ""
  p.ignore_pattern  = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
