require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"

Bundler.require(*Rails.groups)

module EcommerceBase
  class Application < Rails::Application
    config.load_defaults 7.2
    config.autoload_lib(ignore: %w[assets tasks])
    config.generators.system_tests = nil
    # Conf / Configuracion Factory bot para qeu genere los archivos con los modelos
    # Conf / Rspec
    config.generators do |g|
      g.factory_bot suffix: "factory"
      g.test_framework :rspec,
                       fixtures: true,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false,
                       controller_specs: true,
                       request_specs: false
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end

    # Conf / Configuracion uuid para los modelos
    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid
    end
  end
end
