raw = File.read(Rails.root + "config/<%= file_name %>.yml")
versions = YAML.load(raw)
APP_VERSION = versions.keys.sort.last
