require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Prorepo
  class Application < Rails::Application
    config.i18n.default_locale = :es
    config.i18n.locale = :es
    config.app_generators.scaffold_controller = :scaffold_controller
  end
end
