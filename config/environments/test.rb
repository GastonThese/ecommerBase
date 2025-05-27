require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Conf / Configuracion factory bot Carga los archivos de factory en el directorio 'spec/factories' y los utiliza para
  # crear objetos en los tests. Esto permite que los tests no deban preocuparse de
  # como se crean los objetos, y solo se centren en como se comportan en diferentes
  # situaciones.
  config.factory_bot.definition_file_paths = [ "spec/factories" ]

  config.enable_reloading = false

  config.eager_load = ENV["CI"].present?

  config.public_file_server.headers = { "Cache-Control" => "public, max-age=#{1.hour.to_i}" }

  config.consider_all_requests_local = true
  config.action_controller.perform_caching = false
  config.cache_store = :null_store

  config.action_dispatch.show_exceptions = :rescuable

  config.action_controller.allow_forgery_protection = false

  config.active_storage.service = :test

  config.action_mailer.perform_caching = false

  config.action_mailer.delivery_method = :test

  config.action_mailer.default_url_options = { host: "www.example.com" }

  config.active_support.deprecation = :stderr

  config.active_support.disallowed_deprecation = :raise

  config.active_support.disallowed_deprecation_warnings = []

  # Raises error for missing translations.
  # config.i18n.raise_on_missing_translations = true

  # Annotate rendered view with file names.
  # config.action_view.annotate_rendered_view_with_filenames = true

  config.action_controller.raise_on_missing_callback_actions = true
end
