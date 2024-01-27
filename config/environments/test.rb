require 'active_support/core_ext/integer/time'

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Specify paths for fixture files used in tests.
  config.fixture_path = ["#{::Rails.root}/spec/fixtures", "#{::Rails.root}/test/fixtures"]

  # Control whether to eager load the entire application.
  config.eager_load = ENV['CI'].present?

  # Configure public file server for tests with Cache-Control headers.
  config.public_file_server.enabled = true
  config.public_file_server.headers = {
    'Cache-Control' => 'public, max-age=#{1.hour.to_i}'
  }

  # Show full error reports and disable caching.
  config.consider_all_requests_local = true
  config.action_controller.perform_caching = false
  config.cache_store = :null_store

  # Raise exceptions instead of rendering exception templates.
  config.action_dispatch.show_exceptions = :rescuable

  # Disable request forgery protection in the test environment.
  config.action_controller.allow_forgery_protection = false

  # Configure the service for Active Storage to use in tests.
  config.active_storage.service = :test

  # Disable caching for Action Mailer in the test environment.
  config.action_mailer.perform_caching = false

  # Specify the delivery method for Action Mailer in tests.
  config.action_mailer.delivery_method = :test

  # Print deprecation notices to the stderr.
  config.active_support.deprecation = :stderr

  # Raise exceptions for disallowed deprecations.
  config.active_support.disallowed_deprecation = :raise

  # Specify which deprecation messages to disallow.
  config.active_support.disallowed_deprecation_warnings = []

  # Raise errors for missing translations.
  # config.i18n.raise_on_missing_translations = true

  # Annotate rendered view with file names.
  # config.action_view.annotate_rendered_view_with_filenames = true

  # Raise error when a before_action's only/except options reference missing actions
  config.action_controller.raise_on_missing_callback_actions = true
end
