require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module WeatherchanBot
  class Application < Rails::Application
    config.load_defaults 5.2
    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja
    config.generators do |g|
      g.javascripts false
      g.helper false
      g.test_framework false
    end
  end
end
